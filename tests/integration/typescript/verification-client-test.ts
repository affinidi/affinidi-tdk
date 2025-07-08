import { expect } from 'chai'
import { DefaultApi, Configuration } from '@affinidi-tdk/credential-verification-client'
import { apiKey, verifiableCredential, verifiablePresentation, ClientsConfigurationService } from './helpers'

describe('credential-verification-client', function () {
  let api

  before(async function () {
    const configuration = ClientsConfigurationService.getCredentialVerificationClientConfiguration()
    api = new DefaultApi(configuration)
  })

  it('Verifies credentials', async () => {
    const credentials = { verifiableCredentials: [ JSON.parse(verifiableCredential) ] }
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
})