# openapi.model.CreateLoginConfigurationOutput

## Load the model package

```dart
import 'package:openapi/api.dart';
```

## Properties

| Name                | Type                                                                            | Description                           | Notes                 |
| ------------------- | ------------------------------------------------------------------------------- | ------------------------------------- | --------------------- |
| **ari**             | **String**                                                                      | Configuration ari                     |
| **projectId**       | **String**                                                                      | Project id                            |
| **configurationId** | **String**                                                                      | Configuration id                      | [optional]            |
| **name**            | **String**                                                                      | User defined login configuration name |
| **auth**            | [**CreateLoginConfigurationOutputAuth**](CreateLoginConfigurationOutputAuth.md) |                                       |
| **redirectUris**    | **List<String>**                                                                | OAuth 2.0 Redirect URIs               | [default to const []] |
| **clientMetadata**  | [**LoginConfigurationClientMetadata**](LoginConfigurationClientMetadata.md)     |                                       |
| **creationDate**    | **String**                                                                      | OAuth 2.0 Client Creation Date        |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)