# TODO => run virtual env:

# python -m venv ~/.venv
# source ~/.venv/bin/activate

# python -m pip install affinidi_tdk_auth_provider affinidi_tdk_wallets_client

# python cwe.py

import json
from dotenv import dotenv_values

from auth_provider_util import get_auth_provider
from affinidi_tdk_wallets_client import Configuration, ApiClient, WalletApi
from affinidi_tdk_wallets_client.rest import ApiException

def configure_client(auth_provider) -> Configuration:
    configuration = Configuration()
    configuration.api_key['ProjectTokenAuth'] = ''  # Set a default token
    configuration.refresh_api_key_hook = lambda api_client: auth_provider.fetch_project_scoped_token()
    return configuration

def list_wallets(api_instance: WalletApi):
    try:
        api_response = api_instance.list_wallets()
        data = json.loads(api_response.json())
        # print("CWE -> list_wallets:", data.get('wallets', []))
        assert data.get('wallets', []) != [], "list_wallets is empty"
        assert isinstance(data.get('wallets', []), list), "list_wallets should be a list"
    except ApiException as e:
        print(f"Error while fetching wallets: {e}")

def sign_unsigned_credential(api_instance: WalletApi):
    env_vars = dotenv_values('../../.env')
    wallet_id = env_vars['WALLET_ID']
    unsigned_credential = json.loads(env_vars['UNSIGNED_CREDENTIAL'])

    try:
        api_response = api_instance.sign_credential(wallet_id, { 'unsignedCredential': unsigned_credential })
        data = json.loads(api_response.json())
        # print("CWE -> sign_credential:", data.get('signed_credential', []))
        assert data.get('signed_credential', []) != [], "signed_credential is empty"
        assert isinstance(data.get('signed_credential', []), (dict, list)), "signed_credential should be an object (dict or list)"
    except ApiException as e:
        print(f"Error while fetching wallets: {e}")

def sign_unsigned_params_credential(api_instance: WalletApi):
    env_vars = dotenv_values('../../.env')
    unsigned_credential_params = json.loads(env_vars['UNSIGNED_CREDENTIAL_PARAMS'])
    wallet_id = env_vars['WALLET_ID']

    try:
        api_response = api_instance.sign_credential(wallet_id, { 'unsigned_credential_params': unsigned_credential_params })
        data = json.loads(api_response.json())
        # print("CWE -> sign_credential:", data.get('signed_credential', []))
        assert data.get('signed_credential', []) != [], "signed_credential is empty"
        assert isinstance(data.get('signed_credential', []), (dict, list)), "signed_credential should be an object (dict or list)"
    except ApiException as e:
        print(f"Error while fetching wallets: {e}")

def main():
    # Initialize AuthProvider and configuration
    auth_provider = get_auth_provider()
    configuration = configure_client(auth_provider)

    # Use the API client to list wallets
    with ApiClient(configuration) as api_client:
        api_instance = WalletApi(api_client)
        list_wallets(api_instance)
        sign_unsigned_credential(api_instance)
        sign_unsigned_params_credential(api_instance)

if __name__ == "__main__":
    main()
