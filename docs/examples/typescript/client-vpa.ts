// npm install -S @affinidi/tdk-auth-provider @affinidi/client-TLA
// NOTE: TLA is one of the services: aca, cwe, dcf, iam, kms, kyc, vpa

import { ConfigurationApi, GroupApi, Configuration as AuthConfiguration } from '@affinidi/client-vpa'
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

const authConfiguration = new AuthConfiguration({
  apiKey: authProvider.fetchProjectScopedToken.bind(authProvider),
  basePath: `${apiGatewayUrl}/vpa`,
})

async function getListLoginConfigsWithToken() {
  // use Affinidi CLI to get projectScopedToken:
  // - affinidi start
  // - affinidi whoami
  const api = new ConfigurationApi(
    new AuthConfiguration({
      apiKey: projectScopedToken,
      basePath: `${apiGatewayUrl}/vpa`,
    }),
  )

  const { data } = await api.listLoginConfigurations()

  const configurationIds = data.configurations.map(({ configurationId, name }) => ({ configurationId, name }))

  return configurationIds
}

// using PAT (personal access token)
async function getListLoginConfigs() {
  const api = new ConfigurationApi(authConfiguration)

  const { data } = await api.listLoginConfigurations()

  const configurationIds = data.configurations.map(({ configurationId, name }) => ({ configurationId, name }))

  return configurationIds
}

async function getGroupById() {
  const api = new GroupApi(authConfiguration)

  const { data } = await api.getGroupById('WRONG-ID')

  return data
}

getListLoginConfigsWithToken()
  .then((data) => console.log(data))
  .catch((error) => console.log(error))
getListLoginConfigs()
  .then((data) => console.log(data))
  .catch((error) => console.log(error))

// NOTE: throws NOT FOUND error
getGroupById().catch((error) => console.log(error))
