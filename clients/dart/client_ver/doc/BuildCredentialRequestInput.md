# openapi.model.BuildCredentialRequestInput

## Load the model package

```dart
import 'package:openapi/api.dart';
```

## Properties

| Name                       | Type                                                          | Description              | Notes                 |
| -------------------------- | ------------------------------------------------------------- | ------------------------ | --------------------- |
| **callbackUrl**            | **String**                                                    | Type of the URL          | [optional]            |
| **credentialRequirements** | [**List<CredentialRequirements>**](CredentialRequirements.md) | Requirements of the VC   | [default to const []] |
| **issuerDid**              | **String**                                                    | Type of the DID          | [optional]            |
| **subjectDid**             | **String**                                                    | Type of the DID          | [optional]            |
| **audienceDid**            | **String**                                                    | Type of the DID          | [optional]            |
| **expiresAt**              | **String**                                                    | Type of the Date ISO     | [optional]            |
| **nonce**                  | **String**                                                    | Credential request nonce | [optional]            |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
