import { expect } from 'chai'
import { DefaultApi, Configuration as VpaConfiguration } from '@affinidi-tdk/credential-verification-client'
import { apiKey, verifiableCredential } from './helpers'

describe('credential-verification-client', function () {
  it('tests verifyCredentials', async () => {
    const verifierConfiguration = new VpaConfiguration({ apiKey })

    const api = new DefaultApi(verifierConfiguration)
    const credentials = { verifiableCredentials: [ JSON.parse(verifiableCredential) ] }
    const { data } = await api.verifyCredentials(credentials)

    expect(data).to.have.a.property('isValid')
    expect(data.isValid).to.be.true
  })
})