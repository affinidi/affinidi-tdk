# affinidi_tdk_client_vpa.model.ServiceErrorResponse

## Load the model package

```dart
import 'package:affinidi_tdk_client_vpa/api.dart';
```

## Properties

| Name        | Type                                                                              | Description                                           | Notes                            |
| ----------- | --------------------------------------------------------------------------------- | ----------------------------------------------------- | -------------------------------- |
| **debugId** | **String**                                                                        | unique id for correlating this specific error to logs |
| **name**    | **String**                                                                        | name of the error                                     |
| **code**    | **String**                                                                        | backwards compatible Affinidi error code              |
| **details** | [**List<ServiceErrorResponseDetailsInner>**](ServiceErrorResponseDetailsInner.md) | error details                                         | [optional] [default to const []] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
