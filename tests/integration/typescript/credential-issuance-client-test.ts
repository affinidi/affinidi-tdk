import { expect } from 'chai'
import {
  Configuration,
  OfferApi,
  IssuanceApi,
  CredentialsApi,
  ConfigurationApi,
  StartIssuanceInput,
  BatchCredentialInput,
  BatchCredentialInputCredentialRequestsInner,
} from '@affinidi-tdk/credential-issuance-client'
import {
  ClientsConfigurationService,
  projectId,
  credentialIssuanceData,
  getCisToken,
  credentialIssuanceConfiguration,
  createWallet,
} from './helpers'

describe('credential-issuance-client', function () {
  let offerApi
  let issuanceApi
  let configurationApi
  let credentialsApi

  let accessToken = ''
  let issuanceId = ''
  let preAuthCode = ''
  let credentialIssuer = ''
  let authorizationDetails
  let txCode = ''
  let configurationId = ''

  before(async function () {
    const configuration = ClientsConfigurationService.getCredentialIssuanceClientConfiguration()

    configurationApi = new ConfigurationApi(configuration)
    issuanceApi = new IssuanceApi(configuration)
    offerApi = new OfferApi(configuration)
    credentialsApi = new CredentialsApi(configuration)
  })

  describe('Issuance Configurations', function () {
    it('Create issuance configuration if does not exist', async () => {
      const issuanceConfigList = await configurationApi.getIssuanceConfigList()
      expect(issuanceConfigList).to.have.a.property('data')
      expect(issuanceConfigList.data).to.have.a.property('configurations')

      if (issuanceConfigList.data?.configurations?.length === 0) {
        const wallet = await createWallet()
        const issuanceConfig = { ...JSON.parse(credentialIssuanceConfiguration), issuerWalletId: wallet?.id }

        const { data, status } = await configurationApi.createIssuanceConfig(issuanceConfig)
        expect(status).to.equal(201)
      }
    })

    it('Lists issuance configurations', async () => {
      const { data } = await configurationApi.getIssuanceConfigList()

      expect(data).to.have.a.property('configurations')
      expect(data.configurations).to.be.an('array')
      expect(data.configurations).to.have.lengthOf.at.least(1)
      configurationId = data.configurations[0].id
    })

    it('Reads issuance configuration', async () => {
      const { data } = await configurationApi.getIssuanceConfigById(configurationId)
      expect(data).to.have.a.property('id')
    })

    it('Updates issuance configuration', async () => {
      const description = 'UpdatedDescription'
      const { data } = await configurationApi.updateIssuanceConfigById(configurationId, { description })
      expect(data).to.have.a.property('description')
      expect(data.description).to.eql(description)
    })
  })

  describe('Issuance flow', function () {
    it('Initiates credential issuance', async () => {
      const request: StartIssuanceInput = JSON.parse(credentialIssuanceData)

      const { data } = await issuanceApi.startIssuance(projectId, request)
      issuanceId = data.issuanceId
      txCode = data.txCode ?? ''

      expect(data).to.have.a.property('credentialOfferUri')
      expect(data).to.have.a.property('issuanceId')
    })

    it('Retrieves credential offer URI', async () => {
      const { data } = await offerApi.getCredentialOffer(projectId, issuanceId)

      expect(data).to.have.a.property('grants')
      expect(data).to.have.a.property('credential_issuer')
      expect(data.grants).to.have.a.property(
        'urn:ietf:params:oauth:grant-type:pre-authorized_code',
      )

      expect(
        data.grants['urn:ietf:params:oauth:grant-type:pre-authorized_code'],
      ).to.have.a.property('pre-authorized_code')

      preAuthCode =
        data.grants['urn:ietf:params:oauth:grant-type:pre-authorized_code'][
          'pre-authorized_code'
        ]
      credentialIssuer = data.credential_issuer
    })

    it('Obtains credential token using pre-authorized code', async () => {
      const response = await fetch(`${credentialIssuer}/oauth2/token`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
          grant_type: 'urn:ietf:params:oauth:grant-type:pre-authorized_code',
          'pre-authorized_code': preAuthCode,
          tx_code: txCode,
        }),
      })

      const data = await response.json()
      expect(response.status).to.equal(200)
      expect(data).to.have.a.property('access_token')
      accessToken = data.access_token
      authorizationDetails = data.authorization_details
    })
  })
})

