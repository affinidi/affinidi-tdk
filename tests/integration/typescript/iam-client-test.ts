import { expect } from 'chai'
import { PoliciesApi, ProjectsApi, Configuration as IamConfiguration } from '@affinidi-tdk/iam-client'
import { apiKey, tokenId } from './helpers'

describe('iam-client', function () {
  let policiesApi
  let projectsApi
  const principalId = crypto.randomUUID()
  const principalType = 'token'

  before(async function () {
    const configuration = new IamConfiguration({ apiKey })
    policiesApi = new PoliciesApi(configuration)
    projectsApi = new ProjectsApi(configuration)
  })

  describe('Principals management', function () {
    it('Adds principal to project', async () => {
      const { status } = (await projectsApi.addPrincipalToProject({ principalId, principalType }))
      expect(status).to.equal(204)
    })

    it('Lists principals for project', async () => {
      const { data } = await projectsApi.listPrincipalsOfProject()
      expect(data.records).to.have.lengthOf.at.least(1)
    })

    it('Removes principal from project', async () => {
      const { status } = (await projectsApi.deletePrincipalFromProject(principalId, principalType))
      expect(status).to.equal(204)
    })
  })

  it('Reads PAT policies', async () => {
    const { data } = await policiesApi.getPolicies(tokenId, principalType)
    expect(data).to.have.a.property('version')
    expect(data).to.have.a.property('statement')
  })
})
