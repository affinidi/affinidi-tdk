# TODO => run virtual env:

# python -m venv ~/.venv
# source ~/.venv/bin/activate

# python -m pip install affinidi_tdk_auth_provider affinidi_tdk_credential_issuance_client

# python cis.py

import json
import requests
from dotenv import dotenv_values
from auth_provider_util import get_auth_provider
from affinidi_tdk_credential_issuance_client import Configuration, ApiClient, IssuanceApi,OfferApi,ConfigurationApi,CreateIssuanceConfigInput
from affinidi_tdk_credential_issuance_client.rest import ApiException

def configure_client(auth_provider) -> Configuration:
    configuration = Configuration()
    configuration.api_key['ProjectTokenAuth'] = ''  # Set a default token
    configuration.refresh_api_key_hook = lambda api_client: auth_provider.fetch_project_scoped_token()
    return configuration

def delete_existing_issuance_configuration(api_instance: ConfigurationApi):
    try:
        api_response = api_instance.get_issuance_config_list()
        data = json.loads(api_response.json())
        print("CIS -> delete_existing_issuance_configuration")
        print("CIS -> delete_existing_issuance_configuration -> list configurations:", data)
        if len(data['configurations']) > 0:
            config_id = data['configurations'][0]['id']
            print(f"Deleting existing issuance configuration with ID: {config_id}")
            api_instance.delete_issuance_config_by_id(config_id)
            print(f"Deleted issuance configuration with ID: {config_id}")
        else:
            print("No existing issuance configurations found.")

    except ApiException as e:
        print(f"Error while deleting existing issuance configuration: {e}")
        raise

def create_issuance_configuration(api_instance: ConfigurationApi):
    env_vars = dotenv_values('../../.env')

    config_data = {
        "issuer_wallet_id": env_vars['WALLET_ID'],
        "credential_supported": [
            {
                "credential_type_id": "TInstructorReviewV1R0",
                "json_schema_url": "https://schema.affinidi.io/TInstructorReviewV1R0.json",
                "json_ld_context_url": "https://schema.affinidi.io/TInstructorReviewV1R0.jsonld"
            },
            {
                "credential_type_id": "TDriversLicenseV1R1",
                "json_schema_url": "https://schema.affinidi.io/TDriversLicenseV1R1.json",
                "json_ld_context_url": "https://schema.affinidi.io/TDriversLicenseV1R1.jsonld"
            },
            {
                "credential_type_id": "TSkillBadgeV1R0",
                "json_schema_url": "https://schema.affinidi.io/TSkillBadgeV1R0.json",
                "json_ld_context_url": "https://schema.affinidi.io/TSkillBadgeV1R0.jsonld"
            },
            {
                "credential_type_id": "TSimpleBioV1R0",
                "json_schema_url": "https://schema.affinidi.io/TSimpleBioV1R0.json",
                "json_ld_context_url": "https://schema.affinidi.io/TSimpleBioV1R0.jsonld"
            },
            {
                "credential_type_id": "UniversityDegree2024",
                "json_schema_url": "https://schema.affinidi.io/AnyTUniversityDegreeV1R1.json",
                "json_ld_context_url": "https://schema.affinidi.io/AnyTUniversityDegreeV1R1.jsonld"
            }
        ]
    }

    try:
        api_response = api_instance.create_issuance_config(config_data)
        data = json.loads(api_response.json())
        print("CIS -> create_issuance_configuration:", data)

        # Add assertions
        assert "id" in data, "Response should contain configuration id"
        return data["id"]

    except ApiException as e:
        print(f"Error while creating issuance configuration: {e}")
        raise


