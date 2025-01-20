# GetConfigOK

## Properties

| Name                 | Type      | Description | Notes |
| -------------------- | --------- | ----------- | ----- |
| **profile_name**     | **str**   |             |
| **maximum_profiles** | **float** |             |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.get_config_ok import GetConfigOK

# TODO update the JSON string below
json = "{}"
# create an instance of GetConfigOK from a JSON string
get_config_ok_instance = GetConfigOK.from_json(json)
# print the JSON string representation of the object
print GetConfigOK.to_json()

# convert the object into a dict
get_config_ok_dict = get_config_ok_instance.to_dict()
# create an instance of GetConfigOK from a dict
get_config_ok_from_dict = GetConfigOK.from_dict(get_config_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
