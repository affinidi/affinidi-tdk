# CreateWalletV2Input

## Properties

| Name            | Type    | Description                                           | Notes                               |
| --------------- | ------- | ----------------------------------------------------- | ----------------------------------- |
| **name**        | **str** | The name of the wallet                                | [optional]                          |
| **description** | **str** | The description of the wallet                         | [optional]                          |
| **did_method**  | **str** | Define how DID of your wallet is created and resolved | [optional] [default to 'key']       |
| **did_web_url** | **str** | URL of the DID. Required if the did method is web     | [optional]                          |
| **algorithm**   | **str** | algorithm to generate key for the wallet              | [optional] [default to 'secp256k1'] |

## Example

```python
from affinidi_tdk_wallets_client.models.create_wallet_v2_input import CreateWalletV2Input

# TODO update the JSON string below
json = "{}"
# create an instance of CreateWalletV2Input from a JSON string
create_wallet_v2_input_instance = CreateWalletV2Input.from_json(json)
# print the JSON string representation of the object
print CreateWalletV2Input.to_json()

# convert the object into a dict
create_wallet_v2_input_dict = create_wallet_v2_input_instance.to_dict()
# create an instance of CreateWalletV2Input from a dict
create_wallet_v2_input_from_dict = CreateWalletV2Input.from_dict(create_wallet_v2_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
