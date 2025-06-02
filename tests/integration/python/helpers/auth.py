from affinidi_tdk_auth_provider import AuthProvider
from .env import api_gateway_url, key_id, token_id, passphrase, private_key, project_id

def _get_auth_provider() -> AuthProvider:
    return AuthProvider({
        'apiGatewayUrl': api_gateway_url,
        'keyId': key_id,
        'tokenId': token_id,
        'passphrase': passphrase,
        'privateKey': private_key,
        'projectId': project_id,
    })

# NOTE: each TDK client has its own generated Configuration class
def get_client_configuration(Configuration):
    auth_provider = _get_auth_provider()
    configuration = Configuration()

    configuration.api_key['ProjectTokenAuth'] = ''  # Set a default token
    configuration.refresh_api_key_hook = lambda api_client: auth_provider.fetch_project_scoped_token()

    return configuration