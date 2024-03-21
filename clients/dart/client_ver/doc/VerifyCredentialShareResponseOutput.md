# openapi.model.VerifyCredentialShareResponseOutput

## Load the model package

```dart
import 'package:openapi/api.dart';
```

## Properties

| Name                    | Type                          | Description                       | Notes                 |
| ----------------------- | ----------------------------- | --------------------------------- | --------------------- |
| **jti**                 | **String**                    | JWT ID                            |
| **errors**              | **List<String>**              | Errors of the failed verification | [default to const []] |
| **issuer**              | **String**                    | Issuer of VCs                     |
| **isValid**             | **bool**                      | Verification result               |
| **suppliedCredentials** | [**List<Object>**](Object.md) | Supplied credentials              | [default to const []] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
