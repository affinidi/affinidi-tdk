# OpenAPI\Client\ConfigurationApi

All URIs are relative to https://apse1.api.affinidi.io/vpa, except if the operation defines another base path.

| Method                                                                                   | HTTP request                                          | Description                                |
| ---------------------------------------------------------------------------------------- | ----------------------------------------------------- | ------------------------------------------ |
| [**createLoginConfigurations()**](ConfigurationApi.md#createLoginConfigurations)         | **POST** /v1/login/configurations                     | Create a new login configuration           |
| [**deleteLoginConfigurationsById()**](ConfigurationApi.md#deleteLoginConfigurationsById) | **DELETE** /v1/login/configurations/{configurationId} | Delete login configurations by ID          |
| [**getClientMetadataByClientId()**](ConfigurationApi.md#getClientMetadataByClientId)     | **GET** /v1/login/configurations/metadata/{clientId}  | Get Client Metadata By OAuth 2.0 Client ID |
| [**getLoginConfigurationsById()**](ConfigurationApi.md#getLoginConfigurationsById)       | **GET** /v1/login/configurations/{configurationId}    | Get login configuration by ID              |
| [**listLoginConfigurations()**](ConfigurationApi.md#listLoginConfigurations)             | **GET** /v1/login/configurations                      | List login configurations                  |
| [**updateLoginConfigurationsById()**](ConfigurationApi.md#updateLoginConfigurationsById) | **PATCH** /v1/login/configurations/{configurationId}  | Update login configurations by ID          |

## `createLoginConfigurations()`

```php
createLoginConfigurations($create_login_configuration_input): \OpenAPI\Client\Model\CreateLoginConfigurationOutput
```

Create a new login configuration

Create a new login configuration `vpDefinition` and `idTokenMapping` have default settings that provide user email VP presentation definitions. An essential default definition is in place when it comes to the login process for end users using the Chrome extension. This definition requires users to input their email address as OIDCVP compliant, which is then verified by the Affinidi verification service.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ConfigurationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$create_login_configuration_input = new \OpenAPI\Client\Model\CreateLoginConfigurationInput(); // \OpenAPI\Client\Model\CreateLoginConfigurationInput | CreateLoginConfigurations

try {
    $result = $apiInstance->createLoginConfigurations($create_login_configuration_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConfigurationApi->createLoginConfigurations: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                                 | Type                                                                                                 | Description               | Notes      |
| ------------------------------------ | ---------------------------------------------------------------------------------------------------- | ------------------------- | ---------- |
| **create_login_configuration_input** | [**\OpenAPI\Client\Model\CreateLoginConfigurationInput**](../Model/CreateLoginConfigurationInput.md) | CreateLoginConfigurations | [optional] |

### Return type

[**\OpenAPI\Client\Model\CreateLoginConfigurationOutput**](../Model/CreateLoginConfigurationOutput.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteLoginConfigurationsById()`

```php
deleteLoginConfigurationsById($configuration_id)
```

Delete login configurations by ID

Delete login configurations by ID

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ConfigurationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$configuration_id = 'configuration_id_example'; // string | The id of the login configuration

try {
    $apiInstance->deleteLoginConfigurationsById($configuration_id);
} catch (Exception $e) {
    echo 'Exception when calling ConfigurationApi->deleteLoginConfigurationsById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                 | Type       | Description                       | Notes |
| -------------------- | ---------- | --------------------------------- | ----- |
| **configuration_id** | **string** | The id of the login configuration |       |

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

## `getClientMetadataByClientId()`

```php
getClientMetadataByClientId($client_id): \OpenAPI\Client\Model\LoginConfigurationClientMetadataOutput
```

Get Client Metadata By OAuth 2.0 Client ID

Get Client Metadata By OAuth 2.0 Client ID

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\ConfigurationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$client_id = 'client_id_example'; // string | OAuth 2.0 Client ID

try {
    $result = $apiInstance->getClientMetadataByClientId($client_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConfigurationApi->getClientMetadataByClientId: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name          | Type       | Description         | Notes |
| ------------- | ---------- | ------------------- | ----- |
| **client_id** | **string** | OAuth 2.0 Client ID |       |

### Return type

[**\OpenAPI\Client\Model\LoginConfigurationClientMetadataOutput**](../Model/LoginConfigurationClientMetadataOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getLoginConfigurationsById()`

```php
getLoginConfigurationsById($configuration_id): \OpenAPI\Client\Model\LoginConfigurationObject
```

Get login configuration by ID

Get login configuration by ID

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ConfigurationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$configuration_id = 'configuration_id_example'; // string | The id of the login configuration

try {
    $result = $apiInstance->getLoginConfigurationsById($configuration_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConfigurationApi->getLoginConfigurationsById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                 | Type       | Description                       | Notes |
| -------------------- | ---------- | --------------------------------- | ----- |
| **configuration_id** | **string** | The id of the login configuration |       |

### Return type

[**\OpenAPI\Client\Model\LoginConfigurationObject**](../Model/LoginConfigurationObject.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listLoginConfigurations()`

```php
listLoginConfigurations($limit, $exclusive_start_key): \OpenAPI\Client\Model\ListLoginConfigurationOutput
```

List login configurations

Endpoint to retrieve list of login configurations

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ConfigurationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$limit = 56; // int | Maximum number of records to fetch in a list
$exclusive_start_key = 'exclusive_start_key_example'; // string | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.

try {
    $result = $apiInstance->listLoginConfigurations($limit, $exclusive_start_key);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConfigurationApi->listLoginConfigurations: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                    | Type       | Description                                                                                                                                                    | Notes      |
| ----------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **limit**               | **int**    | Maximum number of records to fetch in a list                                                                                                                   | [optional] |
| **exclusive_start_key** | **string** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |

### Return type

[**\OpenAPI\Client\Model\ListLoginConfigurationOutput**](../Model/ListLoginConfigurationOutput.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateLoginConfigurationsById()`

```php
updateLoginConfigurationsById($configuration_id, $update_login_configuration_input): \OpenAPI\Client\Model\LoginConfigurationObject
```

Update login configurations by ID

Update login configurations by ID

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ConfigurationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$configuration_id = 'configuration_id_example'; // string | The id of the login configuration
$update_login_configuration_input = new \OpenAPI\Client\Model\UpdateLoginConfigurationInput(); // \OpenAPI\Client\Model\UpdateLoginConfigurationInput | UpdateLoginConfigurationsById

try {
    $result = $apiInstance->updateLoginConfigurationsById($configuration_id, $update_login_configuration_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConfigurationApi->updateLoginConfigurationsById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                                 | Type                                                                                                 | Description                       | Notes      |
| ------------------------------------ | ---------------------------------------------------------------------------------------------------- | --------------------------------- | ---------- |
| **configuration_id**                 | **string**                                                                                           | The id of the login configuration |            |
| **update_login_configuration_input** | [**\OpenAPI\Client\Model\UpdateLoginConfigurationInput**](../Model/UpdateLoginConfigurationInput.md) | UpdateLoginConfigurationsById     | [optional] |

### Return type

[**\OpenAPI\Client\Model\LoginConfigurationObject**](../Model/LoginConfigurationObject.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
