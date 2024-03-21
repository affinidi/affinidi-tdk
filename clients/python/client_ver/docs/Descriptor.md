# Descriptor

## Properties

| Name            | Type                                        | Description | Notes      |
| --------------- | ------------------------------------------- | ----------- | ---------- |
| **id**          | **str**                                     |             |
| **path**        | **str**                                     |             |
| **path_nested** | [**NestedDescriptor**](NestedDescriptor.md) |             | [optional] |
| **format**      | **str**                                     |             |

## Example

```python
from affinidi_tdk_client_ver.models.descriptor import Descriptor

# TODO update the JSON string below
json = "{}"
# create an instance of Descriptor from a JSON string
descriptor_instance = Descriptor.from_json(json)
# print the JSON string representation of the object
print Descriptor.to_json()

# convert the object into a dict
descriptor_dict = descriptor_instance.to_dict()
# create an instance of Descriptor from a dict
descriptor_form_dict = descriptor.from_dict(descriptor_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
