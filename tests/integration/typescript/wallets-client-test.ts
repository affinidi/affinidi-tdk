import { expect } from 'chai'
import { customAlphabet } from 'nanoid'
import { WalletApi, RevocationApi, Configuration } from '@affinidi-tdk/wallets-client'
import {
  projectId,
  isCredentialValid,
  unsignedCredentialParams,
  extractRevocationStatusId,
  ClientsConfigurationService,
  checkWalletsLimitExceeded,
  createWallet,
} from './helpers'

describe('wallets-client', function () {
  let api
  let revocationApi
  let walletId
  let walletIdDidWeb
  let walletDid
  let signedCredential

  before(async function () {
    await checkWalletsLimitExceeded()

    const configuration = ClientsConfigurationService.getWalletsClientConfiguration()

    api = new WalletApi(configuration)
    revocationApi = new RevocationApi(configuration)

    const { data, status } = await api.createWallet({ didMethod: 'key' })
    expect(status).to.equal(201)
    expect(data).to.have.a.property('wallet')
    walletId = data.wallet.id
    walletDid = data.wallet.did
  })

  after(async function () {
    {
      const { status } = await api.deleteWallet(walletId)
      expect(status).to.equal(204)
    }

    if (walletIdDidWeb) {
      const { status } = await api.deleteWallet(walletIdDidWeb)
      expect(status).to.equal(204)
    }
  })

  it('Creates wallet: DID Web', async () => {
    const nanoid = customAlphabet('abcdefghijklmnopqrstuvwxyz', 10)

    const wallet = {
      didMethod: 'web',
      didWebUrl: `${nanoid()}.com`,
    }

    const { data, status } = await api.createWallet(wallet)

    expect(status).to.equal(201)
    expect(data).to.have.a.property('wallet')
    walletIdDidWeb = data.wallet.id
  })

  it('Signs Credential', async () => {
    const date = new Date()
    date.setMinutes(date.getMinutes() + 10)

    const params = { ...JSON.parse(unsignedCredentialParams), holderDid: walletDid, expiresAt: date }
    const revocable = true

    const { data } = await api.signCredential(walletId, { unsignedCredentialParams: params, revocable })
    expect(data).to.have.a.property('signedCredential')

    signedCredential = data.signedCredential

    const isValid = await isCredentialValid(signedCredential)
    expect(isValid).to.be.true
  })

  it('Signs Credential - if expired then it is not valid', async () => {
    const date = new Date()

    const params = { ...JSON.parse(unsignedCredentialParams), holderDid: walletDid, expiresAt: date }
    const revocable = false

    const { data } = await api.signCredential(walletId, { unsignedCredentialParams: params, revocable })
    expect(data).to.have.a.property('signedCredential')
    const isValid = await isCredentialValid(data.signedCredential)
    expect(isValid).to.be.false
  })

  it('Gets revocation list credential', async () => {
      const { revocationListCredential } = signedCredential.credentialStatus
      const statusId = extractRevocationStatusId(revocationListCredential)
      const { data } = await revocationApi.getRevocationCredentialStatus(projectId, walletId, statusId)

      expect(data).to.have.a.property('revocationListCredential')
      expect(data.revocationListCredential).to.have.a.property('id')
      expect(data.revocationListCredential).to.have.a.property('type')
      expect(data.revocationListCredential).to.have.a.property('credentialSubject')
      expect(data.revocationListCredential).to.have.a.property('proof')
      expect(data.revocationListCredential.type).to.eql([ 'VerifiableCredential', 'RevocationList2020Credential' ])
  })

  it('Revokes verifiable credential', async () => {
    await revocationApi.revokeCredential(walletId, { revocationReason: 'test', credentialId: signedCredential.id })

    const isValid = await isCredentialValid(signedCredential)
    expect(isValid).to.be.false
  })

  it('Signs JWT', async () => {
    const header = { 'alg': 'HS256', 'typ': 'JWT' }
    const payload = {
      sub: crypto.randomUUID(),
      iat: Math.floor(Date.now() / 1000),
      exp: Math.floor((Date.now() + 5 * 60 * 1000) / 1000) // 5 minutes later
    }

    const { data } = await api.signJwtToken(walletId, { header, payload })
    expect(data).to.have.a.property('signedJwt')
  })

  it('Gets wallet', async () => {
    const { data } = await api.getWallet(walletId)
    expect(data).to.have.a.property('id')
  })

  it('Lists wallets', async () => {
    const { data } = await api.listWallets()
    expect(data.wallets).to.have.lengthOf.at.least(1)
  })

  it('Updates wallet', async () => {
    const updatedName = 'Updated Wallet'
    const { data } = await api.updateWallet(walletId, { name: updatedName })

    expect(data).to.have.a.property('id')
    expect(data).to.have.a.property('name')
    expect(data.name).to.eql(updatedName)
  })
})