# NestedDescriptor

## Properties

| Name            | Type                                        | Description | Notes      |
| --------------- | ------------------------------------------- | ----------- | ---------- |
| **id**          | **str**                                     |             | [optional] |
| **path**        | **str**                                     |             |
| **path_nested** | [**NestedDescriptor**](NestedDescriptor.md) |             | [optional] |
| **format**      | **str**                                     |             |

## Example

```python
from affinidi_tdk_client_ver.models.nested_descriptor import NestedDescriptor

# TODO update the JSON string below
json = "{}"
# create an instance of NestedDescriptor from a JSON string
nested_descriptor_instance = NestedDescriptor.from_json(json)
# print the JSON string representation of the object
print NestedDescriptor.to_json()

# convert the object into a dict
nested_descriptor_dict = nested_descriptor_instance.to_dict()
# create an instance of NestedDescriptor from a dict
nested_descriptor_form_dict = nested_descriptor.from_dict(nested_descriptor_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
