import { expect } from 'chai'
import { customAlphabet } from 'nanoid'
import { AllowListApi, ConfigurationApi, DenyListApi, GroupApi, Configuration as LoginConfiguration } from '@affinidi-tdk/login-configuration-client'
import { apiKey } from './helpers'

describe('login-configuration-client', function () {
  let loginConfigurationId: string
  let loginConfiguration
  let configurationApi
  let allowListApi
  let denyListApi
  let groupApi

  const nanoid = customAlphabet('abcdefghijklmnopqrstuvwxyz_', 12)
  const groupName: string = nanoid()

  before(async function () {
    const loginConfiguration = new LoginConfiguration({ apiKey })

    configurationApi = new ConfigurationApi(loginConfiguration)
    allowListApi = new AllowListApi(loginConfiguration)
    denyListApi = new DenyListApi(loginConfiguration)
    groupApi = new GroupApi(loginConfiguration)
  })

  describe('Login configurations', function () {
    it('Creates login configuration', async () => {
      const configuration = {
        name: 'TestConfig',
        redirectUris: ['http://localhost:3000/api/auth/callback/affinidi'],
      }

      const { data, status } = await configurationApi.createLoginConfigurations(configuration)
      loginConfiguration = data
      loginConfigurationId = data.configurationId

      expect(status).to.equal(201)
      expect(data.configurationId).to.exist
    })

    it('Reads login configurations', async () => {
      const { data } = await configurationApi.listLoginConfigurations()
      expect(data.configurations).to.have.lengthOf.at.least(1)
    })

    it('Updates login configuration', async () => {
      const updatedName = nanoid()
      const { data } = await configurationApi.updateLoginConfigurationsById(loginConfigurationId, { name: updatedName })
      expect(data.name).to.equal(updatedName)
    })

    it('Reads login configuration', async () => {
      const { data } = await configurationApi.getLoginConfigurationsById(loginConfigurationId)
      expect(data.configurationId).to.equal(loginConfigurationId)
    })

    it('Deletes login configuration', async () => {
      const { status } = await configurationApi.deleteLoginConfigurationsById(loginConfigurationId)
      expect(status).to.equal(204)
    })
  })

  describe('User groups', function () {
    it('Creates user group', async () => {
      const group = { groupName, name: 'TestGroup' }
      const { data, status } = await groupApi.createGroup(group)

      expect(status).to.equal(201)
      expect(data.ari).to.exist
    })

    it('Reads user groups', async () => {
      const { data } = await groupApi.listGroups()
      expect(data.groups).to.have.lengthOf.at.least(1)
    })

    it('Reads user group', async () => {
      const { data } = await groupApi.getGroupById(groupName)
      expect(data).to.exist
    })

    describe('Allow Lists', function () {
      it('Allows groups', async () => {
        const { status } = await allowListApi.allowGroups({ groupNames: [groupName] })
        expect(status).to.equal(200)
      })

      it('List allowed groups', async () => {
        const { data } = await allowListApi.listAllowedGroups()
        expect(data.groupNames).to.include(groupName)
      })

      it('Disallow groups', async () => {
        const { status } = await allowListApi.disallowGroups({ groupNames: [groupName] })
        expect(status).to.equal(200)
      })
    })

    describe('Deny Lists', function () {
      const blockUserId = 'test'

      it('Block groups', async () => {
        const { status } = await denyListApi.blockGroups({ groupNames: [groupName] })
        expect(status).to.equal(200)
      })

      it('List blocked groups', async () => {
        const { data } = await denyListApi.listBlockedGroups()
        expect(data.groupNames).to.include(groupName)
      })

      it('Unblock groups', async () => {
        const { status } = await denyListApi.unblockGroups({ groupNames: [groupName] })
        expect(status).to.equal(200)
      })

      it('Block users', async () => {
        const { status } = await denyListApi.blockUsers({ userIds: [blockUserId] })
        expect(status).to.equal(200)
      })

      it('List blocked users', async () => {
        const { data } = await denyListApi.listBlockedUsers({ userIds: [blockUserId] })
        expect(data.userIds).to.include(blockUserId)
      })

      it('Unblock users', async () => {
        const { status } = await denyListApi.unblockUsers({ userIds: [blockUserId] })
        expect(status).to.equal(200)
      })

      it('Deletes user group', async () => {
        const { status } = await groupApi.deleteGroup(groupName)
        expect(status).to.equal(204)
      })
    })
  })
})