# affinidi_tdk_credential_issuance_client.model.CredentialResponse

## Load the model package

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
```

## Properties

| Name                | Type                                                                                  | Description                                                                                                                                                          | Notes |
| ------------------- | ------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| **credential**      | [**CredentialResponseImmediateCredential**](CredentialResponseImmediateCredential.md) |                                                                                                                                                                      |
| **cNonce**          | **String**                                                                            | String containing a nonce to be used when creating a proof of possession of the key proof                                                                            |
| **cNonceExpiresIn** | **int**                                                                               | Lifetime in seconds of the c_nonce                                                                                                                                   |
| **transactionId**   | **String**                                                                            | String identifying a Deferred Issuance transaction. This claim is contained in the response if the Credential Issuer was unable to immediately issue the Credential. |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
