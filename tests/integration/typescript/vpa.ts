import { expect } from 'chai'
import { ConfigurationApi, Configuration as LoginConfiguration } from '@affinidi-tdk/login-configuration-client'
import { apiKey } from './helpers'

describe('login-configuration-client', function () {
  it('tests listLoginConfigurations', async () => {
    const loginConfiguration = new LoginConfiguration({ apiKey })

    const api = new ConfigurationApi(loginConfiguration)
    const { data } = await api.listLoginConfigurations()

    expect(data.configurations).to.have.lengthOf.at.least(1)
  })
})