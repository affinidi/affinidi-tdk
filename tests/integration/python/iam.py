# TODO => run virtual env:

# python -m venv ~/.venv
# source ~/.venv/bin/activate

# python -m pip install affinidi_tdk_auth_provider affinidi_tdk_iam_client

# python iam.py

import json
from dotenv import dotenv_values
from auth_provider_util import get_auth_provider
from affinidi_tdk_iam_client import Configuration, ApiClient, PoliciesApi
from affinidi_tdk_iam_client.rest import ApiException

def configure_client(auth_provider) -> Configuration:
    configuration = Configuration()
    configuration.api_key['ProjectTokenAuth'] = ''  # Set a default token
    configuration.refresh_api_key_hook = lambda api_client: auth_provider.fetch_project_scoped_token()
    return configuration

def get_policies(api_instance: PoliciesApi, tokenId):
    try:
        api_response = api_instance.get_policies(tokenId, 'token')
        data = json.loads(api_response.json())
        print("IAM -> get_policies:", data)
    except ApiException as e:
        print(f"Error while fetching policies: {e}")

def main():
    # Initialize AuthProvider and configuration
    auth_provider = get_auth_provider()
    configuration = configure_client(auth_provider)

    # Use the API client to list IAM policies
    with ApiClient(configuration) as api_client:
        api_instance = PoliciesApi(api_client)
        env_vars = dotenv_values('../../.env')

        get_policies(api_instance, env_vars['TOKEN_ID'])

if __name__ == "__main__":
    main()
