# UpdateProfileDataInput

## Properties

| Name     | Type       | Description                                                                                                    | Notes |
| -------- | ---------- | -------------------------------------------------------------------------------------------------------------- | ----- |
| **dek**  | **str**    | A base64 encoded data encryption key, encrypted using VFS public key. This is used to get profile data from s3 |
| **data** | **object** |                                                                                                                |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.update_profile_data_input import UpdateProfileDataInput

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateProfileDataInput from a JSON string
update_profile_data_input_instance = UpdateProfileDataInput.from_json(json)
# print the JSON string representation of the object
print UpdateProfileDataInput.to_json()

# convert the object into a dict
update_profile_data_input_dict = update_profile_data_input_instance.to_dict()
# create an instance of UpdateProfileDataInput from a dict
update_profile_data_input_from_dict = UpdateProfileDataInput.from_dict(update_profile_data_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
