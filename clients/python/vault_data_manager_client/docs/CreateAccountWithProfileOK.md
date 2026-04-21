# CreateAccountWithProfileOK

## Properties

| Name                 | Type       | Description                                                | Notes      |
| -------------------- | ---------- | ---------------------------------------------------------- | ---------- |
| **account_index**    | **float**  |                                                            |
| **account_did**      | **str**    | number that is used for profile DID derivation             |
| **profile_id**       | **str**    | A unique, randomly generated identifier of created profile |
| **account_metadata** | **object** | Metadata of account                                        | [optional] |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.create_account_with_profile_ok import CreateAccountWithProfileOK

# TODO update the JSON string below
json = "{}"
# create an instance of CreateAccountWithProfileOK from a JSON string
create_account_with_profile_ok_instance = CreateAccountWithProfileOK.from_json(json)
# print the JSON string representation of the object
print CreateAccountWithProfileOK.to_json()

# convert the object into a dict
create_account_with_profile_ok_dict = create_account_with_profile_ok_instance.to_dict()
# create an instance of CreateAccountWithProfileOK from a dict
create_account_with_profile_ok_from_dict = CreateAccountWithProfileOK.from_dict(create_account_with_profile_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
