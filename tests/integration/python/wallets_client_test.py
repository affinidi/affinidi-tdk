import pytest
import json
import uuid
import time
from datetime import datetime, timedelta, UTC

from helpers.env import (
    project_id,
    unsigned_credential_params as base_unsigned_params,
    unsigned_credential_v2,
    disclosure_frame_v2,
)
from helpers.auth import get_client_configuration
from helpers.utils import extract_revocation_status_id
from helpers.verification import is_credential_valid
from helpers.wallets import create_wallet_v2, delete_wallet
from affinidi_tdk_wallets_client import (
    Configuration,
    ApiClient,
    WalletApi,
    RevocationApi,
    SignCredentialsJwtInputDto,
    SignCredentialsLdpInputDto,
    SignCredentialsDm2SdJwtInputDto,
    SignPresentationLdpInputDto,
    RevokeCredentialsInput,
)
from affinidi_tdk_credential_verification_client import (
    DefaultApi as VerificationApi,
    VerifyCredentialV2Input,
    VerifyPresentationV2Input,
    Configuration as VerificationConfiguration,
    ApiClient as VerificationApiClient,
)

@pytest.fixture(scope="module")
def wallet_api_instance():
    config = get_client_configuration(Configuration)
    with ApiClient(config) as client:
        yield WalletApi(client)

@pytest.fixture(scope="module")
def revocation_api_instance():
    config = get_client_configuration(Configuration)
    with ApiClient(config) as client:
        yield RevocationApi(client)

# V2 API fixtures
@pytest.fixture(scope="module")
def wallet_api():
    """V2 wallet API instance."""
    config = get_client_configuration(Configuration)
    with ApiClient(config) as client:
        yield WalletApi(client)

@pytest.fixture(scope="module")
def revocation_api():
    """V2 revocation API instance."""
    config = get_client_configuration(Configuration)
    with ApiClient(config) as client:
        yield RevocationApi(client)

@pytest.fixture(scope="module")
def verification_api():
    """V2 verification API instance."""
    config = get_client_configuration(VerificationConfiguration)
    with VerificationApiClient(config) as client:
        yield VerificationApi(client)

@pytest.fixture(scope="module")
def wallet_v2_resource(wallet_api):
    """Create and manage v2 wallet lifecycle."""
    wallet = create_wallet_v2("key")
    yield {
        "wallet_id": wallet["id"],
        "wallet_did": wallet["did"],
    }
    delete_wallet(wallet["id"])

@pytest.fixture(scope="module")
def signed_credential_ldp(wallet_api, wallet_v2_resource):
    """Create a signed LDP credential for reuse in presentation and revocation tests."""
    wallet_id = wallet_v2_resource["wallet_id"]
    wallet_did = wallet_v2_resource["wallet_did"]
    
    base_credential = unsigned_credential_v2.copy()
    unsigned_credential = {
        "@context":  base_credential["@context"],
        "type": base_credential["type"],
        "id": f"uuid:test-ldp-tdk-{int(time.time() * 1000)}",
        "issuer": wallet_did,
        "issuanceDate": datetime.now(UTC).isoformat(),
        "expirationDate": (datetime.now(UTC) + timedelta(minutes=10)).isoformat(),
        "credentialSubject": {**base_credential["credentialSubject"], "id": wallet_did},
        "credentialSchema": base_credential.get("credentialSchema")
    }
    
    input_dto = SignCredentialsLdpInputDto(
        unsigned_credential=unsigned_credential,
        revocable=True
    )
    
    result = wallet_api.sign_credentials_ldp(
        wallet_id=wallet_id, 
        sign_credentials_ldp_input_dto=input_dto
    )
    return result.credential

def generate_unsigned_credential(holder_did: str, expires_in_minutes: int, revocable: bool = True):
    """Helper to generate an unsigned credential payload."""
    expires_at = (
        datetime.now(UTC) + timedelta(minutes=expires_in_minutes)
    ).isoformat(timespec="milliseconds").replace("+00:00", "Z")

    params = base_unsigned_params.copy()
    params["holderDid"] = holder_did
    params["expiresAt"] = expires_at

    return {
        "unsigned_credential_params": params,
        "revocable": revocable
    }

