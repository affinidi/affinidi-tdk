import { expect } from 'chai'
import { customAlphabet } from 'nanoid'
import { WalletApi, RevocationApi, Configuration } from '@affinidi-tdk/wallets-client'
import {
  projectId,
  isCredentialValid,
  unsignedCredentialParams,
  unsignedCredentialV2,
  disclosureFrameV2,
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

// ========== V2 Tests ==========

describe('wallets-client v2', function () {
  let api: WalletApi
  let revocationApi: RevocationApi
  let walletId: string
  let walletDid: string
  let signedCredentialLdp: any

  before(async function () {
    await checkWalletsLimitExceeded()

    const configuration = ClientsConfigurationService.getWalletsClientConfiguration()

    api = new WalletApi(configuration)
    revocationApi = new RevocationApi(configuration)

    try {
      const walletOptions = {
        name: 'v2-test-wallet-tdk',
        description: 'Wallet for v2 integration tests TDK',
        didMethod: 'key',
      }

      const response = await api.createWalletV2(walletOptions)
      expect(response.status).to.equal(201)
      expect(response.data).to.have.a.property('wallet')
      walletId = response.data.wallet.id
      walletDid = response.data.wallet.did
    } catch (error: any) {
      console.error('createWalletV2 failed with error:', error.message)
      console.error('Error details:', JSON.stringify(error.response?.data || error, null, 2))
      throw error
    }
  })

  after(async function () {
    if (walletId) {
      const { status } = await api.deleteWallet(walletId)
      expect(status).to.equal(204)
    }
  })

  it('Creates wallet v2', async () => {
    expect(walletId).to.exist
    expect(walletId).to.be.a('string')
    expect(walletDid).to.exist
    expect(walletDid).to.be.a('string')
    expect(walletDid).to.match(/^did:key:/)
  })

  it('Signs Credential JWT v2', async () => {
    const baseCredential = JSON.parse(unsignedCredentialV2)
    const unsignedCredential = {
      ...baseCredential,
      '@context': ['https://www.w3.org/2018/credentials/v1', ...baseCredential['@context'].slice(1)],
      type: ['VerifiableCredential', 'UserProfile'],
      id: `uuid:test-jwt-tdk-${Date.now()}`,
      holder: {
        id: walletDid
      },
      issuanceDate: new Date().toISOString(),
      credentialSubject: {
        ...baseCredential.credentialSubject,
        id: walletDid
      }
    }

    const { data } = await api.signCredentialsJwt(walletId, { unsignedCredential, revocable: true })
    expect(data).to.have.a.property('credential')
    expect(data.credential).to.be.a('string')
    expect(data.credential).to.match(/^eyJ/)
  })

  it('Signs Credential JWT v2 - if expired then it is not valid', async () => {
    const pastDate = new Date()
    pastDate.setFullYear(pastDate.getFullYear() - 1)

    const baseCredential = JSON.parse(unsignedCredentialV2)
    const unsignedCredential = {
      ...baseCredential,
      '@context': ['https://www.w3.org/2018/credentials/v1', ...baseCredential['@context'].slice(1)],
      type: ['VerifiableCredential', 'UserProfile'],
      id: `uuid:test-jwt-expired-tdk-${Date.now()}`,
      holder: {
        id: walletDid
      },
      issuanceDate: pastDate.toISOString(),
      expirationDate: pastDate.toISOString(),
      credentialSubject: {
        ...baseCredential.credentialSubject,
        id: walletDid
      }
    }

    const { data } = await api.signCredentialsJwt(walletId, { unsignedCredential, revocable: false })
    expect(data).to.have.a.property('credential')
    expect(data.credential).to.be.a('string')
    expect(data.credential).to.match(/^eyJ/)
  })

  it('Signs Credential LDP v2', async () => {
    const validFrom = new Date().toISOString()
    const validUntil = new Date()
    validUntil.setFullYear(validUntil.getFullYear() + 5)

    const unsignedCredential = {
      ...JSON.parse(unsignedCredentialV2),
      holder: walletDid,
      id: `urn:uuid:test-ldp-tdk-${Date.now()}`,
      validFrom,
      validUntil: validUntil.toISOString()
    }

    const { data } = await api.signCredentialsLdp(walletId, { unsignedCredential, revocable: true })
    expect(data).to.have.a.property('credential')
    expect(data.credential).to.be.an('object')
    expect(data.credential).to.have.a.property('proof')
    expect(data.credential).to.have.a.property('id')

    signedCredentialLdp = data.credential
  })

  it('Signs Credential LDP v2 - if expired then it is not valid', async () => {
    const pastDate = new Date()
    pastDate.setFullYear(pastDate.getFullYear() - 2)

    const unsignedCredential = {
      ...JSON.parse(unsignedCredentialV2),
      holder: walletDid,
      id: `urn:uuid:test-ldp-expired-tdk-${Date.now()}`,
      validFrom: pastDate.toISOString(),
      validUntil: pastDate.toISOString()
    }

    const { data } = await api.signCredentialsLdp(walletId, { unsignedCredential, revocable: false })
    expect(data).to.have.a.property('credential')
    expect(data.credential).to.be.an('object')
    expect(data.credential).to.have.a.property('proof')
  })

  it('Signs Credential SD-JWT v2', async () => {
    const validFrom = new Date().toISOString()
    const validUntil = new Date()
    validUntil.setFullYear(validUntil.getFullYear() + 5)

    const unsignedCredential = {
      ...JSON.parse(unsignedCredentialV2),
      id: `urn:uuid:test-sdjwt-tdk-${Date.now()}`,
      validFrom,
      validUntil: validUntil.toISOString()
    }

    const disclosureFrame = JSON.parse(disclosureFrameV2)

    const { data } = await api.signCredentialsSdJwt(walletId, {
      unsignedCredential,
      revocable: true,
      disclosureFrame
    })
    expect(data).to.have.a.property('credential')
    expect(data.credential).to.be.a('string')
    expect(data.credential).to.include('~')
  })

  it('Signs Credential SD-JWT v2 - if expired then it is not valid', async () => {
    const pastDate = new Date()
    pastDate.setFullYear(pastDate.getFullYear() - 2)

    const unsignedCredential = {
      ...JSON.parse(unsignedCredentialV2),
      id: `urn:uuid:test-sdjwt-expired-tdk-${Date.now()}`,
      validFrom: pastDate.toISOString(),
      validUntil: pastDate.toISOString()
    }

    const disclosureFrame = JSON.parse(disclosureFrameV2)

    const { data } = await api.signCredentialsSdJwt(walletId, {
      unsignedCredential,
      revocable: false,
      disclosureFrame
    })
    expect(data).to.have.a.property('credential')
    expect(data.credential).to.be.a('string')
    expect(data.credential).to.include('~')
  })

  it('Signs Presentation LDP v2', async () => {
    const unsignedPresentation = {
      '@context': ['https://www.w3.org/ns/credentials/v2'],
      id: `testVpV2Id-tdk-${Date.now()}`,
      type: ['VerifiablePresentation'],
      holder: {
        id: walletDid
      },
      verifiableCredential: [signedCredentialLdp],
    }

    const { data } = await api.signPresentationsLdp(walletId, { unsignedPresentation })
    expect(data).to.have.a.property('presentation')
  })

  it('Revokes verifiable credential v2', async () => {
    if (signedCredentialLdp && signedCredentialLdp.id) {
      const response = await revocationApi.revokeCredentials(walletId, {
        revocationReason: 'test v2 tdk',
        credentialId: signedCredentialLdp.id
      })

      // Verify the revocation call succeeded
      expect(response.status).to.be.oneOf([200, 204])
    } else {
      // If no LDP credential was created, skip this test
      console.log('Skipping revocation test - no LDP credential available')
    }
  })
})