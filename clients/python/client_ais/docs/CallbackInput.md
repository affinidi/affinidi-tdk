# CallbackInput

## Properties

| Name                        | Type    | Description | Notes |
| --------------------------- | ------- | ----------- | ----- |
| **state**                   | **str** |             |
| **presentation_submission** | **str** |             |
| **vp_token**                | **str** |             |

## Example

```python
from affinidi_tdk_client_ais.models.callback_input import CallbackInput

# TODO update the JSON string below
json = "{}"
# create an instance of CallbackInput from a JSON string
callback_input_instance = CallbackInput.from_json(json)
# print the JSON string representation of the object
print CallbackInput.to_json()

# convert the object into a dict
callback_input_dict = callback_input_instance.to_dict()
# create an instance of CallbackInput from a dict
callback_input_form_dict = callback_input.from_dict(callback_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
