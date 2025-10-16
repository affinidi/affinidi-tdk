# WalletV2Dto

wallet v2 dto

## Properties

| Name             | Type                                                  | Description                                   | Notes      |
| ---------------- | ----------------------------------------------------- | --------------------------------------------- | ---------- |
| **id**           | **str**                                               | id of the wallet in uuidV4 format             | [optional] |
| **did**          | **str**                                               | did of the wallet                             | [optional] |
| **name**         | **str**                                               | The name of the wallet                        | [optional] |
| **description**  | **str**                                               | The description of the wallet                 | [optional] |
| **did_document** | **object**                                            | did document of the wallet                    | [optional] |
| **ari**          | **str**                                               | ARI of the wallet                             | [optional] |
| **algorithm**    | **str**                                               | algorithm used to generate key for the wallet | [optional] |
| **keys**         | [**List[WalletDtoKeysInner]**](WalletDtoKeysInner.md) |                                               | [optional] |
| **created_at**   | **str**                                               |                                               | [optional] |
| **modified_at**  | **str**                                               |                                               | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.wallet_v2_dto import WalletV2Dto

# TODO update the JSON string below
json = "{}"
# create an instance of WalletV2Dto from a JSON string
wallet_v2_dto_instance = WalletV2Dto.from_json(json)
# print the JSON string representation of the object
print WalletV2Dto.to_json()

# convert the object into a dict
wallet_v2_dto_dict = wallet_v2_dto_instance.to_dict()
# create an instance of WalletV2Dto from a dict
wallet_v2_dto_from_dict = WalletV2Dto.from_dict(wallet_v2_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
