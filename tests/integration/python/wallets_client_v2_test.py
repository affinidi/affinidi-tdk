import pytest
import json
import uuid
import time
from datetime import datetime, timedelta, UTC

from helpers.env import unsigned_credential_v2, disclosure_frame_v2
from helpers.auth import get_client_configuration
from helpers.wallets import create_wallet_v2, delete_wallet, check_wallets_limit_exceeded
from affinidi_tdk_wallets_client import (
    Configuration, ApiClient, WalletApi, RevocationApi,
    SignCredentialsJwtInputDto, SignCredentialsLdpInputDto,
    SignCredentialsDm2SdJwtInputDto, SignPresentationLdpInputDto,
    RevokeCredentialsInput
)
from affinidi_tdk_credential_verification_client import (
    Configuration as VerificationConfiguration,
    ApiClient as VerificationApiClient,
    DefaultApi as VerificationApi,
    VerifyCredentialV2Input,
    VerifyPresentationV2Input
)

# Module-level wallet fixture
@pytest.fixture(scope="module")
def wallet_v2_resource():
    """Create a v2 wallet for the test module."""
    check_wallets_limit_exceeded()
    
    wallet = create_wallet_v2(did_web=False)
    yield {
        "wallet_id": wallet["id"],
        "wallet_did": wallet["did"],
    }
    
    delete_wallet(wallet["id"])

@pytest.fixture(scope="module")
def wallet_api():
    """Wallet API instance."""
    config = get_client_configuration(Configuration)
    with ApiClient(config) as client:
        yield WalletApi(client)

@pytest.fixture(scope="module")
def revocation_api():
    """Revocation API instance."""
    config = get_client_configuration(Configuration)
    with ApiClient(config) as client:
        yield RevocationApi(client)

@pytest.fixture(scope="module")
def verification_api():
    """Verification API instance."""
    config = get_client_configuration(VerificationConfiguration)
    with VerificationApiClient(config) as client:
        yield VerificationApi(client)

@pytest.fixture(scope="module")
def signed_credential_ldp(wallet_api, wallet_v2_resource):
    """Sign an LDP credential for use in multiple tests."""
    wallet_id = wallet_v2_resource["wallet_id"]
    wallet_did = wallet_v2_resource["wallet_did"]
    
    # Build unsigned credential
    unsigned_credential = unsigned_credential_v2.copy()
    unsigned_credential["id"] = f"urn:uuid:test-ldp-tdk-{int(time.time() * 1000)}"
    unsigned_credential["holder"] = wallet_did
    unsigned_credential["issuanceDate"] = datetime.now(UTC).isoformat()
    
    expiry = datetime.now(UTC) + timedelta(minutes=10)
    unsigned_credential["expirationDate"] = expiry.isoformat()
    
    input_dto = SignCredentialsLdpInputDto(
        unsigned_credential=unsigned_credential,
        revocable=True
    )
    
    response = wallet_api.sign_credentials_ldp(wallet_id, input_dto)
    data = json.loads(response.json())
    return data["credential"]


def test_validates_wallet_setup(wallet_v2_resource):
    """Validates that the wallet was created successfully in setup."""
    assert wallet_v2_resource["wallet_id"] is not None
    assert wallet_v2_resource["wallet_did"] is not None
    assert wallet_v2_resource["wallet_did"].startswith("did:key:")


def test_create_did_web_wallet_v2(wallet_api):
    """Create a did:web wallet v2."""
    wallet = create_wallet_v2(did_web=True)
    
    assert wallet is not None
    assert wallet["id"] is not None
    assert wallet["did"] is not None
    
    # Cleanup
    delete_wallet(wallet["id"])


