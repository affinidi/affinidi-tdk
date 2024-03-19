# NOTE: affinidi_tdk.auth_provider is not published to PyPi yet
# pip3 install <path to whl file>

import affinidi_tdk.auth_provider

stats = {
  'privateKey': '<your_private_key>',
  'publicKey': '<your_public_key>',
  'passphrase': 'top-secret',
  'keyId': 'KeyId',
  'machineUserId': '<your_machine_user_id>',
  'projectId': '<your_project_id>',
  'tokenEndpoint': 'https://apse1.auth.developer.affinidi.io/auth/oauth2/token',
  'apiGatewayUrl': 'https://apse1.api.affinidi.io'
}

authProvider = affinidi_tdk.auth_provider.AuthProvider(stats)

projectScopedToken = authProvider.fetch_project_scoped_token()

print(projectScopedToken)
