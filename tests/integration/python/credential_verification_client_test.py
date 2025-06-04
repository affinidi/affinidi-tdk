import pytest
import json

from helpers.env import verifiable_credential, verifiable_presentation
from helpers.auth import get_client_configuration
from affinidi_tdk_credential_verification_client import DefaultApi, ApiClient, Configuration


@pytest.fixture(scope="module")
def api_instance():
    config = get_client_configuration(Configuration)
    with ApiClient(config) as client:
        yield DefaultApi(client)


def test_verify_credentials(api_instance):
    payload = {
        "verifiableCredentials": [verifiable_credential]
    }

    api_response = api_instance.verify_credentials(payload)
    data = json.loads(api_response.json())
    assert "is_valid" in data, "Missing 'is_valid' in response"
    assert data["is_valid"] is True, "Credential should be valid"


def test_verify_presentation(api_instance):
    payload = {
        "verifiable_presentation": verifiable_presentation
    }

    api_response = api_instance.verify_presentation(payload)
    data = json.loads(api_response.json())
    assert "is_valid" in data, "Missing 'is_valid' in response"
    assert data["is_valid"] is True, "Presentation should be valid"
