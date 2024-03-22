# openapi.model.LoginConfigurationObject

## Load the model package

```dart
import 'package:openapi/api.dart';
```

## Properties

| Name                        | Type                                                                        | Description                            | Notes                            |
| --------------------------- | --------------------------------------------------------------------------- | -------------------------------------- | -------------------------------- |
| **ari**                     | **String**                                                                  | Configuration ari                      |
| **configurationId**         | **String**                                                                  | Configuration id                       | [optional]                       |
| **projectId**               | **String**                                                                  | Project id                             |
| **name**                    | **String**                                                                  | User defined login configuration name  |
| **redirectUris**            | **List<String>**                                                            | OAuth 2.0 Redirect URIs                | [optional] [default to const []] |
| **scope**                   | **String**                                                                  | OAuth 2.0 Client Scope                 | [optional]                       |
| **clientId**                | **String**                                                                  | OAuth 2.0 Client ID                    |
| **creationDate**            | **String**                                                                  | OAuth 2.0 Client Creation Date         |
| **vpDefinition**            | **String**                                                                  | VP definition in JSON stringify format |
| **presentationDefinition**  | [**Object**](.md)                                                           | Presentation Definition                | [optional]                       |
| **clientMetadata**          | [**LoginConfigurationClientMetadata**](LoginConfigurationClientMetadata.md) |                                        |
| **tokenEndpointAuthMethod** | [**TokenEndpointAuthMethod**](TokenEndpointAuthMethod.md)                   |                                        |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
