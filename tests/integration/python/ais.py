# TODO => run virtual env:

# python -m venv ~/.venv
# source ~/.venv/bin/activate

# python -m pip install affinidi_tdk_auth_provider affinidi_tdk_iota_client python-dotenv

# python ais.py

import json

from auth_provider_util import get_auth_provider
from affinidi_tdk_iota_client import Configuration, ApiClient, ConfigurationsApi
from affinidi_tdk_iota_client.rest import ApiException

def configure_client(auth_provider) -> Configuration:
    configuration = Configuration()
    configuration.api_key['ProjectTokenAuth'] = ''  # Set a default token
    configuration.refresh_api_key_hook = lambda api_client: auth_provider.fetch_project_scoped_token()
    return configuration

def list_iota_configurations(api_instance: ConfigurationsApi):
    try:
        api_response = api_instance.list_iota_configurations()
        data = json.loads(api_response.json())
        print("AIS -> List Affinidi Iota Framework configurations:", data.get('configurations', []))
    except ApiException as e:
        print(f"Error while fetching Affinidi Iota Framework configurations: {e}")

def main():
    # Initialize AuthProvider and configuration
    auth_provider = get_auth_provider()
    configuration = configure_client(auth_provider)

    # Use the API client to list Affinidi Iota Framework configurations
    with ApiClient(configuration) as api_client:
        api_instance = ConfigurationsApi(api_client)
        list_iota_configurations(api_instance)

if __name__ == "__main__":
    main()
