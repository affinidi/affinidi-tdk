# IdTokenMappingInner

## Properties

| Name                    | Type    | Description                                                 | Notes      |
| ----------------------- | ------- | ----------------------------------------------------------- | ---------- |
| **source_field**        | **str** | Name(path) of the corresponding field in the vp_token       |
| **id_token_claim**      | **str** | Name of the corresponding field in the id_token             |
| **input_descriptor_id** | **str** | Id of related input descriptor from presentation definition | [optional] |

## Example

```python
from affinidi_tdk_login_configuration_client.models.id_token_mapping_inner import IdTokenMappingInner

# TODO update the JSON string below
json = "{}"
# create an instance of IdTokenMappingInner from a JSON string
id_token_mapping_inner_instance = IdTokenMappingInner.from_json(json)
# print the JSON string representation of the object
print IdTokenMappingInner.to_json()

# convert the object into a dict
id_token_mapping_inner_dict = id_token_mapping_inner_instance.to_dict()
# create an instance of IdTokenMappingInner from a dict
id_token_mapping_inner_from_dict = IdTokenMappingInner.from_dict(id_token_mapping_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
