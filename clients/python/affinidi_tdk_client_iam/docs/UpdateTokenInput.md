# UpdateTokenInput

## Properties

| Name                      | Type                                                                                                | Description | Notes      |
| ------------------------- | --------------------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**                  | **str**                                                                                             |             | [optional] |
| **authentication_method** | [**UpdateTokenPrivateKeyAuthenticationMethodDto**](UpdateTokenPrivateKeyAuthenticationMethodDto.md) |             | [optional] |

## Example

```python
from affinidi_tdk_client_iam.models.update_token_input import UpdateTokenInput

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateTokenInput from a JSON string
update_token_input_instance = UpdateTokenInput.from_json(json)
# print the JSON string representation of the object
print UpdateTokenInput.to_json()

# convert the object into a dict
update_token_input_dict = update_token_input_instance.to_dict()
# create an instance of UpdateTokenInput from a dict
update_token_input_form_dict = update_token_input.from_dict(update_token_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
