# LoginSessionDtoAuthorizationRequest

Authorization Request Object

## Properties

| Name                       | Type       | Description                                                             | Notes      |
| -------------------------- | ---------- | ----------------------------------------------------------------------- | ---------- |
| **state**                  | **String** | State parameter                                                         |            |
| **presentationDefinition** | **String** | Presentation Definition to ask from the user. In JSON Stringify format. |            |
| **ari**                    | **String** | ARI is used for analytics proposals.                                    | [optional] |
| **clientId**               | **String** | clientId used for detect origin.                                        | [optional] |
| **nonce**                  | **String** | nonce for VP Token proof challenge                                      | [optional] |
| **dcqlQuery**              | **String** | DCQL query to ask from the user. In JSON Stringify format.              |            |
