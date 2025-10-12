# affinidi_tdk_iota_client.model.DcqlQueryDto

## Load the model package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

## Properties

| Name                 | Type       | Description                                                                                                                 | Notes |
| -------------------- | ---------- | --------------------------------------------------------------------------------------------------------------------------- | ----- |
| **ari**              | **String** | The unique resource identifier of the qeuery.                                                                               |
| **queryId**          | **String** | The ID of the query.                                                                                                        |
| **name**             | **String** | The name of the DCQL query to quickly identify the query.                                                                   |
| **description**      | **String** | An optional description of what the query is used for.                                                                      |
| **configurationAri** | **String** | The unique resource identifier of the related configuration where the query is defined.                                     |
| **dcqlQuery**        | **String** | The DCQL query describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format. |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
