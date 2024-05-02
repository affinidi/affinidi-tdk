// npm install -S @affinidi-tdk/auth-provider @affinidi/client-TLA
// NOTE: TLA is one of the services: aca, cwe, dcf, iam, kms, kyc, vpa

import {
  Configuration,
  WalletApi,
} from '@affinidi-tdk/organizational-wallet-client'
import { AuthProvider } from '@affinidi-tdk/auth-provider'

// NOTE: set your variables for PAT
const privateKey = '<your_private_key>'
const publicKey = '<your_public_key>'
const passphrase = 'top-secret'
const keyId = 'KeyId'
const tokenId = '<your_personal_access_token_id>'
const projectId = '<your_project_id>'
const tokenEndpoint =
  'https://apse1.auth.developer.affinidi.io/auth/oauth2/token'
const apiGatewayUrl = 'https://apse1.api.affinidi.io'

const authProvider = new AuthProvider({
  apiGatewayUrl,
  keyId,
  tokenId,
  passphrase,
  privateKey,
  publicKey,
  projectId,
  tokenEndpoint,
})

const walletApi = new WalletApi(
  new Configuration({
    apiKey: authProvider.fetchProjectScopedToken.bind(authProvider),
    basePath: `${apiGatewayUrl}/cwe`,
  })
)

const wallet = (await walletApi.createWallet()).data.wallet

const walletInfo = (await walletApi.getWallet(wallet.id)).data

const wallets = (await walletApi.listWallets()).data.wallets
