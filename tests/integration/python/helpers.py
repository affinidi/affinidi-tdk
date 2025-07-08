import json
import string
import secrets
from urllib.parse import urlparse
from dotenv import dotenv_values
from affinidi_tdk_auth_provider import AuthProvider
import affinidi_tdk_wallets_client as wallets_client
import affinidi_tdk_credential_verification_client as verification_client

# Load env vars
env_vars = dotenv_values('../../.env')

missing_variables = set()

def required(name):
    missing_variables.add(name)
    return ''

INTERNAL = env_vars.get('INTERNAL', '').lower() in ('1', 'true', 'yes')

def get_env_var(name, default=''):
    if name in env_vars:
        return env_vars[name]
    if default == 'required':
        return required(name)
    return default

# PAT variables
token_id = get_env_var('TOKEN_ID', 'required')
_key_id = get_env_var('KEY_ID', '')
_passphrase = get_env_var('PASSPHRASE', '')
_private_key = get_env_var('PRIVATE_KEY', 'required')
_project_id = get_env_var('PROJECT_ID', 'required')

# Fixtures
verifiable_credential = get_env_var('VERIFIABLE_CREDENTIAL', 'required')
verifiable_presentation = get_env_var('VERIFIABLE_PRESENTATION', 'required')
credential_issuance_data = get_env_var('CREDENTIAL_ISSUANCE_DATA', 'required')
unsigned_credential_params = get_env_var('UNSIGNED_CREDENTIAL_PARAMS', 'required')

iota_configuration = get_env_var('IOTA_CONFIGURATION', 'required')
iota_presentation_submission = get_env_var('IOTA_PRESENTATION_SUBMISSION', 'required')
iota_presentation_definition = get_env_var('IOTA_PRESENTATION_DEFINITION', 'required')

if missing_variables:
    raise RuntimeError(f".env is missing variables: {', '.join(sorted(missing_variables))}")

# --- Helper functions ---
def create_wallet(did_web=False):
    configuration = get_client_configuration(wallets_client.Configuration)

    with wallets_client.ApiClient(configuration) as api_client:
        api_instance = wallets_client.WalletApi(api_client)

        if did_web:
            random_name = ''.join(secrets.choice(string.ascii_lowercase) for _ in range(12))

            input = wallets_client.DidWebInputParams(
                did_method="web",
                did_web_url=f"{random_name}.com"
            )
        else:
            input = wallets_client.DidKeyInputParams(
                did_method="key"
            )

        create_wallet_input = wallets_client.CreateWalletInput(input)

        api_response = api_instance.create_wallet(create_wallet_input=create_wallet_input)
        data = json.loads(api_response.json())
        return data['wallet']

def delete_wallet(wallet_id):
    configuration = get_client_configuration(wallets_client.Configuration)

    with wallets_client.ApiClient(configuration) as api_client:
        api_instance = wallets_client.WalletApi(api_client)
        api_instance.delete_wallet(wallet_id=wallet_id)

def is_credential_valid(credential):
    configuration = get_client_configuration(verification_client.Configuration)

    with verification_client.ApiClient(configuration) as api_client:
        api_instance = verification_client.DefaultApi(api_client)

        credentials = {
          "verifiableCredentials": [credential]
        }

        api_response = api_instance.verify_credentials(credentials)
        data = json.loads(api_response.json())

        return data["is_valid"]

def extract_revocation_status_id(url: str) -> str | None:
    parts = urlparse(url)
    if not parts.path:
        return None

    segments = parts.path.strip('/').split('/')
    return segments[-1] if segments else None

def check_wallets_limit_exceeded():
    configuration = get_client_configuration(wallets_client.Configuration)

    with wallets_client.ApiClient(configuration) as api_client:
        api_instance = wallets_client.WalletApi(api_client)
        api_response = api_instance.list_wallets()
        data = json.loads(api_response.json())

        wallets = data['wallets']

        if (len(data['wallets']) == 10):
            raise ValueError('❗️Max wallets limit exceeded (10). Delete unused wallets and try again.')

def _get_auth_provider() -> AuthProvider:
    stats = {
      'keyId': _key_id,
      'tokenId': token_id,
      'passphrase': _passphrase,
      'privateKey': _private_key,
      'projectId': _project_id,
    }

    # Return AuthProvider instance
    return AuthProvider(stats)

def get_client_configuration(Configuration):
    auth_provider = _get_auth_provider()
    configuration = Configuration()

    configuration.api_key['ProjectTokenAuth'] = ''  # Set a default token
    configuration.refresh_api_key_hook = lambda api_client: auth_provider.fetch_project_scoped_token()

    return configuration

__all__ = [
    # Fixtures
    'verifiable_credential',
    'verifiable_presentation',
    'credential_issuance_data',
    'unsigned_credential_params',
    'iota_configuration',
    'iota_presentation_submission',
    'iota_presentation_definition',
    # Variables required in tests
    'token_id',

    # Helper functions
    'create_wallet',
    'delete_wallet',
    'is_credential_valid',
    'extract_revocation_status_id',
    'check_wallets_limit_exceeded',
    #
    'get_client_configuration',
]
