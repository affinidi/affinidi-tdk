# CreateTokenInput

## Properties

| Name                      | Type                                                                                    | Description | Notes      |
| ------------------------- | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**                  | **str**                                                                                 |             |
| **authentication_method** | [**TokenPrivateKeyAuthenticationMethodDto**](TokenPrivateKeyAuthenticationMethodDto.md) |             |
| **description**           | **str**                                                                                 |             | [optional] |

## Example

```python
from affinidi_tdk_iam_client.models.create_token_input import CreateTokenInput

# TODO update the JSON string below
json = "{}"
# create an instance of CreateTokenInput from a JSON string
create_token_input_instance = CreateTokenInput.from_json(json)
# print the JSON string representation of the object
print CreateTokenInput.to_json()

# convert the object into a dict
create_token_input_dict = create_token_input_instance.to_dict()
# create an instance of CreateTokenInput from a dict
create_token_input_from_dict = CreateTokenInput.from_dict(create_token_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
