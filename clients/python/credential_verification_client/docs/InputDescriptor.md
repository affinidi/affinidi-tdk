# InputDescriptor

## Properties

| Name            | Type                              | Description | Notes      |
| --------------- | --------------------------------- | ----------- | ---------- |
| **id**          | **str**                           |             |
| **constraints** | [**Constraints**](Constraints.md) |             |
| **name**        | **str**                           |             | [optional] |
| **purpose**     | **str**                           |             | [optional] |
| **format**      | [**Format**](Format.md)           |             | [optional] |
| **group**       | **List[str]**                     |             | [optional] |

## Example

```python
from affinidi_tdk_credential_verification_client.models.input_descriptor import InputDescriptor

# TODO update the JSON string below
json = "{}"
# create an instance of InputDescriptor from a JSON string
input_descriptor_instance = InputDescriptor.from_json(json)
# print the JSON string representation of the object
print InputDescriptor.to_json()

# convert the object into a dict
input_descriptor_dict = input_descriptor_instance.to_dict()
# create an instance of InputDescriptor from a dict
input_descriptor_form_dict = input_descriptor.from_dict(input_descriptor_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
