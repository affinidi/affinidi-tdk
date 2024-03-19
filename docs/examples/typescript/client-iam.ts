// npm install -S @affinidi/tdk-auth-provider @affinidi/client-TLA
// NOTE: TLA is one of the services: aca, cwe, dcf, iam, kms, kyc, vpa

import axios from 'axios'

import { PoliciesApi, Configuration as IamConfiguration } from '@affinidi/client-iam'
import { AuthProvider } from '@affinidi/tdk-auth-provider'

// NOTE: set your variables for PAT
const privateKey = '<your_private_key>'
const publicKey = '<your_public_key>'
const passphrase = 'top-secret'
const keyId = 'KeyId'
const machineUserId = '<your_machine_user_id>'
const projectId = '<your_project_id>'
const tokenEndpoint = 'https://apse1.auth.developer.affinidi.io/auth/oauth2/token'
const apiGatewayUrl = 'https://apse1.api.affinidi.io'

const projectScopedToken = '<your_project_id>'

const authProvider = new AuthProvider({
  apiGatewayUrl,
  keyId,
  machineUserId,
  passphrase,
  privateKey,
  publicKey,
  projectId,
  tokenEndpoint,
})

const iamConfiguration = new IamConfiguration({
  apiKey: authProvider.fetchProjectScopedToken.bind(authProvider),
  basePath: `${apiGatewayUrl}/iam`,
})

async function getPolicies() {
  const api = new PoliciesApi(iamConfiguration)

  const { data } = await api.getPolicies(machineUserId, 'token')

  return data
}

getPolicies()
  .then((data) => console.log(data))
  .catch((error) => console.log(error))
