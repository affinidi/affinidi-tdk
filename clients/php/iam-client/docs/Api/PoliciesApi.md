# OpenAPI\Client\PoliciesApi

All URIs are relative to https://apse1.api.affinidi.io/iam, except if the operation defines another base path.

| Method                                                | HTTP request                                  | Description |
| ----------------------------------------------------- | --------------------------------------------- | ----------- |
| [**getPolicies()**](PoliciesApi.md#getPolicies)       | **GET** /v1/policies/principals/{principalId} |             |
| [**updatePolicies()**](PoliciesApi.md#updatePolicies) | **PUT** /v1/policies/principals/{principalId} |             |

## `getPolicies()`

```php
getPolicies($principal_id, $principal_type): \OpenAPI\Client\Model\PolicyDto
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\PoliciesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$principal_id = 'principal_id_example'; // string
$principal_type = 'principal_type_example'; // string

try {
    $result = $apiInstance->getPolicies($principal_id, $principal_type);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PoliciesApi->getPolicies: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name               | Type       | Description | Notes |
| ------------------ | ---------- | ----------- | ----- |
| **principal_id**   | **string** |             |       |
| **principal_type** | **string** |             |       |

### Return type

[**\OpenAPI\Client\Model\PolicyDto**](../Model/PolicyDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updatePolicies()`

```php
updatePolicies($principal_id, $principal_type, $policy_dto): \OpenAPI\Client\Model\PolicyDto
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\PoliciesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$principal_id = 'principal_id_example'; // string
$principal_type = 'principal_type_example'; // string
$policy_dto = new \OpenAPI\Client\Model\PolicyDto(); // \OpenAPI\Client\Model\PolicyDto | UpdatePolicies

try {
    $result = $apiInstance->updatePolicies($principal_id, $principal_type, $policy_dto);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PoliciesApi->updatePolicies: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name               | Type                                                         | Description    | Notes |
| ------------------ | ------------------------------------------------------------ | -------------- | ----- |
| **principal_id**   | **string**                                                   |                |       |
| **principal_type** | **string**                                                   |                |       |
| **policy_dto**     | [**\OpenAPI\Client\Model\PolicyDto**](../Model/PolicyDto.md) | UpdatePolicies |       |

### Return type

[**\OpenAPI\Client\Model\PolicyDto**](../Model/PolicyDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
