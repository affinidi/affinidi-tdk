# OpenAPI\Client\TokensApi

All URIs are relative to https://apse1.api.affinidi.io/iam, except if the operation defines another base path.

| Method                                        | HTTP request                    | Description |
| --------------------------------------------- | ------------------------------- | ----------- |
| [**createToken()**](TokensApi.md#createToken) | **POST** /v1/tokens             |             |
| [**deleteToken()**](TokensApi.md#deleteToken) | **DELETE** /v1/tokens/{tokenId} |             |
| [**getToken()**](TokensApi.md#getToken)       | **GET** /v1/tokens/{tokenId}    |             |
| [**listToken()**](TokensApi.md#listToken)     | **GET** /v1/tokens              |             |
| [**updateToken()**](TokensApi.md#updateToken) | **PATCH** /v1/tokens/{tokenId}  |             |

## `createToken()`

```php
createToken($create_token_input): \OpenAPI\Client\Model\TokenDto
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: UserTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\TokensApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$create_token_input = new \OpenAPI\Client\Model\CreateTokenInput(); // \OpenAPI\Client\Model\CreateTokenInput | CreateToken

try {
    $result = $apiInstance->createToken($create_token_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TokensApi->createToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                   | Type                                                                       | Description | Notes |
| ---------------------- | -------------------------------------------------------------------------- | ----------- | ----- |
| **create_token_input** | [**\OpenAPI\Client\Model\CreateTokenInput**](../Model/CreateTokenInput.md) | CreateToken |       |

### Return type

[**\OpenAPI\Client\Model\TokenDto**](../Model/TokenDto.md)

### Authorization

[UserTokenAuth](../../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteToken()`

```php
deleteToken($token_id)
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: UserTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\TokensApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$token_id = 'token_id_example'; // string

try {
    $apiInstance->deleteToken($token_id);
} catch (Exception $e) {
    echo 'Exception when calling TokensApi->deleteToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name         | Type       | Description | Notes |
| ------------ | ---------- | ----------- | ----- |
| **token_id** | **string** |             |       |

### Return type

void (empty response body)

### Authorization

[UserTokenAuth](../../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getToken()`

```php
getToken($token_id): \OpenAPI\Client\Model\TokenDto
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: UserTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\TokensApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$token_id = 'token_id_example'; // string

try {
    $result = $apiInstance->getToken($token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TokensApi->getToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name         | Type       | Description | Notes |
| ------------ | ---------- | ----------- | ----- |
| **token_id** | **string** |             |       |

### Return type

[**\OpenAPI\Client\Model\TokenDto**](../Model/TokenDto.md)

### Authorization

[UserTokenAuth](../../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listToken()`

```php
listToken(): \OpenAPI\Client\Model\TokenList
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: UserTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\TokensApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->listToken();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TokensApi->listToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\TokenList**](../Model/TokenList.md)

### Authorization

[UserTokenAuth](../../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateToken()`

```php
updateToken($token_id, $update_token_input): \OpenAPI\Client\Model\TokenDto
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: UserTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\TokensApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$token_id = 'token_id_example'; // string
$update_token_input = new \OpenAPI\Client\Model\UpdateTokenInput(); // \OpenAPI\Client\Model\UpdateTokenInput | UpdateToken

try {
    $result = $apiInstance->updateToken($token_id, $update_token_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TokensApi->updateToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                   | Type                                                                       | Description | Notes |
| ---------------------- | -------------------------------------------------------------------------- | ----------- | ----- |
| **token_id**           | **string**                                                                 |             |       |
| **update_token_input** | [**\OpenAPI\Client\Model\UpdateTokenInput**](../Model/UpdateTokenInput.md) | UpdateToken |       |

### Return type

[**\OpenAPI\Client\Model\TokenDto**](../Model/TokenDto.md)

### Authorization

[UserTokenAuth](../../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
