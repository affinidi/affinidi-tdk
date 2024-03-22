import { AuthProvider } from '@affinidi/tdk-auth-provider'

const authProvider = new AuthProvider({
    privateKey: '<your_private_key>',
    publicKey: '<your_public_key>',
    passphrase: 'top-secret',
    keyId: 'KeyId',
    machineUserId: '<your_machine_user_id>',
    projectId: '<your_project_id>',
    tokenEndpoint:
      'https://apse1.auth.developer.affinidi.io/auth/oauth2/token',
    apiGatewayUrl: 'https://apse1.api.affinidi.io'
})

const projectScopedToken = await authProvider.fetchProjectScopedToken()