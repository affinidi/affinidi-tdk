# OAuth2Token

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
from affinidi_tdk_login_configuration_client.models.o_auth2_token import OAuth2Token

# TODO update the JSON string below
json = "{}"
# create an instance of OAuth2Token from a JSON string
o_auth2_token_instance = OAuth2Token.from_json(json)
# print the JSON string representation of the object
print OAuth2Token.to_json()

# convert the object into a dict
o_auth2_token_dict = o_auth2_token_instance.to_dict()
# create an instance of OAuth2Token from a dict
o_auth2_token_form_dict = o_auth2_token.from_dict(o_auth2_token_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
