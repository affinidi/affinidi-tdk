# ConsumerAuthTokenEndpointOutput

## Properties

| Name              | Type    | Description                                                                                                                                                                            | Notes      |
| ----------------- | ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **access_token**  | **str** | The access token issued by the authorization server.                                                                                                                                   | [optional] |
| **expires_in**    | **int** | The lifetime in seconds of the access token. For example, the value \&quot;3600\&quot; denotes that the access token will expire in one hour from the time the response was generated. | [optional] |
| **id_token**      | **int** | To retrieve a refresh token request the id_token scope.                                                                                                                                | [optional] |
| **refresh_token** | **str** | The refresh token, which can be used to obtain new access tokens. To retrieve it add the scope \&quot;offline\&quot; to your access token request.                                     | [optional] |
| **scope**         | **str** | The scope of the access token                                                                                                                                                          | [optional] |
| **token_type**    | **str** | The type of the token issued                                                                                                                                                           | [optional] |

## Example

```python
from affinidi_tdk_client_iam.models.consumer_auth_token_endpoint_output import ConsumerAuthTokenEndpointOutput

# TODO update the JSON string below
json = "{}"
# create an instance of ConsumerAuthTokenEndpointOutput from a JSON string
consumer_auth_token_endpoint_output_instance = ConsumerAuthTokenEndpointOutput.from_json(json)
# print the JSON string representation of the object
print ConsumerAuthTokenEndpointOutput.to_json()

# convert the object into a dict
consumer_auth_token_endpoint_output_dict = consumer_auth_token_endpoint_output_instance.to_dict()
# create an instance of ConsumerAuthTokenEndpointOutput from a dict
consumer_auth_token_endpoint_output_form_dict = consumer_auth_token_endpoint_output.from_dict(consumer_auth_token_endpoint_output_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