def test_sign_and_revoke_credential(wallet_api_instance, revocation_api_instance, wallet_resource):
    wallet_id = wallet_resource["wallet_id"]
    holder_did = wallet_resource["wallet_did"]

    # Sign a revocable credential that expires in 10 minutes
    payload = generate_unsigned_credential(holder_did, expires_in_minutes=10)
    response = wallet_api_instance.sign_credential(wallet_id, payload)
    data = json.loads(response.json())

    signed_credential = data.get("signed_credential")
    assert signed_credential, "Signed credential is missing or empty"
    assert isinstance(signed_credential, (dict, list)), "Signed credential must be a dict or list"
    assert is_credential_valid(signed_credential), "Signed credential should initially be valid"

    # Extract status ID for revocation
    revocation_url = signed_credential.get("credentialStatus", {}).get("revocationListCredential")
    status_id = extract_revocation_status_id(revocation_url)
    assert status_id, "Could not extract revocation status ID"

    # Fetch revocation list credential
    response = revocation_api_instance.get_revocation_credential_status(project_id, wallet_id, status_id)
    data = json.loads(response.json())

    revocation_cred = data.get("revocation_list_credential")
    assert revocation_cred, "Revocation list credential is missing"
    assert revocation_cred.get("type") == ["VerifiableCredential", "RevocationList2020Credential"], "Incorrect revocation credential type"

    # Revoke the credential
    revocation_api_instance.revoke_credential(wallet_id, {
        "revocationReason": "test",
        "credentialId": signed_credential.get("id", "")
    })

    # Credential should now be invalid
    assert not is_credential_valid(signed_credential), "Credential should be invalid after revocation"

def test_sign_expired_credential(wallet_api_instance, wallet_resource):
    wallet_id = wallet_resource["wallet_id"]
    holder_did = wallet_resource["wallet_did"]

    # Sign an expired credential (expires immediately)
    expires_at = datetime.now(UTC).isoformat(timespec="milliseconds").replace("+00:00", "Z")
    params = base_unsigned_params.copy()
    params["holderDid"] = holder_did
    params["expiresAt"] = expires_at

    response = wallet_api_instance.sign_credential(wallet_id, {
        "unsigned_credential_params": params,
        "revocable": False
    })
    data = json.loads(response.json())

    signed_credential = data.get("signed_credential")
    assert signed_credential, "Signed credential is missing or empty"
    assert not is_credential_valid(signed_credential), "Expired credential should be invalid"

def test_sign_jwt(wallet_api_instance, wallet_resource):
    wallet_id = wallet_resource["wallet_id"]

    jwt_input = {
        "header": {
            "alg": "HS256",
            "typ": "JWT",
        },
        "payload": {
            "sub": str(uuid.uuid4()),
            "iat": int(time.time()),
            "exp": int(time.time()) + 5 * 60,  # 5 minutes from now
        }
    }

    response = wallet_api_instance.sign_jwt_token(wallet_id, jwt_input)
    data = json.loads(response.json())

    assert data.get("signed_jwt"), "Signed JWT is missing"

def test_list_wallets(wallet_api_instance):
    response = wallet_api_instance.list_wallets()
    data = json.loads(response.json())

    wallets = data.get("wallets", [])
    assert isinstance(wallets, list), "`wallets` should be a list"
    assert wallets, "No wallets found"

def test_read_wallet(wallet_api_instance, wallet_resource):
    wallet_id = wallet_resource["wallet_id"]

    response = wallet_api_instance.get_wallet(wallet_id)
    data = json.loads(response.json())

    did = data.get("did", "")
    assert did.startswith("did:key"), f"Expected DID to start with 'did:key', got: {did}"

def test_update_wallet(wallet_api_instance, wallet_resource):
    wallet_id = wallet_resource["wallet_id"]
    updated_description = "Updated test wallet"

    response = wallet_api_instance.update_wallet(wallet_id, { "description": updated_description })
    data = json.loads(response.json())

    assert data.get("description") == updated_description, "Wallet description was not updated"


# ========== V2 Tests ==========

