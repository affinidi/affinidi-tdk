# ListWalletKeysOK

Response containing wallet keys

## Properties

| Name     | Type                                      | Description         | Notes |
| -------- | ----------------------------------------- | ------------------- | ----- |
| **keys** | [**List[WalletKeyDto]**](WalletKeyDto.md) | list of wallet keys |

## Example

```python
from affinidi_tdk_wallets_client.models.list_wallet_keys_ok import ListWalletKeysOK

# TODO update the JSON string below
json = "{}"
# create an instance of ListWalletKeysOK from a JSON string
list_wallet_keys_ok_instance = ListWalletKeysOK.from_json(json)
# print the JSON string representation of the object
print ListWalletKeysOK.to_json()

# convert the object into a dict
list_wallet_keys_ok_dict = list_wallet_keys_ok_instance.to_dict()
# create an instance of ListWalletKeysOK from a dict
list_wallet_keys_ok_from_dict = ListWalletKeysOK.from_dict(list_wallet_keys_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
