# OpenAPI\Client\IssuanceApi

All URIs are relative to https://apse1.api.affinidi.io/cis, except if the operation defines another base path.

| Method                                              | HTTP request                                        | Description |
| --------------------------------------------------- | --------------------------------------------------- | ----------- |
| [**issuanceState()**](IssuanceApi.md#issuanceState) | **GET** /v1/{projectId}/issuance/state/{issuanceId} |             |
| [**listIssuance()**](IssuanceApi.md#listIssuance)   | **GET** /v1/{projectId}/issuance                    |             |
| [**startIssuance()**](IssuanceApi.md#startIssuance) | **POST** /v1/{projectId}/issuance/start             |             |

## `issuanceState()`

```php
issuanceState($issuance_id, $project_id): \OpenAPI\Client\Model\IssuanceStateResponse
```

Get issuance status

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\IssuanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$issuance_id = 'issuance_id_example'; // string
$project_id = 'project_id_example'; // string | Affinidi project id

try {
    $result = $apiInstance->issuanceState($issuance_id, $project_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IssuanceApi->issuanceState: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name            | Type       | Description         | Notes |
| --------------- | ---------- | ------------------- | ----- |
| **issuance_id** | **string** |                     |       |
| **project_id**  | **string** | Affinidi project id |       |

### Return type

[**\OpenAPI\Client\Model\IssuanceStateResponse**](../Model/IssuanceStateResponse.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listIssuance()`

```php
listIssuance($project_id): \OpenAPI\Client\Model\ListIssuanceResponse
```

List all issuances for Project

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\IssuanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 'project_id_example'; // string | Affinidi project id

try {
    $result = $apiInstance->listIssuance($project_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IssuanceApi->listIssuance: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name           | Type       | Description         | Notes |
| -------------- | ---------- | ------------------- | ----- |
| **project_id** | **string** | Affinidi project id |       |

### Return type

[**\OpenAPI\Client\Model\ListIssuanceResponse**](../Model/ListIssuanceResponse.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `startIssuance()`

```php
startIssuance($project_id, $start_issuance_input): \OpenAPI\Client\Model\StartIssuanceResponse
```

Endpoint used b websites to start the issuance process

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\IssuanceApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 'project_id_example'; // string | Affinidi project id
$start_issuance_input = new \OpenAPI\Client\Model\StartIssuanceInput(); // \OpenAPI\Client\Model\StartIssuanceInput | Request body to start issuance

try {
    $result = $apiInstance->startIssuance($project_id, $start_issuance_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IssuanceApi->startIssuance: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                     | Type                                                                           | Description                    | Notes |
| ------------------------ | ------------------------------------------------------------------------------ | ------------------------------ | ----- |
| **project_id**           | **string**                                                                     | Affinidi project id            |       |
| **start_issuance_input** | [**\OpenAPI\Client\Model\StartIssuanceInput**](../Model/StartIssuanceInput.md) | Request body to start issuance |       |

### Return type

[**\OpenAPI\Client\Model\StartIssuanceResponse**](../Model/StartIssuanceResponse.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
