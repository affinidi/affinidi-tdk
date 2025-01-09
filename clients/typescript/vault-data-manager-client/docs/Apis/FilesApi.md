# FilesApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                                   | HTTP request                                 | Description |
| -------------------------------------------------------- | -------------------------------------------- | ----------- |
| [**getScannedFileInfo**](FilesApi.md#getScannedFileInfo) | **GET** /v1/scanned-files/{scannedFileJobId} |             |
| [**listScannedFiles**](FilesApi.md#listScannedFiles)     | **GET** /v1/scanned-files/                   |             |
| [**startFileScan**](FilesApi.md#startFileScan)           | **POST** /v1/nodes/{nodeId}/file/scan        |             |

<a name="getScannedFileInfo"></a>

# **getScannedFileInfo**

> GetScannedFileInfoOK getScannedFileInfo(scannedFileJobId, exclusiveStartKey)

    Get the details of a scanned file using the textract jobId

### Parameters

| Name                  | Type       | Description                                                                                                                                                    | Notes                        |
| --------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **scannedFileJobId**  | **String** | Scanned file jobId.                                                                                                                                            | [default to null]            |
| **exclusiveStartKey** | **String** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] [default to null] |

### Return type

[**GetScannedFileInfoOK**](../Models/GetScannedFileInfoOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listScannedFiles"></a>

# **listScannedFiles**

> ListScannedFilesOK listScannedFiles()

    List all the the scanned files with all the details, e.g. status and jobId

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListScannedFilesOK**](../Models/ListScannedFilesOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="startFileScan"></a>

# **startFileScan**

> StartFileScanOK startFileScan(nodeId, StartFileScanInput)

    Start a scan of the file under this node and provide a textract job

### Parameters

| Name                   | Type                                                      | Description             | Notes             |
| ---------------------- | --------------------------------------------------------- | ----------------------- | ----------------- |
| **nodeId**             | **String**                                                | Description for nodeId. | [default to null] |
| **StartFileScanInput** | [**StartFileScanInput**](../Models/StartFileScanInput.md) | StartFileScan           |                   |

### Return type

[**StartFileScanOK**](../Models/StartFileScanOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
