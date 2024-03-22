# EmptyInput

## Properties

| Name            | Type    | Description | Notes      |
| --------------- | ------- | ----------- | ---------- |
| **empty_input** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_client_kms.models.empty_input import EmptyInput

# TODO update the JSON string below
json = "{}"
# create an instance of EmptyInput from a JSON string
empty_input_instance = EmptyInput.from_json(json)
# print the JSON string representation of the object
print EmptyInput.to_json()

# convert the object into a dict
empty_input_dict = empty_input_instance.to_dict()
# create an instance of EmptyInput from a dict
empty_input_form_dict = empty_input.from_dict(empty_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
