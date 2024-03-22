# openapi.model.TokenDto

## Load the model package

```dart
import 'package:openapi/api.dart';
```

## Properties

| Name                     | Type                                                                | Description                                                 | Notes                 |
| ------------------------ | ------------------------------------------------------------------- | ----------------------------------------------------------- | --------------------- |
| **id**                   | **String**                                                          | Token Id                                                    |
| **ari**                  | **String**                                                          | Token ARI                                                   |
| **ownerAri**             | **String**                                                          | The Token owner's ARI                                       |
| **name**                 | **String**                                                          | Owner defined Token display name                            |
| **authenticationMethod** | [**TokenAuthenticationMethodDto**](TokenAuthenticationMethodDto.md) |                                                             |
| **scopes**               | **List<String>**                                                    | Scopes that will be assigned to the Token on authentication | [default to const []] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
