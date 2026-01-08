import json
from .auth import get_client_configuration
from .utils import generate_random_string
from affinidi_tdk_wallets_client import WalletApi, ApiClient, CreateWalletInput, CreateWalletV2Input, Configuration

def create_wallet(did_web=False):
    config = get_client_configuration(Configuration)
    with ApiClient(config) as api_client:
        api_instance = WalletApi(api_client)

        if did_web:
            random_name = generate_random_string()
            create_wallet_input = CreateWalletInput(did_method="web", did_web_url=f"{random_name}.com")
        else:
            create_wallet_input = CreateWalletInput(did_method="key")

        response = api_instance.create_wallet(create_wallet_input=create_wallet_input)
        return json.loads(response.json())['wallet']

def create_wallet_v2(did_web=False):
    """Create a v2 wallet using the new API."""
    config = get_client_configuration(Configuration)
    with ApiClient(config) as api_client:
        api_instance = WalletApi(api_client)

        if did_web:
            random_name = generate_random_string()
            create_wallet_input = CreateWalletV2Input(
                did_method="web", 
                did_web_url=f"https://{random_name}.com"
            )
        else:
            create_wallet_input = CreateWalletV2Input(did_method="key")

        response = api_instance.create_wallet_v2(create_wallet_v2_input=create_wallet_input)
        return json.loads(response.json())['wallet']

def delete_wallet(wallet_id):
    config = get_client_configuration(Configuration)
    with ApiClient(config) as api_client:
        api_instance = WalletApi(api_client)
        api_instance.delete_wallet(wallet_id=wallet_id)

def check_wallets_limit_exceeded():
    config = get_client_configuration(Configuration)
    with ApiClient(config) as api_client:
        api_instance = WalletApi(api_client)
        response = api_instance.list_wallets()
        wallets = json.loads(response.json())['wallets']
        if len(wallets) >= 10:
            raise ValueError("❗️Max wallets limit exceeded (10). Delete unused wallets and try again.")
