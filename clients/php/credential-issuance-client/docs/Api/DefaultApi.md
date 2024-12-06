# OpenAPI\Client\DefaultApi

All URIs are relative to https://apse1.api.affinidi.io/cis, except if the operation defines another base path.

| Method                                                                 | HTTP request                                                                            | Description                   |
| ---------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | ----------------------------- |
| [**changeCredentialSatatus()**](DefaultApi.md#changeCredentialSatatus) | **POST** /v1/{projectId}/configurations/{configurationId}/issuance/change-status        | change credential status.     |
| [**getStatusList()**](DefaultApi.md#getStatusList)                     | **GET** /v1/{projectId}/status-list/{statusListId}                                      | Return status list credential |
| [**listIssuanceDataRecords()**](DefaultApi.md#listIssuanceDataRecords) | **GET** /v1/{projectId}/configurations/{configurationId}/issuance/issuance-data-records | List records                  |

## `changeCredentialSatatus()`

```php
changeCredentialSatatus($project_id, $configuration_id): \OpenAPI\Client\Model\FlowData
```

change credential status.

change credential status.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 'project_id_example'; // string | project id
$configuration_id = 'configuration_id_example'; // string | configuration id

try {
    $result = $apiInstance->changeCredentialSatatus($project_id, $configuration_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->changeCredentialSatatus: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                 | Type       | Description      | Notes |
| -------------------- | ---------- | ---------------- | ----- |
| **project_id**       | **string** | project id       |       |
| **configuration_id** | **string** | configuration id |       |

### Return type

[**\OpenAPI\Client\Model\FlowData**](../Model/FlowData.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getStatusList()`

```php
getStatusList($project_id, $status_list_id): \OpenAPI\Client\Model\GetStatusListResultDto
```

Return status list credential

Return status list credential

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$project_id = 'project_id_example'; // string
$status_list_id = 'status_list_id_example'; // string | id of the status list

try {
    $result = $apiInstance->getStatusList($project_id, $status_list_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getStatusList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name               | Type       | Description           | Notes |
| ------------------ | ---------- | --------------------- | ----- |
| **project_id**     | **string** |                       |       |
| **status_list_id** | **string** | id of the status list |       |

### Return type

[**\OpenAPI\Client\Model\GetStatusListResultDto**](../Model/GetStatusListResultDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listIssuanceDataRecords()`

```php
listIssuanceDataRecords($limit, $exclusive_start_key): \OpenAPI\Client\Model\ListIssuanceRecordResponse
```

List records

Retrieve a list of issuance data records.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$limit = 10; // int | Maximum number of records to fetch in a list
$exclusive_start_key = 'exclusive_start_key_example'; // string | exclusiveStartKey for retrieving the next batch of data.

try {
    $result = $apiInstance->listIssuanceDataRecords($limit, $exclusive_start_key);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->listIssuanceDataRecords: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                    | Type       | Description                                              | Notes                      |
| ----------------------- | ---------- | -------------------------------------------------------- | -------------------------- |
| **limit**               | **int**    | Maximum number of records to fetch in a list             | [optional] [default to 10] |
| **exclusive_start_key** | **string** | exclusiveStartKey for retrieving the next batch of data. | [optional]                 |

### Return type

[**\OpenAPI\Client\Model\ListIssuanceRecordResponse**](../Model/ListIssuanceRecordResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