def test_sign_and_validate_jwt_credential_v2(wallet_api, verification_api, wallet_v2_resource):
    """Sign and validate a JWT credential v2."""
    wallet_id = wallet_v2_resource["wallet_id"]
    wallet_did = wallet_v2_resource["wallet_did"]
    
    # Build unsigned credential for JWT
    base_credential = unsigned_credential_v2.copy()
    unsigned_credential = {
        "@context": ["https://www.w3.org/2018/credentials/v1"] + base_credential["@context"][1:],
        "type": ["VerifiableCredential", "UserProfile"],
        "id": f"uuid:test-jwt-tdk-{int(time.time() * 1000)}",
        "holder": {"id": wallet_did},
        "issuanceDate": datetime.now(UTC).isoformat(),
        "expirationDate": (datetime.now(UTC) + timedelta(minutes=10)).isoformat(),
        "credentialSubject": {**base_credential["credentialSubject"], "id": wallet_did},
        "credentialSchema": base_credential.get("credentialSchema")
    }
    
    input_dto = SignCredentialsJwtInputDto(
        unsigned_credential=unsigned_credential,
        revocable=True
    )
    
    response = wallet_api.sign_credentials_jwt(wallet_id, input_dto)
    data = json.loads(response.json())
    jwt_credential = data["credential"]
    
    assert jwt_credential is not None
    assert jwt_credential.startswith("eyJ")
    
    # Verify
    verify_input = VerifyCredentialV2Input(jwt_vcs=[jwt_credential])
    verify_response = verification_api.verify_credentials_v2(verify_input)
    verify_data = json.loads(verify_response.json())
    assert verify_data["is_valid"] is True


def test_sign_expired_jwt_credential_v2(wallet_api, wallet_v2_resource):
    """Sign an expired JWT credential v2."""
    wallet_id = wallet_v2_resource["wallet_id"]
    wallet_did = wallet_v2_resource["wallet_did"]
    
    base_credential = unsigned_credential_v2.copy()
    past_date = datetime.now(UTC) - timedelta(days=365)
    
    unsigned_credential = {
        "@context": ["https://www.w3.org/2018/credentials/v1"] + base_credential["@context"][1:],
        "type": ["VerifiableCredential", "UserProfile"],
        "id": f"uuid:test-jwt-expired-tdk-{int(time.time() * 1000)}",
        "holder": {"id": wallet_did},
        "issuanceDate": past_date.isoformat(),
        "expirationDate": past_date.isoformat(),
        "credentialSubject": {**base_credential["credentialSubject"], "id": wallet_did},
        "credentialSchema": base_credential.get("credentialSchema")
    }
    
    input_dto = SignCredentialsJwtInputDto(
        unsigned_credential=unsigned_credential,
        revocable=False
    )
    
    response = wallet_api.sign_credentials_jwt(wallet_id, input_dto)
    data = json.loads(response.json())
    jwt_credential = data["credential"]
    
    assert jwt_credential is not None
    assert jwt_credential.startswith("eyJ")


def test_sign_and_validate_ldp_credential_v2(wallet_api, verification_api, signed_credential_ldp):
    """Sign and validate an LDP credential v2 (uses fixture)."""
    assert signed_credential_ldp is not None
    assert "proof" in signed_credential_ldp
    assert "id" in signed_credential_ldp
    
    # Verify
    verify_input = VerifyCredentialV2Input(ldp_vcs=[signed_credential_ldp])
    verify_response = verification_api.verify_credentials_v2(verify_input)
    verify_data = json.loads(verify_response.json())
    assert verify_data["is_valid"] is True


def test_sign_expired_ldp_credential_v2(wallet_api, wallet_v2_resource):
    """Sign an expired LDP credential v2."""
    wallet_id = wallet_v2_resource["wallet_id"]
    wallet_did = wallet_v2_resource["wallet_did"]
    
    past_date = datetime.now(UTC) - timedelta(days=730)  # 2 years ago
    
    unsigned_credential = unsigned_credential_v2.copy()
    unsigned_credential["id"] = f"urn:uuid:test-ldp-expired-tdk-{int(time.time() * 1000)}"
    unsigned_credential["holder"] = wallet_did
    unsigned_credential["issuanceDate"] = past_date.isoformat()
    unsigned_credential["expirationDate"] = past_date.isoformat()
    
    input_dto = SignCredentialsLdpInputDto(
        unsigned_credential=unsigned_credential,
        revocable=False
    )
    
    response = wallet_api.sign_credentials_ldp(wallet_id, input_dto)
    data = json.loads(response.json())
    credential = data["credential"]
    
    assert credential is not None
    assert "proof" in credential


