# UpdateAccountDto

## Properties

| Name              | Type       | Description                                            | Notes      |
| ----------------- | ---------- | ------------------------------------------------------ | ---------- |
| **account_index** | **float**  |                                                        |
| **account_did**   | **str**    | Profile DID that is associated with the account number |
| **metadata**      | **object** |                                                        | [optional] |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.update_account_dto import UpdateAccountDto

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateAccountDto from a JSON string
update_account_dto_instance = UpdateAccountDto.from_json(json)
# print the JSON string representation of the object
print UpdateAccountDto.to_json()

# convert the object into a dict
update_account_dto_dict = update_account_dto_instance.to_dict()
# create an instance of UpdateAccountDto from a dict
update_account_dto_from_dict = UpdateAccountDto.from_dict(update_account_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
