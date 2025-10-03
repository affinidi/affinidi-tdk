require('dotenv').config({ path: '../../.env' })

import { expect } from 'chai'
import { AuthProvider } from '@affinidi-tdk/auth-provider'
import { EnvironmentUtils, Environment } from '@affinidi-tdk/common'

import { WalletApi } from '@affinidi-tdk/wallets-client'
import { DefaultApi } from '@affinidi-tdk/credential-verification-client'

import { ClientsConfigurationService } from './clients-configuration-service'
export { ClientsConfigurationService }

const missingVariables = new Set()
const required = (name: string) => {
  missingVariables.add(name)
  return ''
}

const isProd = EnvironmentUtils.fetchEnvironment() === Environment.PRODUCTION

// NOTE: Max number of wallets for project is 10. Making clean up,
//       if wallet number exceeds threshold, to prevent 422 error
const WALLETS_LIMIT_THRESHOLD = 7

const {
  TOKEN_ID: tokenIdProd = isProd ? required('TOKEN_ID') : '',
  PRIVATE_KEY: privateKeyProd = isProd ? required('PRIVATE_KEY') : '',
  PROJECT_ID: projectIdProd = isProd ? required('PROJECT_ID') : '',
  // fixtures
  VERIFIABLE_CREDENTIAL: verifiableCredential = required('VERIFIABLE_CREDENTIAL'),
  VERIFIABLE_PRESENTATION: verifiablePresentation = required('VERIFIABLE_PRESENTATION'),
  CREDENTIAL_ISSUANCE_DATA: credentialIssuanceData = required('CREDENTIAL_ISSUANCE_DATA'),
  UNSIGNED_CREDENTIAL_PARAMS: unsignedCredentialParams = required('UNSIGNED_CREDENTIAL_PARAMS'),
  CREDENTIAL_ISSUANCE_CONFIGURATION: credentialIssuanceConfiguration = required('CREDENTIAL_ISSUANCE_CONFIGURATION'),

  IOTA_CONFIGURATION: iotaConfiguration = required('IOTA_CONFIGURATION'),
  IOTA_PRESENTATION_SUBMISSION: iotaPresentationSubmission = required('IOTA_PRESENTATION_SUBMISSION'),
  IOTA_PRESENTATION_DEFINITION: iotaPresentationDefinition = required('IOTA_PRESENTATION_DEFINITION'),
  // secrets for internal testing
  DEV_TOKEN_ID: tokenIdDev = isProd ? required('DEV_TOKEN_ID') : '',
  DEV_PRIVATE_KEY: privateKeyDev = isProd ? required('DEV_PRIVATE_KEY') : '',
  DEV_PROJECT_ID: projectIdDev = isProd ? required('DEV_PROJECT_ID') : '',
} = process.env

const tokenId = isProd ? tokenIdProd : tokenIdDev
const privateKey = isProd ? privateKeyProd : privateKeyDev
const projectId = isProd ? projectIdProd : projectIdDev

const keyId = (isProd ? process.env.KEY_ID : process.env.DEV_KEY_ID) || ''
const passphrase = (isProd ? process.env.PASSPHRASE : process.env.DEV_PASSPHRASE) || ''

if (missingVariables.size > 0) {
  throw new Error(`.env has missingVariables: ${Array.from(missingVariables).join(', ')}`)
}

const authProvider = new AuthProvider({
  keyId,
  tokenId,
  passphrase,
  privateKey,
  projectId,
})

const apiKey = authProvider.fetchProjectScopedToken.bind(authProvider)
const apiGatewayUrl = EnvironmentUtils.fetchApiGwUrl()

export {
  authProvider,
  isProd,
  apiGatewayUrl,
  apiKey,
  tokenId,
  verifiableCredential,
  verifiablePresentation,
  credentialIssuanceData,
  projectId,
  iotaConfiguration,
  iotaPresentationSubmission,
  iotaPresentationDefinition,
  unsignedCredentialParams,
  credentialIssuanceConfiguration,
}

export const createWallet = async () => {
  checkWalletsLimitExceeded()

  const configuration = ClientsConfigurationService.getWalletsClientConfiguration()
  const api = new WalletApi(configuration)

  const { data } = await api.createWallet()
  expect(data).to.have.a.property('wallet')

  return data.wallet
}

export const checkWalletsLimitExceeded = async () => {
  const configuration = ClientsConfigurationService.getWalletsClientConfiguration()
  const api = new WalletApi(configuration)

  const { data } = await api.listWallets()
  expect(data).to.have.a.property('wallets')
  expect(data.wallets).to.be.an('array')

  if (data.wallets && data.wallets.length > WALLETS_LIMIT_THRESHOLD) {
    console.log('❗️Number of wallets reaching the limit (10). Deleting wallets.')

    for (const wallet of data.wallets) {
      deleteWallet(wallet.id as string)
    }
  }
}

export const deleteWallet = async (walletId: string) => {
  const configuration = ClientsConfigurationService.getWalletsClientConfiguration()

  const api = new WalletApi(configuration)

  const { status } = await api.deleteWallet(walletId)
  expect(status).to.eql(204)
}

export const isCredentialValid = async (credential) => {
  const configuration = ClientsConfigurationService.getCredentialVerificationClientConfiguration()

  const api = new DefaultApi(configuration)

  const credentials = { verifiableCredentials: [ credential ] }
  const { data } = await api.verifyCredentials(credentials)

  return data.isValid
}

export const extractRevocationStatusId = (url: string) => {
  try {
    const urlObj = new URL(url)
    const segments = urlObj.pathname.split('/')

    return segments[segments.length - 1] || null
  } catch {
    return null // In case the input is not a valid URL
  }
}

export const replaceBaseDomain = (originalBasePath: string, newDomain: string): string => {
    const originalUrl = new URL(originalBasePath)
    const newDomainUrl = new URL(newDomain)

    newDomainUrl.pathname = originalUrl.pathname
    newDomainUrl.search = originalUrl.search
    newDomainUrl.hash = originalUrl.hash

    return newDomainUrl.toString()
}
