# affinidi_tdk_iam_client.model.TokenDto

## Load the model package

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
```

## Properties

| Name                     | Type                                                                                    | Description                                                 | Notes |
| ------------------------ | --------------------------------------------------------------------------------------- | ----------------------------------------------------------- | ----- |
| **id**                   | **String**                                                                              | Token Id                                                    |
| **ari**                  | **String**                                                                              | Token ARI                                                   |
| **ownerAri**             | **String**                                                                              | The Token owner's ARI                                       |
| **name**                 | **String**                                                                              | Owner defined Token display name                            |
| **authenticationMethod** | [**TokenPrivateKeyAuthenticationMethodDto**](TokenPrivateKeyAuthenticationMethodDto.md) |                                                             |
| **scopes**               | **BuiltList&lt;String&gt;**                                                             | Scopes that will be assigned to the Token on authentication |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
