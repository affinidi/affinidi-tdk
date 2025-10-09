# AuthorizationRequestPex

## Properties

| Name                        | Type    | Description                                                             | Notes      |
| --------------------------- | ------- | ----------------------------------------------------------------------- | ---------- |
| **state**                   | **str** | State parameter                                                         |
| **presentation_definition** | **str** | Presentation Definition to ask from the user. In JSON Stringify format. |
| **ari**                     | **str** | ARI is used for analytics proposals.                                    | [optional] |
| **client_id**               | **str** | clientId used for detect origin.                                        | [optional] |
| **nonce**                   | **str** | nonce for VP Token proof challenge                                      | [optional] |

## Example

```python
from affinidi_tdk_login_configuration_client.models.authorization_request_pex import AuthorizationRequestPex

# TODO update the JSON string below
json = "{}"
# create an instance of AuthorizationRequestPex from a JSON string
authorization_request_pex_instance = AuthorizationRequestPex.from_json(json)
# print the JSON string representation of the object
print AuthorizationRequestPex.to_json()

# convert the object into a dict
authorization_request_pex_dict = authorization_request_pex_instance.to_dict()
# create an instance of AuthorizationRequestPex from a dict
authorization_request_pex_from_dict = AuthorizationRequestPex.from_dict(authorization_request_pex_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
