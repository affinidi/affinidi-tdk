import { expect } from 'chai'
import { DefaultApi, Configuration } from '@affinidi-tdk/credential-verification-client'
import { apiKey, verifiableCredential, verifiablePresentation, jwtCredentialV2, ClientsConfigurationService } from './helpers'

describe('credential-verification-client', function () {
  let api

  before(async function () {
    const configuration = ClientsConfigurationService.getCredentialVerificationClientConfiguration()
    api = new DefaultApi(configuration)
  })

  it('Verifies credentials', async () => {
    const credentials = { verifiableCredentials: [JSON.parse(verifiableCredential)] }
    const { data } = await api.verifyCredentials(credentials)

    expect(data).to.have.a.property('isValid')
    expect(data.isValid).to.be.true
  })

  it('Verifies presentation', async () => {
    const body = { verifiablePresentation: JSON.parse(verifiablePresentation) }
    const { data } = await api.verifyPresentation(body)

    expect(data).to.have.a.property('isValid')
    expect(data.isValid).to.be.true
  })


  it('Verifies credentials v2 - LDP format', async () => {
    const parsedCredential = JSON.parse(verifiableCredential)
    const credentials = { ldpVcs: [parsedCredential] }
    const { data } = await api.verifyCredentialsV2(credentials)

    expect(data).to.have.a.property('isValid')
    expect(data.isValid).to.be.true
  })

  it('Verifies credentials v2 - JWT format', async () => {
    const credentials = { jwtVcs: [jwtCredentialV2] }
    const { data } = await api.verifyCredentialsV2(credentials)

    expect(data).to.have.a.property('isValid')
    expect(data.isValid).to.be.true
  })

  it('Verifies presentation v2', async () => {
    const body = { verifiablePresentation: JSON.parse(verifiablePresentation) }
    const { data } = await api.verifyPresentationV2(body)

    expect(data).to.have.a.property('isValid')
    expect(data.isValid).to.be.true
  })
})