# affinidi_tdk_vault_data_manager_client.api.FilesApi

## Load the API package

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/vfs*

| Method                                                   | HTTP request                                 | Description |
| -------------------------------------------------------- | -------------------------------------------- | ----------- |
| [**getScannedFileInfo**](FilesApi.md#getscannedfileinfo) | **GET** /v1/scanned-files/{scannedFileJobId} |
| [**listScannedFiles**](FilesApi.md#listscannedfiles)     | **GET** /v1/scanned-files/                   |
| [**startFileScan**](FilesApi.md#startfilescan)           | **POST** /v1/nodes/{nodeId}/file/scan        |

# **getScannedFileInfo**

> GetScannedFileInfoOK getScannedFileInfo(scannedFileJobId, exclusiveStartKey)

Get the details of a scanned file using the textract jobId

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = FilesApi();
final scannedFileJobId = scannedFileJobId_example; // String | Scanned file jobId.
final exclusiveStartKey = exclusiveStartKey_example; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.

try {
    final result = api_instance.getScannedFileInfo(scannedFileJobId, exclusiveStartKey);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->getScannedFileInfo: $e\n');
}
```

### Parameters

| Name                  | Type       | Description                                                                                                                                                    | Notes      |
| --------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **scannedFileJobId**  | **String** | Scanned file jobId.                                                                                                                                            |
| **exclusiveStartKey** | **String** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |

### Return type

[**GetScannedFileInfoOK**](GetScannedFileInfoOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listScannedFiles**

> ListScannedFilesOK listScannedFiles()

List all the the scanned files with all the details, e.g. status and jobId

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = FilesApi();

try {
    final result = api_instance.listScannedFiles();
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->listScannedFiles: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListScannedFilesOK**](ListScannedFilesOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startFileScan**

> StartFileScanOK startFileScan(nodeId, startFileScanInput)

Start a scan of the file under this node and provide a textract job

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = FilesApi();
final nodeId = nodeId_example; // String | Description for nodeId.
final startFileScanInput = StartFileScanInput(); // StartFileScanInput | StartFileScan

try {
    final result = api_instance.startFileScan(nodeId, startFileScanInput);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->startFileScan: $e\n');
}
```

### Parameters

| Name                   | Type                                            | Description             | Notes |
| ---------------------- | ----------------------------------------------- | ----------------------- | ----- |
| **nodeId**             | **String**                                      | Description for nodeId. |
| **startFileScanInput** | [**StartFileScanInput**](StartFileScanInput.md) | StartFileScan           |

### Return type

[**StartFileScanOK**](StartFileScanOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
