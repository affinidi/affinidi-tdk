import { expect } from 'chai'
import { PoliciesApi, Configuration as IamConfiguration } from '@affinidi-tdk/iam-client'
import { apiKey, tokenId } from './helpers'

describe('iam-client', function () {
  it('returns PAT policies', async () => {
    const iamConfiguration = new IamConfiguration({ apiKey })
    const api = new PoliciesApi(iamConfiguration)
    const { data } = await api.getPolicies(tokenId, 'token')

    expect(data).to.have.a.property('version')
    expect(data).to.have.a.property('statement')
  })
})