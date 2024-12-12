# AffinidiTdk\Clients\CredentialIssuance\ConfigurationApi

All URIs are relative to https://apse1.api.affinidi.io/cis, except if the operation defines another base path.

| Method                                                                         | HTTP request                                    | Description |
| ------------------------------------------------------------------------------ | ----------------------------------------------- | ----------- |
| [**createIssuanceConfig()**](ConfigurationApi.md#createIssuanceConfig)         | **POST** /v1/configurations                     |             |
| [**deleteIssuanceConfigById()**](ConfigurationApi.md#deleteIssuanceConfigById) | **DELETE** /v1/configurations/{configurationId} |             |
| [**getIssuanceConfigById()**](ConfigurationApi.md#getIssuanceConfigById)       | **GET** /v1/configurations/{configurationId}    |             |
| [**getIssuanceConfigList()**](ConfigurationApi.md#getIssuanceConfigList)       | **GET** /v1/configurations                      |             |
| [**updateIssuanceConfigById()**](ConfigurationApi.md#updateIssuanceConfigById) | **PUT** /v1/configurations/{configurationId}    |             |

## `createIssuanceConfig()`

```php
createIssuanceConfig($create_issuance_config_input): \AffinidiTdk\Clients\CredentialIssuance\Model\IssuanceConfigDto
```

Create issuance configuration, project have only one configuration

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\CredentialIssuance\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\CredentialIssuance\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\CredentialIssuance\Api\ConfigurationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$create_issuance_config_input = new \AffinidiTdk\Clients\CredentialIssuance\Model\CreateIssuanceConfigInput(); // \AffinidiTdk\Clients\CredentialIssuance\Model\CreateIssuanceConfigInput | Request body of create configuration

try {
    $result = $apiInstance->createIssuanceConfig($create_issuance_config_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConfigurationApi->createIssuanceConfig: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                             | Type                                                                                                                 | Description                          | Notes |
| -------------------------------- | -------------------------------------------------------------------------------------------------------------------- | ------------------------------------ | ----- |
| **create_issuance_config_input** | [**\AffinidiTdk\Clients\CredentialIssuance\Model\CreateIssuanceConfigInput**](../Model/CreateIssuanceConfigInput.md) | Request body of create configuration |       |

### Return type

[**\AffinidiTdk\Clients\CredentialIssuance\Model\IssuanceConfigDto**](../Model/IssuanceConfigDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteIssuanceConfigById()`

```php
deleteIssuanceConfigById($configuration_id)
```

Delete project issuance configuration

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\CredentialIssuance\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\CredentialIssuance\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\CredentialIssuance\Api\ConfigurationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$configuration_id = 'configuration_id_example'; // string | The id of the issuance configuration

try {
    $apiInstance->deleteIssuanceConfigById($configuration_id);
} catch (Exception $e) {
    echo 'Exception when calling ConfigurationApi->deleteIssuanceConfigById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                 | Type       | Description                          | Notes |
| -------------------- | ---------- | ------------------------------------ | ----- |
| **configuration_id** | **string** | The id of the issuance configuration |       |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getIssuanceConfigById()`

```php
getIssuanceConfigById($configuration_id): \AffinidiTdk\Clients\CredentialIssuance\Model\IssuanceConfigDto
```

Get issuance configuration by id

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\CredentialIssuance\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\CredentialIssuance\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\CredentialIssuance\Api\ConfigurationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$configuration_id = 'configuration_id_example'; // string | The id of the issuance configuration

try {
    $result = $apiInstance->getIssuanceConfigById($configuration_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConfigurationApi->getIssuanceConfigById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                 | Type       | Description                          | Notes |
| -------------------- | ---------- | ------------------------------------ | ----- |
| **configuration_id** | **string** | The id of the issuance configuration |       |

### Return type

[**\AffinidiTdk\Clients\CredentialIssuance\Model\IssuanceConfigDto**](../Model/IssuanceConfigDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getIssuanceConfigList()`

```php
getIssuanceConfigList(): \AffinidiTdk\Clients\CredentialIssuance\Model\IssuanceConfigListResponse
```

Get issuance configuration for my selected project

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\CredentialIssuance\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\CredentialIssuance\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\CredentialIssuance\Api\ConfigurationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getIssuanceConfigList();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConfigurationApi->getIssuanceConfigList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\AffinidiTdk\Clients\CredentialIssuance\Model\IssuanceConfigListResponse**](../Model/IssuanceConfigListResponse.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateIssuanceConfigById()`

```php
updateIssuanceConfigById($configuration_id, $update_issuance_config_input): \AffinidiTdk\Clients\CredentialIssuance\Model\IssuanceConfigDto
```

Update issuance configuration

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\CredentialIssuance\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\CredentialIssuance\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\CredentialIssuance\Api\ConfigurationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$configuration_id = 'configuration_id_example'; // string | The id of the issuance configuration
$update_issuance_config_input = new \AffinidiTdk\Clients\CredentialIssuance\Model\UpdateIssuanceConfigInput(); // \AffinidiTdk\Clients\CredentialIssuance\Model\UpdateIssuanceConfigInput | Request body of update configuration

try {
    $result = $apiInstance->updateIssuanceConfigById($configuration_id, $update_issuance_config_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConfigurationApi->updateIssuanceConfigById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                             | Type                                                                                                                 | Description                          | Notes |
| -------------------------------- | -------------------------------------------------------------------------------------------------------------------- | ------------------------------------ | ----- |
| **configuration_id**             | **string**                                                                                                           | The id of the issuance configuration |       |
| **update_issuance_config_input** | [**\AffinidiTdk\Clients\CredentialIssuance\Model\UpdateIssuanceConfigInput**](../Model/UpdateIssuanceConfigInput.md) | Request body of update configuration |       |

### Return type

[**\AffinidiTdk\Clients\CredentialIssuance\Model\IssuanceConfigDto**](../Model/IssuanceConfigDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
