# WalletsListDto

list of wallets

## Properties

| Name        | Type                                | Description | Notes      |
| ----------- | ----------------------------------- | ----------- | ---------- |
| **wallets** | [**List[WalletDto]**](WalletDto.md) |             | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.wallets_list_dto import WalletsListDto

# TODO update the JSON string below
json = "{}"
# create an instance of WalletsListDto from a JSON string
wallets_list_dto_instance = WalletsListDto.from_json(json)
# print the JSON string representation of the object
print WalletsListDto.to_json()

# convert the object into a dict
wallets_list_dto_dict = wallets_list_dto_instance.to_dict()
# create an instance of WalletsListDto from a dict
wallets_list_dto_from_dict = WalletsListDto.from_dict(wallets_list_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
