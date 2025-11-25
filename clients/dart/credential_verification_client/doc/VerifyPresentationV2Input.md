# affinidi_tdk_credential_verification_client.model.VerifyPresentationV2Input

## Load the model package

```dart
import 'package:affinidi_tdk_credential_verification_client/api.dart';
```

## Properties

| Name                       | Type                                                                          | Description                                                                      | Notes      |
| -------------------------- | ----------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | ---------- |
| **verifiablePresentation** | [**JsonObject**](.md)                                                         |                                                                                  | [optional] |
| **pexQuery**               | [**VerifyPresentationV2InputPexQuery**](VerifyPresentationV2InputPexQuery.md) |                                                                                  | [optional] |
| **challenge**              | **String**                                                                    | Optional challenge string for domain/challenge verification                      | [optional] |
| **domain**                 | **BuiltList&lt;String&gt;**                                                   | Optional domain for verification. Array of domain strings as per W3C VP standard | [optional] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
