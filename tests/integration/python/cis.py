# TODO => run virtual env:

# python -m venv ~/.venv
# source ~/.venv/bin/activate

# python -m pip install affinidi_tdk_auth_provider affinidi_tdk_credential_issuance_client

# python cis.py

import json
from dotenv import dotenv_values
from auth_provider_util import get_auth_provider
from affinidi_tdk_credential_issuance_client import Configuration, ApiClient, IssuanceApi
from affinidi_tdk_credential_issuance_client.rest import ApiException

def configure_client(auth_provider) -> Configuration:
    configuration = Configuration()
    configuration.api_key['ProjectTokenAuth'] = ''  # Set a default token
    configuration.refresh_api_key_hook = lambda api_client: auth_provider.fetch_project_scoped_token()
    return configuration

def start_issuance(api_instance: IssuanceApi, projectId):
    request = {
        "holderDid": "did:key:zQ3shNb7dEAa7z4LY8eAbPafNM4iSxppwuvndoHkTUUp8Hbt6",
        "data": [
            {
                "credentialTypeId": "SkillBadge",
                "credentialData": {
                    "studentId": "123",
                    "skillId": "456",
                    "rating": "5"
                }
            }
        ],
        "claimMode": "NORMAL"
    }

    try:
        api_response = api_instance.start_issuance(projectId, request)
        data = json.loads(api_response.json())
        print("CIS -> start_issuance:", data)
    except ApiException as e:
        print(f"Error while fetching wallets: {e}")

def main():
    # Initialize AuthProvider and configuration
    auth_provider = get_auth_provider()
    configuration = configure_client(auth_provider)

    # Use the API client to issue a VC
    with ApiClient(configuration) as api_client:
        api_instance = IssuanceApi(api_client)
        env_vars = dotenv_values('../../.env')

        start_issuance(api_instance, env_vars['PROJECT_ID'])

if __name__ == "__main__":
    main()
