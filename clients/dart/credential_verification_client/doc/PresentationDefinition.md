# affinidi_tdk_credential_verification_client.model.PresentationDefinition

## Load the model package

```dart
import 'package:affinidi_tdk_credential_verification_client/api.dart';
```

## Properties

| Name                       | Type                                                        | Description        | Notes                            |
| -------------------------- | ----------------------------------------------------------- | ------------------ | -------------------------------- |
| **id**                     | **String**                                                  | Definition id      |
| **name**                   | **String**                                                  | Definition name    | [optional]                       |
| **purpose**                | **String**                                                  | Definition purpose | [optional]                       |
| **format**                 | [**Format**](Format.md)                                     |                    | [optional]                       |
| **submissionRequirements** | [**List<SubmissionRequirement>**](SubmissionRequirement.md) |                    | [optional] [default to const []] |
| **inputDescriptors**       | [**List<InputDescriptor>**](InputDescriptor.md)             |                    | [default to const []]            |
| **frame**                  | [**FreeFormObject**](FreeFormObject.md)                     |                    | [optional]                       |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
