# pip install <path to whl file>
import affinidi_tdk_auth_provider
from affinidi_tdk_organizational_wallet_client import Configuration, WalletApi, ApiClient

# Create Auth Provider
stats = {
  'privateKey': '<your_private_key>',
  'publicKey': '<your_public_key>',
  'passphrase': 'top-secret',
  'keyId': 'KeyId',
  'tokenId': '<your_personal_access_token_id>',
  'projectId': '<your_project_id>',
  'tokenEndpoint': 'https://apse1.auth.developer.affinidi.io/auth/oauth2/token',
  'apiGatewayUrl': 'https://apse1.api.affinidi.io'
}
authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)
projectScopedToken = authProvider.fetch_project_scoped_token()
print(projectScopedToken)

configuration = Configuration(
  host = "https://apse1.api.affinidi.io/cwe",
  api_key = { "ProjectTokenAuth": projectScopedToken }
)
with ApiClient(configuration) as client: 
  wallet_api_instance = WalletApi(client)
  wallets = wallet_api_instance.list_wallets()
  print(wallets)
