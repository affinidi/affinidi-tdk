# CreateAccountWithProfileInput

## Properties

| Name                    | Type                        | Description                                                          | Notes      |
| ----------------------- | --------------------------- | -------------------------------------------------------------------- | ---------- |
| **account_index**       | **float**                   | number that is used for profile DID derivation                       |
| **account_did**         | **str**                     | DID that is associated with the account number                       |
| **did_proof**           | **str**                     | JWT that proves ownership of profile DID by requester                |
| **alias**               | **str**                     | Alias of account                                                     | [optional] |
| **account_metadata**    | **object**                  | Metadata of account                                                  | [optional] |
| **account_description** | **str**                     | Description of account                                               | [optional] |
| **profile_name**        | **str**                     | Name of the profile node                                             |
| **profile_description** | **str**                     | Description of the profile node                                      | [optional] |
| **profile_metadata**    | **object**                  | Metadata of the profile                                              | [optional] |
| **edek_info**           | [**EdekInfo**](EdekInfo.md) |                                                                      |
| **dek**                 | **str**                     | A base64 encoded data encryption key, encrypted using VFS public key |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.create_account_with_profile_input import CreateAccountWithProfileInput

# TODO update the JSON string below
json = "{}"
# create an instance of CreateAccountWithProfileInput from a JSON string
create_account_with_profile_input_instance = CreateAccountWithProfileInput.from_json(json)
# print the JSON string representation of the object
print CreateAccountWithProfileInput.to_json()

# convert the object into a dict
create_account_with_profile_input_dict = create_account_with_profile_input_instance.to_dict()
# create an instance of CreateAccountWithProfileInput from a dict
create_account_with_profile_input_from_dict = CreateAccountWithProfileInput.from_dict(create_account_with_profile_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
