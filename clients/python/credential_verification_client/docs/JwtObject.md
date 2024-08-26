# JwtObject

## Properties

| Name    | Type          | Description                             | Notes |
| ------- | ------------- | --------------------------------------- | ----- |
| **alg** | **List[str]** | List of names of the the JWT Algorithms |

## Example

```python
from affinidi_tdk_credential_verification_client.models.jwt_object import JwtObject

# TODO update the JSON string below
json = "{}"
# create an instance of JwtObject from a JSON string
jwt_object_instance = JwtObject.from_json(json)
# print the JSON string representation of the object
print JwtObject.to_json()

# convert the object into a dict
jwt_object_dict = jwt_object_instance.to_dict()
# create an instance of JwtObject from a dict
jwt_object_from_dict = JwtObject.from_dict(jwt_object_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
