# CreateWalletV2Response

wallet dto

## Properties

| Name       | Type                              | Description | Notes      |
| ---------- | --------------------------------- | ----------- | ---------- |
| **wallet** | [**WalletV2Dto**](WalletV2Dto.md) |             | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.create_wallet_v2_response import CreateWalletV2Response

# TODO update the JSON string below
json = "{}"
# create an instance of CreateWalletV2Response from a JSON string
create_wallet_v2_response_instance = CreateWalletV2Response.from_json(json)
# print the JSON string representation of the object
print CreateWalletV2Response.to_json()

# convert the object into a dict
create_wallet_v2_response_dict = create_wallet_v2_response_instance.to_dict()
# create an instance of CreateWalletV2Response from a dict
create_wallet_v2_response_from_dict = CreateWalletV2Response.from_dict(create_wallet_v2_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
