import json
from .auth import get_client_configuration
from .utils import generate_random_string
from affinidi_tdk_wallets_client import WalletApi, ApiClient, CreateWalletInput, CreateWalletV2Input, Configuration
from affinidi_tdk_wallets_client.exceptions import NotFoundException as WalletNotFoundException
from affinidi_tdk_credential_issuance_client import ConfigurationApi, Configuration as CISConfig, ApiClient as CISApiClient

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

def create_wallet_v2(did_method="key"):
    """Create a v2 wallet using the new API.
    
    Args:
        did_method: Either "key", "web", or "peer0". Defaults to "key".
    """
    config = get_client_configuration(Configuration)
    with ApiClient(config) as api_client:
        api_instance = WalletApi(api_client)

        if did_method == "web":
            random_name = generate_random_string()
            create_wallet_input = CreateWalletV2Input(
                did_method="web", 
                did_web_url=f"https://{random_name}.com"
            )
        elif did_method == "peer0":
            create_wallet_input = CreateWalletV2Input(did_method="peer:0")
        else:
            create_wallet_input = CreateWalletV2Input(did_method="key")

        response = api_instance.create_wallet_v2(create_wallet_v2_input=create_wallet_input)
        return json.loads(response.json())['wallet']

def delete_wallet(wallet_id):
    config = get_client_configuration(Configuration)
    with ApiClient(config) as api_client:
        api_instance = WalletApi(api_client)
        api_instance.delete_wallet(wallet_id=wallet_id)

def get_wallet_by_id(wallet_id):
    """Get wallet by ID, raises NotFoundException if not found."""
    config = get_client_configuration(Configuration)
    with ApiClient(config) as api_client:
        api_instance = WalletApi(api_client)
        response = api_instance.get_wallet(wallet_id=wallet_id)
        return json.loads(response.json())

def ensure_config_wallet_exists(config_id):
    """Ensure the wallet referenced by the config exists, create if missing."""
    cis_config = get_client_configuration(CISConfig)
    with CISApiClient(cis_config) as cis_client:
        config_api = ConfigurationApi(cis_client)
        config_response = config_api.get_issuance_config_by_id(config_id)
        config_data = json.loads(config_response.json())

        issuer_wallet_id = config_data.get('issuer_wallet_id')
        if issuer_wallet_id:
            try:
                get_wallet_by_id(issuer_wallet_id)
            except WalletNotFoundException:
                new_wallet = create_wallet()
                update_input = {"issuer_wallet_id": new_wallet["id"]}
                config_api.update_issuance_config_by_id(config_id, update_input)

def check_wallets_limit_exceeded():
    config = get_client_configuration(Configuration)
    with ApiClient(config) as api_client:
        api_instance = WalletApi(api_client)
        response = api_instance.list_wallets()
        wallets = json.loads(response.json())['wallets']
        if len(wallets) >= 10:
            raise ValueError("❗️Max wallets limit exceeded (10). Delete unused wallets and try again.")

        # Threshold check with protected wallet logic
        if len(wallets) > 7:
            # Get protected wallet ID from issuance configuration
            protected_wallet_id = None
            try:
                cis_config = get_client_configuration(CISConfig)
                with CISApiClient(cis_config) as cis_client:
                    config_api = ConfigurationApi(cis_client)
                    config_list = config_api.get_issuance_config_list()
                    config_data = json.loads(config_list.json())
                    if config_data.get('configurations'):
                        protected_wallet_id = config_data['configurations'][0].get('issuer_wallet_id')
            except:
                pass  # Proceed without protection if config unavailable

            print("❗️Number of wallets reaching the limit (10). Deleting wallets.")
            for wallet in wallets:
                # Skip deleting the wallet used by the issuance configuration
                if wallet['id'] != protected_wallet_id:
                    delete_wallet(wallet['id'])
