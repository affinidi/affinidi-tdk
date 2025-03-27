# CreateAccountInput

## Properties

| Name              | Type      | Description                                           | Notes |
| ----------------- | --------- | ----------------------------------------------------- | ----- |
| **account_index** | **float** | number that is used for profile DID derivation        |
| **profile_did**   | **str**   | DID that is associated with the account number        |
| **did_proof**     | **str**   | JWT that proves ownership of profile DID by requester |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.create_account_input import CreateAccountInput

# TODO update the JSON string below
json = "{}"
# create an instance of CreateAccountInput from a JSON string
create_account_input_instance = CreateAccountInput.from_json(json)
# print the JSON string representation of the object
print CreateAccountInput.to_json()

# convert the object into a dict
create_account_input_dict = create_account_input_instance.to_dict()
# create an instance of CreateAccountInput from a dict
create_account_input_from_dict = CreateAccountInput.from_dict(create_account_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
