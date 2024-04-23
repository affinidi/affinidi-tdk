# OAuth2Token

## Properties

| Name              | Type        | Description                                                                                                                                                                            | Notes                        |
| ----------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **access_token**  | **String**  | The access token issued by the authorization server.                                                                                                                                   | [optional] [default to null] |
| **expires_in**    | **Integer** | The lifetime in seconds of the access token. For example, the value \&quot;3600\&quot; denotes that the access token will expire in one hour from the time the response was generated. | [optional] [default to null] |
| **id_token**      | **Integer** | To retrieve a refresh token request the id_token scope.                                                                                                                                | [optional] [default to null] |
| **refresh_token** | **String**  | The refresh token, which can be used to obtain new access tokens. To retrieve it add the scope \&quot;offline\&quot; to your access token request.                                     | [optional] [default to null] |
| **scope**         | **String**  | The scope of the access token                                                                                                                                                          | [optional] [default to null] |
| **token_type**    | **String**  | The type of the token issued                                                                                                                                                           | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
