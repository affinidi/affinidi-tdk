# FilesApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                        | HTTP request                                 | Description |
| --------------------------------------------- | -------------------------------------------- | ----------- |
| [**getScannedFileInfo**](#getscannedfileinfo) | **GET** /v1/scanned-files/{scannedFileJobId} |             |
| [**listScannedFiles**](#listscannedfiles)     | **GET** /v1/scanned-files/                   |             |
| [**startFileScan**](#startfilescan)           | **POST** /v1/nodes/{nodeId}/file/scan        |             |

# **getScannedFileInfo**

> GetScannedFileInfoOK getScannedFileInfo()

Get the details of a scanned file using the textract jobId

### Example

```typescript
import {
  FilesApi,
  Configuration,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new FilesApi(configuration)

let scannedFileJobId: string //Scanned file jobId. (default to undefined)
let exclusiveStartKey: string //The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. (optional) (default to undefined)

const { status, data } = await apiInstance.getScannedFileInfo(
  scannedFileJobId,
  exclusiveStartKey,
)
```

### Parameters

| Name                  | Type         | Description                                                                                                                                                    | Notes                            |
| --------------------- | ------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------- |
| **scannedFileJobId**  | [**string**] | Scanned file jobId.                                                                                                                                            | defaults to undefined            |
| **exclusiveStartKey** | [**string**] | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | (optional) defaults to undefined |

### Return type

**GetScannedFileInfoOK**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description          | Response headers                                                                                                  |
| ----------- | -------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | GetScannedFileInfoOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError      | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listScannedFiles**

> ListScannedFilesOK listScannedFiles()

List all the the scanned files with all the details, e.g. status and jobId

### Example

```typescript
import {
  FilesApi,
  Configuration,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new FilesApi(configuration)

const { status, data } = await apiInstance.listScannedFiles()
```

### Parameters

This endpoint does not have any parameters.

### Return type

**ListScannedFilesOK**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description        | Response headers                                                                                                  |
| ----------- | ------------------ | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | ListScannedFilesOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError    | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startFileScan**

> StartFileScanOK startFileScan(startFileScanInput)

Start a scan of the file under this node and provide a textract job

### Example

```typescript
import {
  FilesApi,
  Configuration,
  StartFileScanInput,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new FilesApi(configuration)

let nodeId: string //Description for nodeId. (default to undefined)
let startFileScanInput: StartFileScanInput //StartFileScan

const { status, data } = await apiInstance.startFileScan(
  nodeId,
  startFileScanInput,
)
```

### Parameters

| Name                   | Type                   | Description             | Notes                 |
| ---------------------- | ---------------------- | ----------------------- | --------------------- |
| **startFileScanInput** | **StartFileScanInput** | StartFileScan           |                       |
| **nodeId**             | [**string**]           | Description for nodeId. | defaults to undefined |

### Return type

**StartFileScanOK**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | StartFileScanOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
