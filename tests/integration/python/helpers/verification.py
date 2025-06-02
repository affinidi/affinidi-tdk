import json
from .auth import get_client_configuration
from affinidi_tdk_credential_verification_client import Configuration, ApiClient, DefaultApi

def is_credential_valid(credential):
    config = get_client_configuration(Configuration)
    with ApiClient(config) as api_client:
        api_instance = DefaultApi(api_client)
        credentials = {"verifiableCredentials": [credential]}
        response = api_instance.verify_credentials(credentials)
        return json.loads(response.json())["is_valid"]
