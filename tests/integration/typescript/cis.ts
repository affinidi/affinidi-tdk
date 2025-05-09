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
  walletId,
} from './helpers'

describe('credential-issuance-client', function () {
  let credentialToken = ''
  let issuanceId = ''
  let preAuthCode = ''
  let credentialIssuer = ''
  let authorizationDetails
  let txCode = ''
  let configurationId = ''

  it('Should successfully delete existing issuance configuration if any exists', async () => {
    const cisConfiguration = new CisConfiguration({
      apiKey,
    })
    const api = new ConfigurationApi(cisConfiguration)

    const { data } = await api.getIssuanceConfigList()
    if (data.configurations.length > 0) {
      const configId = data.configurations[0].id
      const response = await api.deleteIssuanceConfigById(configId)
      expect(response.status).to.equal(204)
    } else {
      expect(data.configurations).to.be.an('array')
      expect(data.configurations.length).to.equal(0)
    }
  })

  it('Should successfully create a new issuance configuration with multiple credential types', async () => {
    const cisConfiguration = new CisConfiguration({
      apiKey,
    })
    const api = new ConfigurationApi(cisConfiguration)
    const { data } = await api.createIssuanceConfig({
      issuerWalletId: walletId,
      credentialSupported: [
        {
          credentialTypeId: 'TInstructorReviewV1R0',
          jsonSchemaUrl:
            'https://schema.affinidi.io/TInstructorReviewV1R0.json',
          jsonLdContextUrl:
            'https://schema.affinidi.io/TInstructorReviewV1R0.jsonld',
        },
        {
          credentialTypeId: 'TDriversLicenseV1R1',
          jsonSchemaUrl: 'https://schema.affinidi.io/TDriversLicenseV1R1.json',
          jsonLdContextUrl:
            'https://schema.affinidi.io/TDriversLicenseV1R1.jsonld',
        },
        {
          credentialTypeId: 'TSkillBadgeV1R0',
          jsonSchemaUrl: 'https://schema.affinidi.io/TSkillBadgeV1R0.json',
          jsonLdContextUrl: 'https://schema.affinidi.io/TSkillBadgeV1R0.jsonld',
        },
        {
          credentialTypeId: 'TSimpleBioV1R0',
          jsonSchemaUrl: 'https://schema.affinidi.io/TSimpleBioV1R0.json',
          jsonLdContextUrl: 'https://schema.affinidi.io/TSimpleBioV1R0.jsonld',
        },
        {
          credentialTypeId: 'UniversityDegree2024',
          jsonSchemaUrl:
            'https://schema.affinidi.io/AnyTUniversityDegreeV1R1.json',
          jsonLdContextUrl:
            'https://schema.affinidi.io/AnyTUniversityDegreeV1R1.jsonld',
        },
      ],
      webhook: {
        enabled: true,
        endpoint: {
          url: 'https://affinidi.com/webhook',
        },
      },
    })
    expect(data).to.have.a.property('id')
    configurationId = data.id!
  })

  it('Should successfully retrieve list of issuance configurations', async () => {
    const cisConfiguration = new CisConfiguration({
      apiKey,
    })
    const api = new ConfigurationApi(cisConfiguration)
    const { data } = await api.getIssuanceConfigList()
    expect(data).to.have.a.property('configurations')
    expect(data.configurations).to.be.an('array')
    expect(data.configurations.length).to.be.greaterThan(0)
    configurationId = data.configurations[0].id
  })

  it('Should successfully initiate credential issuance process', async () => {
    const cisConfiguration = new CisConfiguration({
      apiKey,
      basePath: 'https://apse1.dev.api.affinidi.io/cis',
    })
    const api = new IssuanceApi(cisConfiguration)

    const request: StartIssuanceInput = JSON.parse(credentialIssuanceData)

    const { data } = await api.startIssuance(projectId, request)

    issuanceId = data.issuanceId
    txCode = data.txCode ?? ''
    expect(data).to.have.a.property('credentialOfferUri')
    expect(data).to.have.a.property('issuanceId')
  })

  it('Should successfully retrieve credential offer URI', async () => {
    const cisConfiguration = new CisConfiguration({
      apiKey,
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

  it('Should successfully obtain credential token using pre-authorized code', async () => {
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
    credentialToken = data.access_token
    authorizationDetails = data.authorization_details
  })

  it('Should successfully process batch credential requests', async () => {
    const cisConfiguration = new CisConfiguration({
      accessToken: `${credentialToken}`,
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
            jwt: getCisToken(cisConfiguration.basePath),
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

  it('Should successfully retrieve issued credentials for the issuance flow', async () => {
    const cisConfiguration = new CisConfiguration({
      apiKey,
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
