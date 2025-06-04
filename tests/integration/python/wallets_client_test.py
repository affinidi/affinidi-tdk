import pytest
import json
import uuid
import time
from datetime import datetime, timedelta, UTC

from helpers.env import project_id, unsigned_credential_params as base_unsigned_params
from helpers.auth import get_client_configuration
from helpers.utils import extract_revocation_status_id
from helpers.verification import is_credential_valid
from affinidi_tdk_wallets_client import Configuration, ApiClient, WalletApi, RevocationApi

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
