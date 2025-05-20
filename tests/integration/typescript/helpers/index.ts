require('dotenv').config({ path: '../../.env' })

import { expect } from 'chai'
import { AuthProvider } from '@affinidi-tdk/auth-provider'
import { WalletApi, Configuration as WalletConfiguration } from '@affinidi-tdk/wallets-client'
import { DefaultApi, Configuration as VerificationConfiguration } from '@affinidi-tdk/credential-verification-client'
import { AuthenticationService } from './authenticationService'

const missingVariables = new Set()
/** @type {{(name: string): string}} */
const required = (name: string) => {
  missingVariables.add(name)
  return ''
}

const {
  API_GATEWAY_URL: apiGatewayUrl = required('API_GATEWAY_URL'),
  KEY_ID: keyId = '',
  PASSPHRASE: passphrase = '',
  TOKEN_ID: tokenId = required('TOKEN_ID'),
  PRIVATE_KEY: privateKey = required('PRIVATE_KEY'),
  PROJECT_ID: projectId = required('PROJECT_ID'),

  // fixtures
  VERIFIABLE_CREDENTIAL: verifiableCredential = required('VERIFIABLE_CREDENTIAL'),
  VERIFIABLE_PRESENTATION: verifiablePresentation = required('VERIFIABLE_PRESENTATION'),
  CREDENTIAL_ISSUANCE_DATA: credentialIssuanceData = required('CREDENTIAL_ISSUANCE_DATA'),
  UNSIGNED_CREDENTIAL_PARAMS: unsignedCredentialParams = required('UNSIGNED_CREDENTIAL_PARAMS'),

  IOTA_CONFIGURATION: iotaConfiguration = required('IOTA_CONFIGURATION'),
  IOTA_PRESENTATION_SUBMISSION: iotaPresentationSubmission = required('IOTA_PRESENTATION_SUBMISSION'),
  IOTA_PRESENTATION_DEFINITION: iotaPresentationDefinition = required('IOTA_PRESENTATION_DEFINITION'),

  // secrets for internal testing
  // TODO: make not required for external usage (skip CIS issuance)
  ENCRYPTION_SEED: encryptionSeed = required('ENCRYPTION_SEED'),
  SEED_PASSWORD: seedPassword = required('SEED_PASSWORD'),
} = process.env

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

export {
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
}

export const getCisToken = (aud: string = `${apiGatewayUrl}/cis`) => {
  const authenticationService = new AuthenticationService()
  const cisToken = authenticationService.signAssertion(
    encryptionSeed,
    seedPassword,
    aud,
  )
  return cisToken
}

export const createWallet = async () => {
  const configuration = new WalletConfiguration({ apiKey })
  const api = new WalletApi(configuration)

  const { data } = await api.createWallet()
  expect(data).to.have.a.property('wallet')

  return data.wallet
}

export const deleteWallet = async (walletId: string) => {
  const configuration = new WalletConfiguration({ apiKey })
  const api = new WalletApi(configuration)

  const { status } = await api.deleteWallet(walletId)
  expect(status).to.eql(204)
}

export const isCredentialValid = async (credential) => {
  const configuration = new VerificationConfiguration({ apiKey })
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
