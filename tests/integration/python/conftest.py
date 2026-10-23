import pytest
from helpers.wallets import create_wallet, delete_wallet, check_wallets_limit_exceeded, clear_wallets

@pytest.fixture(scope="session", autouse=True)
def clear_existing_wallets():
    """Delete leftover wallets once before any test runs."""
    clear_wallets()

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
