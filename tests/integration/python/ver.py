# TODO => run virtual env:

# python -m venv ~/.venv
# source ~/.venv/bin/activate

# python -m pip install affinidi_tdk_auth_provider affinidi_tdk_credential_verification_client

# python ver.py

# TO FIX on backend => for @context
#    pydantic.error_wrappers.ValidationError: 1 validation error for VerifyCredentials
#    verify_credential_input -> verifiableCredentials -> 0 -> @context
#      value is not a valid dict (type=type_error.dict)

import json
from dotenv import dotenv_values

from auth_provider_util import get_auth_provider
from affinidi_tdk_credential_verification_client import Configuration, ApiClient, DefaultApi
from affinidi_tdk_credential_verification_client.rest import ApiException

def configure_client(auth_provider) -> Configuration:
    configuration = Configuration()
    configuration.api_key['ProjectTokenAuth'] = ''  # Set a default token
    configuration.refresh_api_key_hook = lambda api_client: auth_provider.fetch_project_scoped_token()
    return configuration

def verify_credentials(api_instance: DefaultApi):
    env_vars = dotenv_values('../../.env')
    verifiable_credential = json.loads(env_vars['VERIFIABLE_CREDENTIAL'])

    credentials = {
      "verifiableCredentials": [verifiable_credential]
    }

    try:
        api_response = api_instance.verify_credentials(credentials)
        data = json.loads(api_response.json())
        print("VER -> verify_credentials:", data)
    except ApiException as e:
        print(f"Error while verifying credentials: {e}")

def main():
    # Initialize AuthProvider and configuration
    auth_provider = get_auth_provider()
    configuration = configure_client(auth_provider)

    # Use the API client to verify credentials
    with ApiClient(configuration) as api_client:
        api_instance = DefaultApi(api_client)
        verify_credentials(api_instance)

if __name__ == "__main__":
    main()
