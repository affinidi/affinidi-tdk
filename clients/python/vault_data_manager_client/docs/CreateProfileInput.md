# CreateProfileInput

## Properties

| Name            | Type                        | Description                                                                                                   | Notes      |
| --------------- | --------------------------- | ------------------------------------------------------------------------------------------------------------- | ---------- |
| **name**        | **str**                     | Name of the item                                                                                              |
| **description** | **str**                     | description of profile                                                                                        | [optional] |
| **edek_info**   | [**EdekInfo**](EdekInfo.md) |                                                                                                               |
| **dek**         | **str**                     | A base64 encoded data encryption key, encrypted using VFS public key, required for node types [FILE, PROFILE] |
| **metadata**    | **str**                     | metadata of the node in stringified json format                                                               | [optional] |
| **subject_did** | **str**                     | DID to grant access to Profile                                                                                | [optional] |
| **rights**      | **List[str]**               | types of access to grant                                                                                      | [optional] |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.create_profile_input import CreateProfileInput

# TODO update the JSON string below
json = "{}"
# create an instance of CreateProfileInput from a JSON string
create_profile_input_instance = CreateProfileInput.from_json(json)
# print the JSON string representation of the object
print CreateProfileInput.to_json()

# convert the object into a dict
create_profile_input_dict = create_profile_input_instance.to_dict()
# create an instance of CreateProfileInput from a dict
create_profile_input_from_dict = CreateProfileInput.from_dict(create_profile_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
