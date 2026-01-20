"""Integration tests for Credential Verification Client.

Covers v1 and v2 credential and presentation verification.
"""

import pytest
import json

from helpers.env import verifiable_credential, verifiable_presentation, jwt_credential_v2
from helpers.auth import get_client_configuration
from affinidi_tdk_credential_verification_client import (
    DefaultApi,
    ApiClient,
    Configuration,
    VerifyCredentialV2Input,
    VerifyPresentationInput,
)


@pytest.fixture(scope="module")
def api_instance():
    config = get_client_configuration(Configuration)
    with ApiClient(config) as client:
        yield DefaultApi(client)


@pytest.fixture(scope="module")
def verification_api():
    """V2 verification API client instance."""
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


# ========== V2 Tests ==========

def test_verify_ldp_credential_v2(verification_api):
    """V2: Test LDP Credential Verification."""
    input_data = VerifyCredentialV2Input(
        ldp_vcs=[verifiable_credential]
    )

    result = verification_api.verify_credentials_v2(input_data)
    assert result.is_valid is True, "LDP Credential should be valid"


def test_verify_jwt_credential_v2(verification_api):
    """V2: Test JWT Credential Verification."""
    input_data = VerifyCredentialV2Input(
        jwt_vcs=[jwt_credential_v2]
    )

    result = verification_api.verify_credentials_v2(input_data)
    assert result.is_valid is True, "JWT Credential should be valid"


def test_verify_ldp_and_jwt_credential_v2(verification_api):
    """V2: Test both LDP and JWT Credential Verification."""
    input_data = VerifyCredentialV2Input(
        ldp_vcs=[verifiable_credential],
        jwt_vcs=[jwt_credential_v2]
    )

    result = verification_api.verify_credentials_v2(input_data)
    assert result.is_valid is True, "Both credentials should be valid"


def test_verify_presentation_v2(verification_api):
    """V2: Test Presentation Verification."""
    input_data = VerifyPresentationInput(
        verifiable_presentation=verifiable_presentation
    )

    result = verification_api.verify_presentation(input_data)
    assert result.is_valid is True, "Presentation should be valid"
