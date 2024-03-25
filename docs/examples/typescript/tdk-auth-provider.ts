// 1. install TDK

// ```bash
// npm install -S @affinidi/tdk-auth-provider @affinidi/client-vpa
// ```

// 2. login to Affinidi via CLI, to obtain projectId, userAccessToken and projectScopedToken

// ```bash
// affinidi start
// ```

// 3. run `affinidi whoami`, to get userAccessToken and projectScopedToken

// ```bash
// affinidi whoami | jq '"\(.access_token) ~~~ \(.projectScopedToken)"'
// ```

// get access_token and projectScopedToken ^^

import { ConfigurationApi, Configuration as AuthConfiguration } from '@affinidi/client-vpa'
import { AuthProvider, PersonalAccessToken } from '@affinidi/tdk-auth-provider'

// NOTE: set your variables for PAT
const projectId = '<your_project_id>'
const userAccessToken = '<your_user_access_token>'
const projectScopedToken = '<your_project_scoped_token>'

const passphrase = 'top secret'
const apiGatewayUrl = 'https://apse1.api.affinidi.io'

void (async (params) => {
  const pat = new PersonalAccessToken({ passphrase, userAccessToken, projectScopedToken })
  const { tokenId, keyId, publicKey, privateKey } = await pat.createPersonalAccessToken()

  // A new personal access token/machine user is created, now let's use it
  const machineUserId = tokenId
  const tokenEndpoint = 'https://apse1.auth.developer.affinidi.io/auth/oauth2/token'

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

  const api = new ConfigurationApi(authConfiguration)

  const { data } = await api.listLoginConfigurations()

  const configurationIds = data.configurations.map(({ configurationId, name }) => ({ configurationId, name }))

  console.log(configurationIds)
})({
  passphrase: passphrase,
  userAccessToken: userAccessToken,
  projectScopedToken: projectScopedToken,
  projectId: projectId,
  apiGatewayUrl: apiGatewayUrl,
})
