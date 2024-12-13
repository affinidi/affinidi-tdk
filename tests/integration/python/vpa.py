# TODO => run virtual env:
# python -m venv ~/.venv
# source ~/.venv/bin/activate

# python -m pip install affinidi_tdk_auth_provider affinidi_tdk_login_configuration_client

# python vpa.py

# TO FIX on backend => for generated `null` in IdTokenMapping
#   File "/Users/romanb/.venv/lib/python3.12/site-packages/affinidi_tdk_login_configuration_client/models/id_token_mapping.py", line 24
#       from affinidi_tdk_login_configuration_client.models.null<id_token_mapping_inner> import null<IdTokenMappingInner>
#                                                               ^
#   SyntaxError: invalid syntax

import json
from auth_provider_util import get_auth_provider
from affinidi_tdk_login_configuration_client import Configuration, ApiClient, ConfigurationApi
from affinidi_tdk_login_configuration_client.rest import ApiException

def configure_client(auth_provider) -> Configuration:
    configuration = Configuration()
    configuration.api_key['ProjectTokenAuth'] = ''  # Set a default token
    configuration.refresh_api_key_hook = lambda api_client: auth_provider.fetch_project_scoped_token()
    return configuration

def list_login_configurations(api_instance: ConfigurationsApi):
    try:
        api_response = api_instance.list_login_configurations()
        data = json.loads(api_response.json())
        print("VPA -> List Affinidi Login configurations:", data.get('configurations', []))
    except ApiException as e:
        print(f"Error while fetching Affinidi Login configurations: {e}")

def main():
    # Initialize AuthProvider and configuration
    auth_provider = get_auth_provider()
    configuration = configure_client(auth_provider)

    # Use the API client to list Affinidi Login configurations
    with ApiClient(configuration) as api_client:
        api_instance = ConfigurationsApi(api_client)
        list_login_configurations(api_instance)

if __name__ == "__main__":
    main()