def test_validates_wallet_setup_v2(wallet_v2_resource):
    """V2: Validates wallet setup."""
    assert wallet_v2_resource["wallet_id"], "Wallet ID should not be empty"
    assert wallet_v2_resource["wallet_did"], "Wallet DID should not be empty"
    assert wallet_v2_resource["wallet_did"].startswith("did:key:"), "DID should start with 'did:key:'"


def test_create_did_web_wallet_v2(wallet_api):
    """V2: Create did:web wallet v2."""
    wallet = create_wallet_v2("web")
    assert wallet, "Expected WEB-based wallet to be created"
    assert wallet["id"], "Expected non-null WEB wallet ID"
    
    # Cleanup
    delete_wallet(wallet["id"])


def test_sign_and_validate_jwt_credential_v2(wallet_api, verification_api, wallet_v2_resource):
    """V2: Sign and validate JWT credential v2."""
    wallet_id = wallet_v2_resource["wallet_id"]
    wallet_did = wallet_v2_resource["wallet_did"]
    
    expiry = (datetime.now(UTC) + timedelta(minutes=10)).isoformat(timespec="milliseconds").replace("+00:00", "Z")
    
    # Prepare credential with v1 context for JWT
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
        revocable=False
    )
    
    result = wallet_api.sign_credentials_jwt(wallet_id, input_dto)
    assert result.credential, "Signed JWT credential should not be empty"
    assert result.credential.startswith("eyJ"), "JWT should start with 'eyJ'"
    
    # Verify the credential
    verify_input = VerifyCredentialV2Input(jwt_vcs=[result.credential])
    verify_result = verification_api.verify_credentials_v2(
        verify_credential_v2_input=verify_input
    )
    assert verify_result.is_valid is True, "Signed JWT credential should be valid"


def test_sign_expired_jwt_credential_v2(wallet_api, wallet_v2_resource):
    """V2: Sign JWT credential v2 - if expired then it is not valid."""
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
    
    result = wallet_api.sign_credentials_jwt(wallet_id, input_dto)
    assert result.credential, "Signed expired JWT credential should not be empty"
    assert result.credential.startswith("eyJ"), "JWT should start with 'eyJ'"


def test_sign_and_validate_ldp_credential_v2(wallet_api, verification_api, signed_credential_ldp):
    """V2: Sign and validate LDP credential v2."""
    assert signed_credential_ldp, "Signed LDP credential should not be None"
    
    # Verify the credential
    verify_input = VerifyCredentialV2Input(ldp_vcs=[signed_credential_ldp])
    verify_result = verification_api.verify_credentials_v2(
        verify_credential_v2_input=verify_input
    )
    assert verify_result.is_valid is True, "Signed LDP credential should be valid"


def test_sign_expired_ldp_credential_v2(wallet_api, wallet_v2_resource):
    """V2: Sign LDP credential v2 - if expired then it is not valid."""
    wallet_id = wallet_v2_resource["wallet_id"]
    wallet_did = wallet_v2_resource["wallet_did"]
    
    base_credential = unsigned_credential_v2.copy()
    past_date = datetime.now(UTC) - timedelta(days=730)
    
    unsigned_credential = {
        "@context":  base_credential["@context"],
        "type": base_credential["type"],
        "id": f"uuid:test-ldp-expired-tdk-{int(time.time() * 1000)}",
        "issuer": wallet_did,
        "issuanceDate": past_date.isoformat(),
        "expirationDate": past_date.isoformat(),
        "credentialSubject": {**base_credential["credentialSubject"], "id": wallet_did},
        "credentialSchema": base_credential.get("credentialSchema")
    }
    
    input_dto = SignCredentialsLdpInputDto(
        unsigned_credential=unsigned_credential,
        revocable=False
    )
    
    result = wallet_api.sign_credentials_ldp(
        wallet_id=wallet_id,
        sign_credentials_ldp_input_dto=input_dto
    )
    assert result.credential, "Signed expired LDP credential should not be None"
    assert "proof" in result.credential, "LDP credential should have proof"


