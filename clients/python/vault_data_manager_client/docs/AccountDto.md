# AccountDto

## Properties

| Name              | Type      | Description                                            | Notes |
| ----------------- | --------- | ------------------------------------------------------ | ----- |
| **account_index** | **float** | number that is used for profile DID derivation         |
| **account_did**   | **str**   | Profile DID that is associated with the account number |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.account_dto import AccountDto

# TODO update the JSON string below
json = "{}"
# create an instance of AccountDto from a JSON string
account_dto_instance = AccountDto.from_json(json)
# print the JSON string representation of the object
print AccountDto.to_json()

# convert the object into a dict
account_dto_dict = account_dto_instance.to_dict()
# create an instance of AccountDto from a dict
account_dto_from_dict = AccountDto.from_dict(account_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
