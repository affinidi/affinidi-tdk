# CreateAccountOK

## Properties

| Name              | Type    | Description | Notes |
| ----------------- | ------- | ----------- | ----- |
| **account_index** | **str** |             |
| **profile_did**   | **str** |             |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.create_account_ok import CreateAccountOK

# TODO update the JSON string below
json = "{}"
# create an instance of CreateAccountOK from a JSON string
create_account_ok_instance = CreateAccountOK.from_json(json)
# print the JSON string representation of the object
print CreateAccountOK.to_json()

# convert the object into a dict
create_account_ok_dict = create_account_ok_instance.to_dict()
# create an instance of CreateAccountOK from a dict
create_account_ok_from_dict = CreateAccountOK.from_dict(create_account_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
