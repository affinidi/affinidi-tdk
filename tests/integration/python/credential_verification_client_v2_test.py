"""Integration tests for Credential Verification Client v2.

Covers credential and presentation verification using v2 API methods.
"""

import pytest

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
def verification_api():
    """Create verification API client instance."""
    config = get_client_configuration(Configuration)
    with ApiClient(config) as client:
        yield DefaultApi(client)


def test_verify_ldp_credential_v2(verification_api):
    """Test LDP Credential Verification using v2 API."""
    input_data = VerifyCredentialV2Input(
        ldp_vcs=[verifiable_credential]
    )

    result = verification_api.verify_credentials_v2(input_data)
    assert result.is_valid is True, "LDP Credential should be valid"


def test_verify_jwt_credential_v2(verification_api):
    """Test JWT Credential Verification using v2 API."""
    input_data = VerifyCredentialV2Input(
        jwt_vcs=[jwt_credential_v2]
    )

    result = verification_api.verify_credentials_v2(input_data)
    assert result.is_valid is True, "JWT Credential should be valid"


def test_verify_ldp_and_jwt_credential_v2(verification_api):
    """Test both LDP and JWT Credential Verification using v2 API."""
    input_data = VerifyCredentialV2Input(
        ldp_vcs=[verifiable_credential],
        jwt_vcs=[jwt_credential_v2]
    )

    result = verification_api.verify_credentials_v2(input_data)
    assert result.is_valid is True, "Both credentials should be valid"


def test_verify_presentation_v2(verification_api):
    """Test Presentation Verification using v2 API."""
    input_data = VerifyPresentationInput(
        verifiable_presentation=verifiable_presentation
    )

    result = verification_api.verify_presentation(input_data)
    assert result.is_valid is True, "Presentation should be valid"
