# TokenDto

## Properties

| Name                     | Type                                                                | Description                                                 | Notes             |
| ------------------------ | ------------------------------------------------------------------- | ----------------------------------------------------------- | ----------------- |
| **id**                   | **UUID**                                                            | Token Id                                                    | [default to null] |
| **ari**                  | **String**                                                          | Token ARI                                                   | [default to null] |
| **ownerAri**             | **String**                                                          | The Token owner&#39;s ARI                                   | [default to null] |
| **name**                 | **String**                                                          | Owner defined Token display name                            | [default to null] |
| **authenticationMethod** | [**TokenAuthenticationMethodDto**](TokenAuthenticationMethodDto.md) |                                                             | [default to null] |
| **scopes**               | **List**                                                            | Scopes that will be assigned to the Token on authentication | [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
