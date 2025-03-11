# ListAccountsDto

## Properties

| Name      | Type                                  | Description | Notes      |
| --------- | ------------------------------------- | ----------- | ---------- |
| **nodes** | [**List[AccountDto]**](AccountDto.md) |             | [optional] |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.list_accounts_dto import ListAccountsDto

# TODO update the JSON string below
json = "{}"
# create an instance of ListAccountsDto from a JSON string
list_accounts_dto_instance = ListAccountsDto.from_json(json)
# print the JSON string representation of the object
print ListAccountsDto.to_json()

# convert the object into a dict
list_accounts_dto_dict = list_accounts_dto_instance.to_dict()
# create an instance of ListAccountsDto from a dict
list_accounts_dto_from_dict = ListAccountsDto.from_dict(list_accounts_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
