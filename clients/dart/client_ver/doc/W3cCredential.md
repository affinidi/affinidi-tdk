# openapi.model.W3cCredential

## Load the model package

```dart
import 'package:openapi/api.dart';
```

## Properties

| Name                  | Type                                                                    | Description | Notes                 |
| --------------------- | ----------------------------------------------------------------------- | ----------- | --------------------- |
| **atContext**         | [**W3cPresentationContext**](W3cPresentationContext.md)                 |             |
| **id**                | **String**                                                              |             | [optional]            |
| **type**              | **List<String>**                                                        |             | [default to const []] |
| **holder**            | [**W3cCredentialHolder**](W3cCredentialHolder.md)                       |             | [optional]            |
| **credentialSubject** | [**W3cCredentialCredentialSubject**](W3cCredentialCredentialSubject.md) |             |
| **credentialStatus**  | [**W3cCredentialStatus**](W3cCredentialStatus.md)                       |             | [optional]            |
| **issuanceDate**      | **String**                                                              |             |
| **issuer**            | **String**                                                              |             |
| **expirationDate**    | **String**                                                              |             | [optional]            |
| **proof**             | [**W3cProof**](W3cProof.md)                                             |             |
| **credentialSchema**  | [**W3cCredentialCredentialSchema**](W3cCredentialCredentialSchema.md)   |             | [optional]            |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
