# ValidateJwtInput

Request model of /validate-jwt

## Properties

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **token** | **str** | JWT token   |

## Example

```python
from affinidi_tdk_credential_verification_client.models.validate_jwt_input import ValidateJwtInput

# TODO update the JSON string below
json = "{}"
# create an instance of ValidateJwtInput from a JSON string
validate_jwt_input_instance = ValidateJwtInput.from_json(json)
# print the JSON string representation of the object
print ValidateJwtInput.to_json()

# convert the object into a dict
validate_jwt_input_dict = validate_jwt_input_instance.to_dict()
# create an instance of ValidateJwtInput from a dict
validate_jwt_input_from_dict = ValidateJwtInput.from_dict(validate_jwt_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
