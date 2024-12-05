# OpenAPI\Client\ConfigurationsApi

All URIs are relative to https://apse1.api.affinidi.io/ais, except if the operation defines another base path.

| Method                                                                                  | HTTP request                                                               | Description |
| --------------------------------------------------------------------------------------- | -------------------------------------------------------------------------- | ----------- |
| [**createIotaConfiguration()**](ConfigurationsApi.md#createIotaConfiguration)           | **POST** /v1/configurations                                                |             |
| [**deleteIotaConfigurationById()**](ConfigurationsApi.md#deleteIotaConfigurationById)   | **DELETE** /v1/configurations/{configurationId}                            |             |
| [**getIotaConfigurationById()**](ConfigurationsApi.md#getIotaConfigurationById)         | **GET** /v1/configurations/{configurationId}                               |             |
| [**getIotaConfigurationMetaData()**](ConfigurationsApi.md#getIotaConfigurationMetaData) | **GET** /v1/projects/{projectId}/configurations/{configurationId}/metadata |             |
| [**listIotaConfigurations()**](ConfigurationsApi.md#listIotaConfigurations)             | **GET** /v1/configurations                                                 |             |
| [**updateIotaConfigurationById()**](ConfigurationsApi.md#updateIotaConfigurationById)   | **PATCH** /v1/configurations/{configurationId}                             |             |

## `createIotaConfiguration()`

```php
createIotaConfiguration($create_iota_configuration_input): \OpenAPI\Client\Model\IotaConfigurationDto
```

Creates a new Affinidi Iota Framework configuration.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ConfigurationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$create_iota_configuration_input = new \OpenAPI\Client\Model\CreateIotaConfigurationInput(); // \OpenAPI\Client\Model\CreateIotaConfigurationInput | CreateConfiguration

try {
    $result = $apiInstance->createIotaConfiguration($create_iota_configuration_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConfigurationsApi->createIotaConfiguration: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                                | Type                                                                                               | Description         | Notes |
| ----------------------------------- | -------------------------------------------------------------------------------------------------- | ------------------- | ----- |
| **create_iota_configuration_input** | [**\OpenAPI\Client\Model\CreateIotaConfigurationInput**](../Model/CreateIotaConfigurationInput.md) | CreateConfiguration |       |

### Return type

[**\OpenAPI\Client\Model\IotaConfigurationDto**](../Model/IotaConfigurationDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteIotaConfigurationById()`

```php
deleteIotaConfigurationById($configuration_id)
```

Deletes an Affinidi Iota Framework configuration by ID.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ConfigurationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$configuration_id = 'configuration_id_example'; // string | ID of the Affinidi Iota Framework configuration.

try {
    $apiInstance->deleteIotaConfigurationById($configuration_id);
} catch (Exception $e) {
    echo 'Exception when calling ConfigurationsApi->deleteIotaConfigurationById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                 | Type       | Description                                      | Notes |
| -------------------- | ---------- | ------------------------------------------------ | ----- |
| **configuration_id** | **string** | ID of the Affinidi Iota Framework configuration. |       |

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

## `getIotaConfigurationById()`

```php
getIotaConfigurationById($configuration_id): \OpenAPI\Client\Model\IotaConfigurationDto
```

Retrieves the details of an Affinidi Iota Framework configuration.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ConfigurationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$configuration_id = 'configuration_id_example'; // string | ID of the Affinidi Iota Framework configuration.

try {
    $result = $apiInstance->getIotaConfigurationById($configuration_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConfigurationsApi->getIotaConfigurationById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                 | Type       | Description                                      | Notes |
| -------------------- | ---------- | ------------------------------------------------ | ----- |
| **configuration_id** | **string** | ID of the Affinidi Iota Framework configuration. |       |

### Return type

[**\OpenAPI\Client\Model\IotaConfigurationDto**](../Model/IotaConfigurationDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getIotaConfigurationMetaData()`

```php
getIotaConfigurationMetaData($project_id, $configuration_id): \OpenAPI\Client\Model\GetIotaConfigurationMetaDataOK
```

Retrieves the client metadata of an Affinidi Iota Framework configuration.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\ConfigurationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$project_id = 'project_id_example'; // string | The ID of the project.
$configuration_id = 'configuration_id_example'; // string | ID of the Affinidi Iota Framework configuration.

try {
    $result = $apiInstance->getIotaConfigurationMetaData($project_id, $configuration_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConfigurationsApi->getIotaConfigurationMetaData: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                 | Type       | Description                                      | Notes |
| -------------------- | ---------- | ------------------------------------------------ | ----- |
| **project_id**       | **string** | The ID of the project.                           |       |
| **configuration_id** | **string** | ID of the Affinidi Iota Framework configuration. |       |

### Return type

[**\OpenAPI\Client\Model\GetIotaConfigurationMetaDataOK**](../Model/GetIotaConfigurationMetaDataOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listIotaConfigurations()`

```php
listIotaConfigurations(): \OpenAPI\Client\Model\ListConfigurationOK
```

List all Affinidi Iota Framework configurations.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ConfigurationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->listIotaConfigurations();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConfigurationsApi->listIotaConfigurations: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\ListConfigurationOK**](../Model/ListConfigurationOK.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateIotaConfigurationById()`

```php
updateIotaConfigurationById($configuration_id, $update_configuration_by_id_input): \OpenAPI\Client\Model\IotaConfigurationDto
```

Updates the details of an Affinidi Iota Framework configuration by ID.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ConfigurationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$configuration_id = 'configuration_id_example'; // string | ID of the Affinidi Iota Framework configuration.
$update_configuration_by_id_input = new \OpenAPI\Client\Model\UpdateConfigurationByIdInput(); // \OpenAPI\Client\Model\UpdateConfigurationByIdInput | UpdateConfigurationById

try {
    $result = $apiInstance->updateIotaConfigurationById($configuration_id, $update_configuration_by_id_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConfigurationsApi->updateIotaConfigurationById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                                 | Type                                                                                               | Description                                      | Notes |
| ------------------------------------ | -------------------------------------------------------------------------------------------------- | ------------------------------------------------ | ----- |
| **configuration_id**                 | **string**                                                                                         | ID of the Affinidi Iota Framework configuration. |       |
| **update_configuration_by_id_input** | [**\OpenAPI\Client\Model\UpdateConfigurationByIdInput**](../Model/UpdateConfigurationByIdInput.md) | UpdateConfigurationById                          |       |

### Return type

[**\OpenAPI\Client\Model\IotaConfigurationDto**](../Model/IotaConfigurationDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
