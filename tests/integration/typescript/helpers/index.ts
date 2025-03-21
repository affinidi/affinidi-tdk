require('dotenv').config({ path: '../../.env' })

import { AuthProvider } from '@affinidi-tdk/auth-provider'

const {
  KEY_ID: keyId ='',
  TOKEN_ID: tokenId ='',
  PASSPHRASE: passphrase ='',
  PRIVATE_KEY: privateKey ='',
  PROJECT_ID: projectId ='',
  VERIFIABLE_CREDENTIAL: verifiableCredential ='',
  CREDENTIAL_ISSUANCE_DATA: credentialIssuanceData ='',
  IOTA_CONFIG_ID: configurationId ='',
  QUERY_ID: queryId ='',
  DID: did ='',
  REDIRECT_URI: redirectUri ='',
  PRESENTATION_SUBMISSION: presentation_submission ='',
  VP_TOKEN: vp_token ='',
  UNSIGNED_CREDENTIAL: unsignedCredential ='',
  UNSIGNED_CREDENTIAL_PARAMS: unsignedCredentialParams ='',
} = process.env

// 🍌 init AuthProvider
const authProvider = new AuthProvider({ keyId, tokenId, passphrase, privateKey, projectId })
const apiKey = authProvider.fetchProjectScopedToken.bind(authProvider)

export {
  apiKey,
  tokenId,
  verifiableCredential,
  credentialIssuanceData,
  projectId,
  configurationId,
  queryId,
  did,
  redirectUri,
  presentation_submission,
  vp_token,
  unsignedCredential,
  unsignedCredentialParams,
}
