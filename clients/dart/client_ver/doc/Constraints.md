# openapi.model.Constraints

## Load the model package

```dart
import 'package:openapi/api.dart';
```

## Properties

| Name                | Type                                              | Description | Notes                            |
| ------------------- | ------------------------------------------------- | ----------- | -------------------------------- |
| **limitDisclosure** | **String**                                        |             | [optional]                       |
| **statuses**        | [**ConstraintsStatuses**](ConstraintsStatuses.md) |             | [optional]                       |
| **fields**          | [**List<Field>**](Field.md)                       |             | [optional] [default to const []] |
| **subjectIsIssuer** | **String**                                        |             | [optional]                       |
| **isHolder**        | [**List<HolderSubject>**](HolderSubject.md)       |             | [optional] [default to const []] |
| **sameSubject**     | [**List<HolderSubject>**](HolderSubject.md)       |             | [optional] [default to const []] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
