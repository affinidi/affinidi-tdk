# UpdateAccountInput

## Properties

| Name            | Type       | Description                                           | Notes      |
| --------------- | ---------- | ----------------------------------------------------- | ---------- |
| **name**        | **str**    | Name of the account                                   | [optional] |
| **description** | **str**    | Description of the account                            | [optional] |
| **alias**       | **str**    | Alias of the account                                  | [optional] |
| **did_proof**   | **str**    | JWT that proves ownership of profile DID by requester |
| **metadata**    | **object** | Description of metadata                               | [optional] |
| **account_did** | **str**    | DID that is associated with the account number        |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.update_account_input import UpdateAccountInput

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateAccountInput from a JSON string
update_account_input_instance = UpdateAccountInput.from_json(json)
# print the JSON string representation of the object
print UpdateAccountInput.to_json()

# convert the object into a dict
update_account_input_dict = update_account_input_instance.to_dict()
# create an instance of UpdateAccountInput from a dict
update_account_input_from_dict = UpdateAccountInput.from_dict(update_account_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
