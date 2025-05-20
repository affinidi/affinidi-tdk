import { expect } from 'chai'
import { randomUUID } from 'crypto'
import * as jose from 'jose'
import {
  PexQueryApi,
  CallbackApi,
  IotaApi,
  ConfigurationsApi,
  Configuration,
  InitiateDataSharingRequestOKData,
  CreateIotaConfigurationInputModeEnum,
  FetchIOTAVPResponseOK,
} from '@affinidi-tdk/iota-client'
import {
  apiKey,
  iotaConfiguration,
  iotaPresentationSubmission,
  iotaPresentationDefinition,
  createWallet,
  deleteWallet,
  verifiablePresentation,
} from './helpers'

describe('iota-client', function () {
  let configurationId
  let iotaRedirectUri
  let walletAri
  let walletId
  let queryId

  let callbackApi
  let iotaApi
  let configurationsApi
  let pexQueryApi

  before(async function () {
    const wallet = await createWallet()
    expect(wallet).to.have.a.property('id')
    expect(wallet).to.have.a.property('ari')
    walletAri = wallet?.ari
    walletId = wallet?.id

    const configuration = new Configuration({ apiKey })

    callbackApi = new CallbackApi()
    iotaApi = new IotaApi(configuration)
    configurationsApi = new ConfigurationsApi(configuration)
    pexQueryApi = new PexQueryApi(configuration)
  })

  after(async function () {
    await deleteWallet(walletId)

    {
      const { status } = await configurationsApi.deleteIotaConfigurationById(configurationId)
      expect(status).to.equal(204)
    }

    {
      const { status } = await pexQueryApi.deletePexQueryById(configurationId, queryId)
      expect(status).to.equal(204)
    }
  })

  describe('Iota Configurations', function () {
    it('Creates Iota configuration', async () => {
      const iotaConfig = { ...JSON.parse(iotaConfiguration), walletAri }

      const { data, status } = await configurationsApi.createIotaConfiguration(iotaConfig)

      expect(status).to.equal(201)
      expect(data).to.have.a.property('configurationId')
      expect(data).to.have.a.property('redirectUris')
      expect(data.redirectUris).to.have.lengthOf.at.least(1)

      configurationId = data.configurationId
      iotaRedirectUri = data.redirectUris[0]
    })

    it('List Iota configurations', async () => {
      const { data } = await configurationsApi.listIotaConfigurations()
      expect(data.configurations).to.have.lengthOf.at.least(1)
    })

    it('Updates Iota configuration', async () => {
      const newName = 'UpdatedName'
      const { data } = await configurationsApi.updateIotaConfigurationById(configurationId, { name: newName })
      expect(data).to.have.a.property('name')
      expect(data.name).to.eql(newName)
    })

    it('Reads Iota configuration', async () => {
      const { data } = await configurationsApi.getIotaConfigurationById(configurationId)
      expect(data).to.have.a.property('mode')
      expect(data.mode).to.eql(CreateIotaConfigurationInputModeEnum.Redirect)
    })

    describe('PEX queries', function () {
      it('Creates PEX query', async () => {
        const query = {
          name: 'TestQuery',
          vpDefinition: iotaPresentationDefinition,
        }

        const { status, data } = await pexQueryApi.createPexQuery(configurationId, query)

        expect(status).to.equal(201)
        expect(data).to.have.a.property('queryId')
        queryId = data.queryId
      })

      it('List PEX queries', async () => {
        const { data } = await pexQueryApi.listPexQueries(configurationId)
        expect(data.pexQueries).to.have.lengthOf.at.least(1)
      })

      it('Updates PEX query', async () => {
        const description = 'UpdatedDescription'
        const { data } = await pexQueryApi.updatePexQueryById(configurationId, queryId, { description })

        expect(data).to.have.a.property('description')
        expect(data.description).to.eql(description)
      })

      it('Reads PEX query', async () => {
        const { data } = await pexQueryApi.getPexQueryById(configurationId, queryId)
        expect(data).to.have.a.property('queryId')
        expect(data).to.have.a.property('configurationAri')
      })
    })
  })

  describe('Iota redirect flow', function () {
    it('tests Iota redirect flow', async () => {
      let response
      const { data: dataSharingRequestResponse } = await iotaApi.initiateDataSharingRequest({
        queryId,
        redirectUri: iotaRedirectUri,
        configurationId,
        mode: CreateIotaConfigurationInputModeEnum.Redirect,
        correlationId: randomUUID(),
        nonce: randomUUID().slice(0, 10),
      })

      expect(dataSharingRequestResponse.data).to.have.a.property('correlationId')
      expect(dataSharingRequestResponse.data).to.have.a.property('transactionId')
      expect(dataSharingRequestResponse.data).to.have.a.property('jwt')

      const { correlationId, transactionId, jwt } = dataSharingRequestResponse.data as InitiateDataSharingRequestOKData

      const state = jose.decodeJwt(jwt).state! as string

      const { data: callbackResponse }: any = await callbackApi.iotOIDC4VPCallback({
        state,
        presentation_submission: iotaPresentationSubmission,
        vp_token: verifiablePresentation,
      })

      expect(callbackResponse).to.have.a.property('response_code')

      const iotaVpResponse: FetchIOTAVPResponseOK = await iotaApi.fetchIotaVpResponse({
        configurationId,
        correlationId,
        transactionId,
        responseCode: callbackResponse.response_code,
      })

      const vp = JSON.parse((iotaVpResponse.data as any).vpToken)

      expect(vp).to.have.a.property('verifiableCredential')
    })
  })
})