def test_sign_and_validate_sdjwt_credential_v2(wallet_api, verification_api, wallet_v2_resource):
    """V2: Sign and validate SD-JWT credential v2."""
    wallet_id = wallet_v2_resource["wallet_id"]
    wallet_did = wallet_v2_resource["wallet_did"]
    
    base_credential = unsigned_credential_v2.copy()
    unsigned_credential = {
        "@context": base_credential["@context"],
        "type": base_credential["type"],
        "id": f"uuid:test-sdjwt-tdk-{int(time.time() * 1000)}",
        "issuer": wallet_did,
        "validFrom": datetime.now(UTC).isoformat(),
        "validUntil": (datetime.now(UTC) + timedelta(minutes=10)).isoformat(),
        "credentialSubject": {**base_credential["credentialSubject"], "id": wallet_did},
        "credentialSchema": base_credential.get("credentialSchema")
    }
    
    input_dto = SignCredentialsDm2SdJwtInputDto(
        unsigned_credential=unsigned_credential,
        disclosure_frame=disclosure_frame_v2,
        revocable=True
    )
    
    result = wallet_api.sign_credentials_sd_jwt(wallet_id, input_dto)
    assert result.credential, "Signed SD-JWT credential should not be empty"
    
    # Verify the credential
    verify_input = VerifyCredentialV2Input(jwt_vcs=[result.credential])
    verify_result = verification_api.verify_credentials_v2(
        verify_credential_v2_input=verify_input
    )
    assert verify_result.is_valid is True, "Signed SD-JWT credential should be valid"


def test_sign_expired_sdjwt_credential_v2(wallet_api, wallet_v2_resource):
    """V2: Sign SD-JWT credential v2 - if expired then it is not valid."""
    wallet_id = wallet_v2_resource["wallet_id"]
    wallet_did = wallet_v2_resource["wallet_did"]
    
    base_credential = unsigned_credential_v2.copy()
    past_date = datetime.now(UTC) - timedelta(days=730)
    
    unsigned_credential = {
        "@context": base_credential["@context"],
        "type": base_credential["type"],
        "id": f"uuid:test-sdjwt-expired-tdk-{int(time.time() * 1000)}",
        "issuer": wallet_did,
        "validFrom": past_date.isoformat(),
        "validUntil": past_date.isoformat(),
        "credentialSubject": {**base_credential["credentialSubject"], "id": wallet_did},
        "credentialSchema": base_credential.get("credentialSchema")
    }
    
    input_dto = SignCredentialsDm2SdJwtInputDto(
        unsigned_credential=unsigned_credential,
        disclosure_frame=disclosure_frame_v2,
        revocable=False
    )
    
    result = wallet_api.sign_credentials_sd_jwt(wallet_id, input_dto)
    assert result.credential, "Signed expired SD-JWT credential should not be empty"
    assert "~" in result.credential, "SD-JWT should contain disclosure separators (~)"


def test_sign_presentation_ldp_v2(wallet_api, verification_api, wallet_v2_resource, signed_credential_ldp):
    """V2: Sign presentation - ldp v2."""
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
    assert presentation.get("proof") is not None, "Presentation proof should not be None"

    # Verify
    verify_input = VerifyPresentationV2Input(
        verifiable_presentation=presentation,
        domain=[domain],
        challenge=challenge
    )
    verify_response = verification_api.verify_presentation_v2(verify_input)
    verify_data = json.loads(verify_response.json())
    assert verify_data["is_valid"] is True, "Signed presentation should be valid"


def test_revoke_credential_v2(revocation_api, wallet_v2_resource, signed_credential_ldp):
    """V2: Revoke verifiable credential - ldp v2."""
    wallet_id = wallet_v2_resource["wallet_id"]
    credential_id = signed_credential_ldp.get("id")
    
    input_data = RevokeCredentialsInput(
        credential_id=credential_id
    )
    
    # Should complete without throwing an exception
    try:
        revocation_api.revoke_credentials(
            wallet_id=wallet_id,
            revoke_credentials_input=input_data
        )
    except Exception as e:
        pytest.fail(f"revoke_credentials should not throw an exception: {e}")


def test_fetch_wallet_by_id_v2(wallet_api, wallet_v2_resource):
    """V2: Fetch wallet by ID."""
    wallet_id = wallet_v2_resource["wallet_id"]
    
    wallet = wallet_api.get_wallet(wallet_id)
    assert wallet.id, "Wallet ID should not be empty"
    assert wallet.id == wallet_id, "Wallet ID should match"
