# affinidi_tdk_vault_data_manager_client.FilesApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                                         | HTTP request                                 | Description |
| -------------------------------------------------------------- | -------------------------------------------- | ----------- |
| [**get_scanned_file_info**](FilesApi.md#get_scanned_file_info) | **GET** /v1/scanned-files/{scannedFileJobId} |
| [**list_scanned_files**](FilesApi.md#list_scanned_files)       | **GET** /v1/scanned-files/                   |
| [**start_file_scan**](FilesApi.md#start_file_scan)             | **POST** /v1/nodes/{nodeId}/file/scan        |

# **get_scanned_file_info**

> GetScannedFileInfoOK get_scanned_file_info(scanned_file_job_id, exclusive_start_key=exclusive_start_key)

Get the details of a scanned file using the textract jobId

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_vault_data_manager_client
from affinidi_tdk_vault_data_manager_client.models.get_scanned_file_info_ok import GetScannedFileInfoOK
from affinidi_tdk_vault_data_manager_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vault.affinidi.com/vfs
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_vault_data_manager_client.Configuration(
    host = "https://api.vault.affinidi.com/vfs"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ConsumerTokenAuth
configuration.api_key['ConsumerTokenAuth'] = os.environ["API_KEY"]

# Configure a hook to auto-refresh API key for your personal access token (PAT), if expired
import affinidi_tdk_auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
  tokenId,
}
authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)
configuration.refresh_api_key_hook = lambda api_client: authProvider.fetch_project_scoped_token()

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ConsumerTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_vault_data_manager_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_vault_data_manager_client.FilesApi(api_client)
    scanned_file_job_id = 'scanned_file_job_id_example' # str | Scanned file jobId.
    exclusive_start_key = 'exclusive_start_key_example' # str | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. (optional)

    try:
        api_response = api_instance.get_scanned_file_info(scanned_file_job_id, exclusive_start_key=exclusive_start_key)
        print("The response of FilesApi->get_scanned_file_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FilesApi->get_scanned_file_info: %s\n" % e)
```

### Parameters

| Name                    | Type    | Description                                                                                                                                                    | Notes      |
| ----------------------- | ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **scanned_file_job_id** | **str** | Scanned file jobId.                                                                                                                                            |
| **exclusive_start_key** | **str** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_scanned_files**

> ListScannedFilesOK list_scanned_files()

List all the the scanned files with all the details, e.g. status and jobId

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_vault_data_manager_client
from affinidi_tdk_vault_data_manager_client.models.list_scanned_files_ok import ListScannedFilesOK
from affinidi_tdk_vault_data_manager_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vault.affinidi.com/vfs
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_vault_data_manager_client.Configuration(
    host = "https://api.vault.affinidi.com/vfs"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ConsumerTokenAuth
configuration.api_key['ConsumerTokenAuth'] = os.environ["API_KEY"]

# Configure a hook to auto-refresh API key for your personal access token (PAT), if expired
import affinidi_tdk_auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
  tokenId,
}
authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)
configuration.refresh_api_key_hook = lambda api_client: authProvider.fetch_project_scoped_token()

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ConsumerTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_vault_data_manager_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_vault_data_manager_client.FilesApi(api_client)

    try:
        api_response = api_instance.list_scanned_files()
        print("The response of FilesApi->list_scanned_files:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FilesApi->list_scanned_files: %s\n" % e)
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **start_file_scan**

> StartFileScanOK start_file_scan(node_id, start_file_scan_input)

Start a scan of the file under this node and provide a textract job

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_vault_data_manager_client
from affinidi_tdk_vault_data_manager_client.models.start_file_scan_input import StartFileScanInput
from affinidi_tdk_vault_data_manager_client.models.start_file_scan_ok import StartFileScanOK
from affinidi_tdk_vault_data_manager_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vault.affinidi.com/vfs
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_vault_data_manager_client.Configuration(
    host = "https://api.vault.affinidi.com/vfs"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ConsumerTokenAuth
configuration.api_key['ConsumerTokenAuth'] = os.environ["API_KEY"]

# Configure a hook to auto-refresh API key for your personal access token (PAT), if expired
import affinidi_tdk_auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
  tokenId,
}
authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)
configuration.refresh_api_key_hook = lambda api_client: authProvider.fetch_project_scoped_token()

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ConsumerTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_vault_data_manager_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_vault_data_manager_client.FilesApi(api_client)
    node_id = 'node_id_example' # str | Description for nodeId.
    start_file_scan_input = affinidi_tdk_vault_data_manager_client.StartFileScanInput() # StartFileScanInput | StartFileScan

    try:
        api_response = api_instance.start_file_scan(node_id, start_file_scan_input)
        print("The response of FilesApi->start_file_scan:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FilesApi->start_file_scan: %s\n" % e)
```

### Parameters

| Name                      | Type                                            | Description             | Notes |
| ------------------------- | ----------------------------------------------- | ----------------------- | ----- |
| **node_id**               | **str**                                         | Description for nodeId. |
| **start_file_scan_input** | [**StartFileScanInput**](StartFileScanInput.md) | StartFileScan           |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
