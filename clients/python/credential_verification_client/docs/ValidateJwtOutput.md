# ValidateJwtOutput

Response model of /validate-jwt

## Properties

| Name         | Type       | Description                  | Notes |
| ------------ | ---------- | ---------------------------- | ----- |
| **is_valid** | **bool**   | Defines if jwt is valid      |
| **payload**  | **object** | Decoded payload of the token |

## Example

```python
from affinidi_tdk_credential_verification_client.models.validate_jwt_output import ValidateJwtOutput

# TODO update the JSON string below
json = "{}"
# create an instance of ValidateJwtOutput from a JSON string
validate_jwt_output_instance = ValidateJwtOutput.from_json(json)
# print the JSON string representation of the object
print ValidateJwtOutput.to_json()

# convert the object into a dict
validate_jwt_output_dict = validate_jwt_output_instance.to_dict()
# create an instance of ValidateJwtOutput from a dict
validate_jwt_output_from_dict = ValidateJwtOutput.from_dict(validate_jwt_output_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
