# AuthorizationRequestDcql

## Properties

| Name           | Type    | Description                                                | Notes      |
| -------------- | ------- | ---------------------------------------------------------- | ---------- |
| **state**      | **str** | State parameter                                            |
| **dcql_query** | **str** | DCQL query to ask from the user. In JSON Stringify format. |
| **ari**        | **str** | ARI is used for analytics proposals.                       | [optional] |
| **client_id**  | **str** | clientId used for detect origin.                           | [optional] |
| **nonce**      | **str** | nonce for VP Token proof challenge                         | [optional] |

## Example

```python
from affinidi_tdk_login_configuration_client.models.authorization_request_dcql import AuthorizationRequestDcql

# TODO update the JSON string below
json = "{}"
# create an instance of AuthorizationRequestDcql from a JSON string
authorization_request_dcql_instance = AuthorizationRequestDcql.from_json(json)
# print the JSON string representation of the object
print AuthorizationRequestDcql.to_json()

# convert the object into a dict
authorization_request_dcql_dict = authorization_request_dcql_instance.to_dict()
# create an instance of AuthorizationRequestDcql from a dict
authorization_request_dcql_from_dict = AuthorizationRequestDcql.from_dict(authorization_request_dcql_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
