# WalletDtoKeysInner

## Properties

| Name    | Type    | Description       | Notes      |
| ------- | ------- | ----------------- | ---------- |
| **id**  | **str** | id of linked key  | [optional] |
| **ari** | **str** | ari of linked key | [optional] |

## Example

```python
from affinidi_tdk_client_cwe.models.wallet_dto_keys_inner import WalletDtoKeysInner

# TODO update the JSON string below
json = "{}"
# create an instance of WalletDtoKeysInner from a JSON string
wallet_dto_keys_inner_instance = WalletDtoKeysInner.from_json(json)
# print the JSON string representation of the object
print WalletDtoKeysInner.to_json()

# convert the object into a dict
wallet_dto_keys_inner_dict = wallet_dto_keys_inner_instance.to_dict()
# create an instance of WalletDtoKeysInner from a dict
wallet_dto_keys_inner_form_dict = wallet_dto_keys_inner.from_dict(wallet_dto_keys_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
