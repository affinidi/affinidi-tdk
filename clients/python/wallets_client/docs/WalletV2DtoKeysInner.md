# WalletV2DtoKeysInner

## Properties

| Name              | Type    | Description                                              | Notes      |
| ----------------- | ------- | -------------------------------------------------------- | ---------- |
| **key_id**        | **str** | wallet-scoped key identifier (e.g., \&quot;key-1\&quot;) |
| **kms_key_id**    | **str** | id of the key in KMS                                     |
| **kms_key_ari**   | **str** | ari of the key in KMS                                    |
| **kms_key_type**  | **str** | type of the key in KMS                                   |
| **relationships** | **str** | comma separated relationships                            | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.wallet_v2_dto_keys_inner import WalletV2DtoKeysInner

# TODO update the JSON string below
json = "{}"
# create an instance of WalletV2DtoKeysInner from a JSON string
wallet_v2_dto_keys_inner_instance = WalletV2DtoKeysInner.from_json(json)
# print the JSON string representation of the object
print WalletV2DtoKeysInner.to_json()

# convert the object into a dict
wallet_v2_dto_keys_inner_dict = wallet_v2_dto_keys_inner_instance.to_dict()
# create an instance of WalletV2DtoKeysInner from a dict
wallet_v2_dto_keys_inner_from_dict = WalletV2DtoKeysInner.from_dict(wallet_v2_dto_keys_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
