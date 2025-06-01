import pytest
from helpers.wallets import create_wallet, delete_wallet, check_wallets_limit_exceeded

@pytest.fixture(scope="session")
def wallet_resource():
    check_wallets_limit_exceeded()

    wallet = create_wallet()
    yield {
        "wallet_id": wallet["id"],
        "wallet_did": wallet["did"],
        "wallet_ari": wallet["ari"],
    }

    delete_wallet(wallet["id"])
