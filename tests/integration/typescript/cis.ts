import { expect } from 'chai'
import { IssuanceApi, Configuration as CisConfiguration, StartIssuanceInput, StartIssuanceInputClaimModeEnum } from '@affinidi-tdk/credential-issuance-client'
import { apiKey, projectId, credentialIssuanceData } from './helpers'

describe('credential-issuance-client', function () {
  it('tests startIssuance', async () => {
    const cisConfiguration = new CisConfiguration({ apiKey })
    const api = new IssuanceApi(cisConfiguration)

    const request: StartIssuanceInput = JSON.parse(credentialIssuanceData)

    const { data } = await api.startIssuance(projectId, request)

    expect(data).to.have.a.property('credentialOfferUri')
    expect(data).to.have.a.property('issuanceId')
  })
})