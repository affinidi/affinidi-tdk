# AffinidiTdk\Clients\CredentialIssuance\DefaultApi

All URIs are relative to https://apse1.api.affinidi.io/cis, except if the operation defines another base path.

| Method                                                                 | HTTP request                                                                            | Description               |
| ---------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | ------------------------- |
| [**changeCredentialStatus()**](DefaultApi.md#changeCredentialStatus)   | **POST** /v1/{projectId}/configurations/{configurationId}/issuance/change-status        | change credential status. |
| [**listIssuanceDataRecords()**](DefaultApi.md#listIssuanceDataRecords) | **GET** /v1/{projectId}/configurations/{configurationId}/issuance/issuance-data-records | List records              |

## `changeCredentialStatus()`

```php
changeCredentialStatus($project_id, $configuration_id): \AffinidiTdk\Clients\CredentialIssuance\Model\FlowData
```

change credential status.

change credential status.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\CredentialIssuance\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\CredentialIssuance\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\CredentialIssuance\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 'project_id_example'; // string | project id
$configuration_id = 'configuration_id_example'; // string | configuration id

try {
    $result = $apiInstance->changeCredentialStatus($project_id, $configuration_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->changeCredentialStatus: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                 | Type       | Description      | Notes |
| -------------------- | ---------- | ---------------- | ----- |
| **project_id**       | **string** | project id       |       |
| **configuration_id** | **string** | configuration id |       |

### Return type

[**\AffinidiTdk\Clients\CredentialIssuance\Model\FlowData**](../Model/FlowData.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listIssuanceDataRecords()`

```php
listIssuanceDataRecords($project_id, $configuration_id, $limit, $exclusive_start_key): \AffinidiTdk\Clients\CredentialIssuance\Model\ListIssuanceRecordResponse
```

List records

Retrieve a list of issuance data records.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\CredentialIssuance\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\CredentialIssuance\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\CredentialIssuance\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 'project_id_example'; // string | Affinidi project id
$configuration_id = 'configuration_id_example'; // string | The id of the issuance configuration
$limit = 10; // int | Maximum number of records to fetch in a list
$exclusive_start_key = 'exclusive_start_key_example'; // string | exclusiveStartKey for retrieving the next batch of data.

try {
    $result = $apiInstance->listIssuanceDataRecords($project_id, $configuration_id, $limit, $exclusive_start_key);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->listIssuanceDataRecords: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                    | Type       | Description                                              | Notes                      |
| ----------------------- | ---------- | -------------------------------------------------------- | -------------------------- |
| **project_id**          | **string** | Affinidi project id                                      |                            |
| **configuration_id**    | **string** | The id of the issuance configuration                     |                            |
| **limit**               | **int**    | Maximum number of records to fetch in a list             | [optional] [default to 10] |
| **exclusive_start_key** | **string** | exclusiveStartKey for retrieving the next batch of data. | [optional]                 |

### Return type

[**\AffinidiTdk\Clients\CredentialIssuance\Model\ListIssuanceRecordResponse**](../Model/ListIssuanceRecordResponse.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
