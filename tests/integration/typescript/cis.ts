import { expect } from 'chai'
import {
  IssuanceApi,
  Configuration as CisConfiguration,
  StartIssuanceInput,
  CredentialsApi,
  BatchCredentialInput,
  OfferApi,
  BatchCredentialInputCredentialRequestsInner,
  ConfigurationApi,
} from '@affinidi-tdk/credential-issuance-client'
import {
  apiKey,
  projectId,
  credentialIssuanceData,
  getCisToken,
} from './helpers'
import axios from 'axios'

describe('credential-issuance-client', function () {
  let credentialToken = 'token'
  let offerUri = ''
  let issuanceId = ''
  let preAuthCode = ''
  let credentialIssuer = ''
  let authorizationDetails
  let txCode = ''
  let configurationId = ''

  it('Test get configurations', async () => {
    const cisConfiguration = new CisConfiguration({
      apiKey,
      basePath: 'https://apse1.dev.api.affinidi.io/cis',
    })
    const api = new ConfigurationApi(cisConfiguration)
    const { data } = await api.getIssuanceConfigList()
    expect(data).to.have.a.property('configurations')
    expect(data.configurations).to.be.an('array')
    expect(data.configurations.length).to.be.greaterThan(0)
    configurationId = data.configurations[0].id
  })

  it('Test startIssuance', async () => {
    const cisConfiguration = new CisConfiguration({
      apiKey,
      basePath: 'https://apse1.dev.api.affinidi.io/cis',
    })
    const api = new IssuanceApi(cisConfiguration)

    const request: StartIssuanceInput = JSON.parse(credentialIssuanceData)

    const { data } = await api.startIssuance(projectId, request)
    offerUri = data.credentialOfferUri
    issuanceId = data.issuanceId
    expect(data).to.have.a.property('credentialOfferUri')
    expect(data).to.have.a.property('issuanceId')
  })

  it('Test get offer Uri', async () => {
    const cisConfiguration = new CisConfiguration({
      apiKey,
      basePath: 'https://apse1.dev.api.affinidi.io/cis',
    })
    const api = new OfferApi(cisConfiguration)
    const { data } = await api.getCredentialOffer(projectId, issuanceId)

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

  it('Test fetch credential token', async () => {
    const response = await axios.post(
      `${credentialIssuer}/oauth2/token`,
      {
        grant_type: 'urn:ietf:params:oauth:grant-type:pre-authorized_code',
        'pre-authorized_code': preAuthCode,
        tx_code: txCode,
      },
      {
        headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
      },
    )

    expect(response.status).to.equal(200)
    credentialToken = response.data.access_token
    authorizationDetails = response.data.authorization_details
  })

  it('Test batch credential', async () => {
    const cisConfiguration = new CisConfiguration({
      accessToken: `${credentialToken}`,
      basePath: 'https://apse1.dev.api.affinidi.io/cis',
    })
    const api = new CredentialsApi(cisConfiguration)
    const credentialRequests: Array<BatchCredentialInputCredentialRequestsInner> =
      []
    authorizationDetails.forEach((element: any) => {
      element.credential_identifiers.forEach((credentialIdentifier) => {
        const credentialRequest: BatchCredentialInputCredentialRequestsInner = {
          credential_identifier: credentialIdentifier,
          proof: {
            proof_type: 'jwt',
            jwt: getCisToken(),
          },
        }
        credentialRequests.push(credentialRequest)
      })
    })

    const request: BatchCredentialInput = {
      credential_requests: credentialRequests,
    }
    const { data } = await api.batchCredential(projectId, request)
    expect(data).to.have.a.property('credential_responses')
    expect(data.credential_responses.length).to.equal(2)
    expect(data.credential_responses[0]).to.have.a.property('credential')
  })

  it('Test get issued credential for one flow', async () => {
    const cisConfiguration = new CisConfiguration({
      apiKey,
      basePath: 'https://apse1.dev.api.affinidi.io/cis',
    })
    const api = new CredentialsApi(cisConfiguration)
    const { data } = await api.getIssuanceIdClaimedCredential(
      projectId,
      configurationId,
      issuanceId,
    )
    expect(data).to.have.a.property('credentials')
    expect(data.credentials?.length).to.equal(2)
  })
})
