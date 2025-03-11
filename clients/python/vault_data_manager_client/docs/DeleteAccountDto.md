# DeleteAccountDto

## Properties

| Name               | Type    | Description | Notes      |
| ------------------ | ------- | ----------- | ---------- |
| **account_number** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.delete_account_dto import DeleteAccountDto

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteAccountDto from a JSON string
delete_account_dto_instance = DeleteAccountDto.from_json(json)
# print the JSON string representation of the object
print DeleteAccountDto.to_json()

# convert the object into a dict
delete_account_dto_dict = delete_account_dto_instance.to_dict()
# create an instance of DeleteAccountDto from a dict
delete_account_dto_from_dict = DeleteAccountDto.from_dict(delete_account_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
