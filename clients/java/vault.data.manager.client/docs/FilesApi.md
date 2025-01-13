# FilesApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                                   | HTTP request                                 | Description |
| -------------------------------------------------------- | -------------------------------------------- | ----------- |
| [**getScannedFileInfo**](FilesApi.md#getScannedFileInfo) | **GET** /v1/scanned-files/{scannedFileJobId} |             |
| [**listScannedFiles**](FilesApi.md#listScannedFiles)     | **GET** /v1/scanned-files/                   |             |
| [**startFileScan**](FilesApi.md#startFileScan)           | **POST** /v1/nodes/{nodeId}/file/scan        |             |

## getScannedFileInfo

> GetScannedFileInfoOK getScannedFileInfo(scannedFileJobId, exclusiveStartKey)

Get the details of a scanned file using the textract jobId

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.FilesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        FilesApi apiInstance = new FilesApi(defaultClient);
        String scannedFileJobId = "scannedFileJobId_example"; // String | Scanned file jobId.
        String exclusiveStartKey = "exclusiveStartKey_example"; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
        try {
            GetScannedFileInfoOK result = apiInstance.getScannedFileInfo(scannedFileJobId, exclusiveStartKey);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling FilesApi#getScannedFileInfo");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                  | Type       | Description                                                                                                                                                    | Notes      |
| --------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **scannedFileJobId**  | **String** | Scanned file jobId.                                                                                                                                            |            |
| **exclusiveStartKey** | **String** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |

### Return type

[**GetScannedFileInfoOK**](GetScannedFileInfoOK.md)

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

## listScannedFiles

> ListScannedFilesOK listScannedFiles()

List all the the scanned files with all the details, e.g. status and jobId

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.FilesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        FilesApi apiInstance = new FilesApi(defaultClient);
        try {
            ListScannedFilesOK result = apiInstance.listScannedFiles();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling FilesApi#listScannedFiles");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
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

### HTTP response details

| Status code | Description        | Response headers                                                                                                  |
| ----------- | ------------------ | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | ListScannedFilesOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError    | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

## startFileScan

> StartFileScanOK startFileScan(nodeId, startFileScanInput)

Start a scan of the file under this node and provide a textract job

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.FilesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        FilesApi apiInstance = new FilesApi(defaultClient);
        String nodeId = "nodeId_example"; // String | Description for nodeId.
        StartFileScanInput startFileScanInput = new StartFileScanInput(); // StartFileScanInput | StartFileScan
        try {
            StartFileScanOK result = apiInstance.startFileScan(nodeId, startFileScanInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling FilesApi#startFileScan");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                   | Type                                            | Description             | Notes |
| ---------------------- | ----------------------------------------------- | ----------------------- | ----- |
| **nodeId**             | **String**                                      | Description for nodeId. |       |
| **startFileScanInput** | [**StartFileScanInput**](StartFileScanInput.md) | StartFileScan           |       |

### Return type

[**StartFileScanOK**](StartFileScanOK.md)

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
