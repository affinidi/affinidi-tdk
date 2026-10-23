import pytest
from helpers.wallets import create_wallet, delete_wallet, check_wallets_limit_exceeded

# Module scope so each test file deletes its wallet when it finishes
@pytest.fixture(scope="module")
def wallet_resource():
    check_wallets_limit_exceeded()

    wallet = create_wallet()
    yield {
        "wallet_id": wallet["id"],
        "wallet_did": wallet["did"],
        "wallet_ari": wallet["ari"],
    }

    delete_wallet(wallet["id"])