def update_issuance_configuration(api_instance: ConfigurationApi,config_id):
    env_vars = dotenv_values('../../.env')

    config_data = {
        "webhook": {
            "enabled": True,
            "endpoint": {
                "url": "https://affinidi.com/webhook"
            }
        }
    }

    try:
        api_response = api_instance.update_issuance_config_by_id(config_id,config_data)
        data = json.loads(api_response.json())
        print("CIS -> update_issuance_configuration:", data)

        # Add assertions
        assert "id" in data, "Response should contain configuration id"
        assert "webhook" in data, "Response should contain webhook"
        assert data["webhook"]["enabled"] is True, "Webhook should be enabled"
        assert data["webhook"]["endpoint"]["url"] == "https://affinidi.com/webhook", "Webhook URL should match"
        assert data["id"] == config_id, "Configuration ID should match the one provided"
        print(f"Updated issuance configuration with ID: {data['id']}")
        return data["id"]

    except ApiException as e:
        print(f"Error while creating issuance configuration: {e}")
        raise


def start_issuance(api_instance: IssuanceApi, projectId):
    env_vars = dotenv_values('../../.env')
    credential_issuance_data = json.loads(env_vars['CREDENTIAL_ISSUANCE_DATA'])

    try:
        api_response = api_instance.start_issuance(projectId, credential_issuance_data)

        data = json.loads(api_response.json())
        print("CIS -> start_issuance:", data)
        issuance_id = data['issuance_id']
        tx_code = data['tx_code']

        # Add assertions
        assert issuance_id is not None, "issuance_id should not be None"
        assert isinstance(issuance_id, str), "issuance_id should be a string"

        if tx_code is not None:
            assert isinstance(tx_code, str), "tx_code should be a string"

        return issuance_id, tx_code

    except ApiException as e:
        print(f"Error while starting issuance: {e}")
        raise

def get_credential_offer(api_instance: OfferApi, projectId, issuerId):
    try:
        api_response = api_instance.get_credential_offer(projectId, issuerId)

        data = json.loads(api_response.json())
        print("CIS -> get_credential_offer:", data)
        credential_issuer = data["credential_issuer"]
        pre_auth_code = data["grants"]["urnietfparamsoauthgrant_typepre_authorized_code"]["pre_authorized_code"]

        # Add assertions
        assert credential_issuer is not None, "credential_issuer should not be None"
        assert isinstance(credential_issuer, str), "credential_issuer should be a string"
        assert pre_auth_code is not None, "pre_auth_code should not be None"
        assert isinstance(pre_auth_code, str), "pre_auth_code should be a string"

        return credential_issuer, pre_auth_code
    except ApiException as e:
        print(f"Error while fetching offer details: {e}")
        raise

def exchange_token(credential_issuer, pre_auth_code,tx_code):

    try:
        request_body = {
            'grant_type': 'urn:ietf:params:oauth:grant-type:pre-authorized_code',
            'pre-authorized_code': pre_auth_code,
            'tx_code': tx_code,
        }
        url = f"{credential_issuer}/oauth2/token"

        headers = {
            'Content-Type': 'application/x-www-form-urlencoded'
        }

        response = requests.post(url, data=request_body, headers=headers)
        data = response.json()

        # Add assertions
        assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
        assert "access_token" in data, "Response should contain access_token"
        assert isinstance(data["access_token"], str), "access_token should be a string"

        print("CIS -> exchange_token:", data)
        return data
    except ApiException as e:
        print(f"Error while exchanging token: {e}")
        raise


def main():
    # Initialize AuthProvider and configuration
    auth_provider = get_auth_provider()
    configuration = configure_client(auth_provider)

    # Use the API client to issue a VC
    with ApiClient(configuration) as api_client:
        api_issuance_instance = IssuanceApi(api_client)
        api_offer_instance = OfferApi(api_client)
        api_configuration_instance = ConfigurationApi(api_client)
        # Load environment variables
        env_vars = dotenv_values('../../.env')
        project_id = env_vars['PROJECT_ID']
        # Issuance Configuration
        delete_existing_issuance_configuration(api_configuration_instance)
        config_id = create_issuance_configuration(api_configuration_instance)
        update_issuance_configuration(api_configuration_instance, config_id)
        # Issuance Flow
        issuance_id,tx_code=  start_issuance(api_issuance_instance, project_id)
        # Part of claiming flow
        credential_issuer, pre_auth_code =get_credential_offer(api_offer_instance, project_id, issuance_id)
        exchange_token(credential_issuer,pre_auth_code,tx_code)
if __name__ == "__main__":
    main()