def test_sign_and_validate_sdjwt_credential_v2(wallet_api, verification_api, wallet_v2_resource):
    """Sign and validate an SD-JWT credential v2."""
    wallet_id = wallet_v2_resource["wallet_id"]
    
    unsigned_credential = unsigned_credential_v2.copy()
    unsigned_credential["id"] = f"urn:uuid:test-sdjwt-tdk-{int(time.time() * 1000)}"
    unsigned_credential["validFrom"] = datetime.now(UTC).isoformat()
    unsigned_credential["validUntil"] = (datetime.now(UTC) + timedelta(minutes=10)).isoformat()
    
    input_dto = SignCredentialsDm2SdJwtInputDto(
        unsigned_credential=unsigned_credential,
        disclosure_frame=disclosure_frame_v2,
        revocable=True
    )
    
    response = wallet_api.sign_credentials_sd_jwt(wallet_id, input_dto)
    data = json.loads(response.json())
    sdjwt_credential = data["credential"]
    
    assert sdjwt_credential is not None
    assert "~" in sdjwt_credential
    
    # Verify
    verify_input = VerifyCredentialV2Input(jwt_vcs=[sdjwt_credential])
    verify_response = verification_api.verify_credentials_v2(verify_input)
    verify_data = json.loads(verify_response.json())
    assert verify_data["is_valid"] is True


def test_sign_expired_sdjwt_credential_v2(wallet_api, wallet_v2_resource):
    """Sign an expired SD-JWT credential v2."""
    wallet_id = wallet_v2_resource["wallet_id"]
    
    past_date = datetime.now(UTC) - timedelta(days=730)  # 2 years ago
    
    unsigned_credential = unsigned_credential_v2.copy()
    unsigned_credential["id"] = f"urn:uuid:test-sdjwt-expired-tdk-{int(time.time() * 1000)}"
    unsigned_credential["validFrom"] = past_date.isoformat()
    unsigned_credential["validUntil"] = past_date.isoformat()
    
    input_dto = SignCredentialsDm2SdJwtInputDto(
        unsigned_credential=unsigned_credential,
        disclosure_frame=disclosure_frame_v2,
        revocable=False
    )
    
    response = wallet_api.sign_credentials_sd_jwt(wallet_id, input_dto)
    data = json.loads(response.json())
    sdjwt_credential = data["credential"]
    
    assert sdjwt_credential is not None
    assert "~" in sdjwt_credential


def test_sign_presentation_ldp_v2(wallet_api, verification_api, wallet_v2_resource, signed_credential_ldp):
    """Sign an LDP presentation v2."""
    wallet_id = wallet_v2_resource["wallet_id"]
    wallet_did = wallet_v2_resource["wallet_did"]
    domain = "example.com"
    challenge = str(uuid.uuid4())
    
    unsigned_presentation = {
        "@context": ["https://www.w3.org/ns/credentials/v2"],
        "id": f"testVpV2Id-tdk-{int(time.time() * 1000)}",
        "type": ["VerifiablePresentation"],
        "holder": {"id": wallet_did},
        "verifiableCredential": [signed_credential_ldp]
    }
    
    input_dto = SignPresentationLdpInputDto(
        unsigned_presentation=unsigned_presentation,
        domain=[domain],
        challenge=challenge
    )
    
    response = wallet_api.sign_presentations_ldp(wallet_id, input_dto)
    data = json.loads(response.json())
    presentation = data["presentation"]
    
    assert presentation is not None
    
    # Verify
    verify_input = VerifyPresentationV2Input(
        verifiable_presentation=presentation,
        domain=[domain],
        challenge=challenge
    )
    verify_response = verification_api.verify_presentation_v2(verify_input)
    verify_data = json.loads(verify_response.json())
    assert verify_data["is_valid"] is True


def test_revoke_credential_v2(revocation_api, wallet_v2_resource, signed_credential_ldp):
    """Revoke a credential v2."""
    wallet_id = wallet_v2_resource["wallet_id"]
    credential_id = signed_credential_ldp["id"]
    
    input_dto = RevokeCredentialsInput(
        credential_id=credential_id,
        revocation_reason="test v2 tdk"
    )
    
    # Should not raise an exception
    revocation_api.revoke_credentials(wallet_id, input_dto)


def test_fetch_wallet_by_id(wallet_api, wallet_v2_resource):
    """Fetch wallet by ID."""
    wallet_id = wallet_v2_resource["wallet_id"]
    
    response = wallet_api.get_wallet(wallet_id)
    data = json.loads(response.json())
    
    assert data["id"] is not None
    assert data["did"] is not None
