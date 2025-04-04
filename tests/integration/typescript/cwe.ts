import { expect } from 'chai'
import { WalletApi, Configuration as WalletConfiguration } from '@affinidi-tdk/wallets-client'
import { apiKey, walletId, unsignedCredential, unsignedCredentialParams } from './helpers'

describe('wallets-client', function () {
  it('returns listWallets', async () => {
    const walletConfiguration = new WalletConfiguration({ apiKey })

    const api = new WalletApi(walletConfiguration)
    const { data } = await api.listWallets()

    expect(data.wallets).to.have.lengthOf.at.least(1)
  })

  it('tests signCredential for unsignedCredentialParams', async () => {
    const walletConfiguration = new WalletConfiguration({ apiKey })
    const api = new WalletApi(walletConfiguration)

    const { data } = await api.signCredential(walletId, { unsignedCredentialParams: JSON.parse(unsignedCredentialParams) })

    expect(data).to.have.a.property('signedCredential')
  })

  it('tests signCredential for unsignedCredential', async () => {
    const walletConfiguration = new WalletConfiguration({ apiKey })
    const api = new WalletApi(walletConfiguration)

    const { data } = await api.signCredential(walletId, { unsignedCredential: JSON.parse(unsignedCredential) })

    expect(data).to.have.a.property('signedCredential')
  })
})