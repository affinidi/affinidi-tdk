# EdekInfo

A base64 encoded data encryption key, encrypted with consumer DEKEK, required for node types [FILE, PROFILE]

## Properties

| Name         | Type    | Description | Notes |
| ------------ | ------- | ----------- | ----- |
| **edek**     | **str** |             |
| **dekek_id** | **str** |             |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.edek_info import EdekInfo

# TODO update the JSON string below
json = "{}"
# create an instance of EdekInfo from a JSON string
edek_info_instance = EdekInfo.from_json(json)
# print the JSON string representation of the object
print EdekInfo.to_json()

# convert the object into a dict
edek_info_dict = edek_info_instance.to_dict()
# create an instance of EdekInfo from a dict
edek_info_from_dict = EdekInfo.from_dict(edek_info_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
