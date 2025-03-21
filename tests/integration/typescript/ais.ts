import { expect } from 'chai'
import { randomUUID } from 'crypto'
import * as jose from 'jose'
import {
  CallbackApi,
  IotaApi,
  ConfigurationsApi,
  Configuration as IotaConfiguration,
  InitiateDataSharingRequestOKData,
  CreateIotaConfigurationInputModeEnum,
  FetchIOTAVPResponseOK,
} from '@affinidi-tdk/iota-client'
import { apiKey,
  queryId,
  redirectUri,
  configurationId,
  presentation_submission,
  vp_token,
} from './helpers'

describe('iota-client', function () {
  it('returns listIotaConfigurations', async () => {
    const iotaConfiguration = new IotaConfiguration({ apiKey })

    const api = new ConfigurationsApi(iotaConfiguration)
    const { data } = await api.listIotaConfigurations()

    expect(data.configurations).to.have.lengthOf.at.least(1)
  })

  it('tests Iota redirect flow', async () => {
    const iotaConfiguration = new IotaConfiguration({ apiKey })
    const iotaApi = new IotaApi(iotaConfiguration)

    const callbackConfiguration = new IotaConfiguration()
    const callbackApi = new CallbackApi(callbackConfiguration)

    let response

    const { data: dataSharingRequestResponse } = await iotaApi.initiateDataSharingRequest({
        queryId,
        redirectUri,
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

    const { data: callbackResponse }: any = await callbackApi.iotOIDC4VPCallback({ state, presentation_submission, vp_token })

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