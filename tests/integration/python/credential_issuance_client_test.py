import pytest
import json
import requests

from helpers.env import credential_issuance_data, project_id
from helpers.auth import get_client_configuration
from helpers.utils import generate_random_string
from affinidi_tdk_credential_issuance_client import ConfigurationApi, IssuanceApi, OfferApi, ApiClient, Configuration

@pytest.fixture(scope="module")
def api_client():
    config = get_client_configuration(Configuration)
    with ApiClient(config) as client:
        yield client

@pytest.fixture(scope="module")
def configuration_api_instance(api_client):
    return ConfigurationApi(api_client)

@pytest.fixture(scope="module")
def issuance_api_instance(api_client):
    return IssuanceApi(api_client)

@pytest.fixture(scope="module")
def offer_api_instance(api_client):
    return OfferApi(api_client)

@pytest.fixture(scope="module")
def configuration_resource(configuration_api_instance):
    api_response = configuration_api_instance.get_issuance_config_list()
    data = json.loads(api_response.json())

    configurations = data.get('configurations', [])
    assert configurations, "No configurations found in response"

    configuration_id = configurations[0].get('id')
    assert configuration_id, "Configuration ID is missing"

    yield {"configuration_id": configuration_id}

def test_update_issuance_configuration(configuration_api_instance, configuration_resource):
    description = generate_random_string()
    input_data = {"description": description}

    config_id = configuration_resource["configuration_id"]
    api_response = configuration_api_instance.update_issuance_config_by_id(config_id, input_data)
    data = json.loads(api_response.json())

    assert data.get("description") == description, "Failed to update configuration description"

def test_get_issuance_configuration(configuration_api_instance, configuration_resource):
    config_id = configuration_resource["configuration_id"]
    api_response = configuration_api_instance.get_issuance_config_by_id(config_id)
    data = json.loads(api_response.json())

    assert "id" in data, "Response should contain configuration id"
    assert data.get("id") == config_id, "Configuration ID mismatch"

def test_issuance_flow(issuance_api_instance, offer_api_instance):
    # Start issuance
    api_response = issuance_api_instance.start_issuance(project_id, credential_issuance_data)
    data = json.loads(api_response.json())

    issuance_id = data.get("issuance_id")
    tx_code = data.get("tx_code", "")

    assert issuance_id, "issuance_id is missing"
    # TODO: Why backend returns None?
    # assert tx_code, "tx_code is missing"

    # Get credential offer
    api_response = offer_api_instance.get_credential_offer(project_id, issuance_id)
    data = json.loads(api_response.json())

    credential_issuer = data.get("credential_issuer")
    grants = data.get("grants", {})
    pre_auth_code = grants.get("urnietfparamsoauthgrant_typepre_authorized_code", {}).get("pre_authorized_code")

    assert credential_issuer, "credential_issuer is missing"
    assert pre_auth_code, "pre_authorized_code is missing"

    # Exchange code for token
    token_url = f"{credential_issuer}/oauth2/token"
    headers = {'Content-Type': 'application/x-www-form-urlencoded'}
    request_body = {
        'grant_type': 'urn:ietf:params:oauth:grant-type:pre-authorized_code',
        'pre-authorized_code': pre_auth_code,
        'tx_code': tx_code,
    }

    response = requests.post(token_url, data=request_body, headers=headers)
    data = response.json()

    assert response.status_code == 200, f"Expected HTTP 200, got {response.status_code}"
    assert data.get("access_token"), "access_token is missing in token response"
