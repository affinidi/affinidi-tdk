# AffinidiTdk\Clients\Iam\TokensApi

All URIs are relative to https://apse1.api.affinidi.io/iam, except if the operation defines another base path.

| Method                                                        | HTTP request                          | Description |
| ------------------------------------------------------------- | ------------------------------------- | ----------- |
| [**createToken()**](TokensApi.md#createToken)                 | **POST** /v1/tokens                   |             |
| [**deleteToken()**](TokensApi.md#deleteToken)                 | **DELETE** /v1/tokens/{tokenId}       |             |
| [**getToken()**](TokensApi.md#getToken)                       | **GET** /v1/tokens/{tokenId}          |             |
| [**listProjectsOfToken()**](TokensApi.md#listProjectsOfToken) | **GET** /v1/tokens/{tokenId}/projects |             |
| [**listToken()**](TokensApi.md#listToken)                     | **GET** /v1/tokens                    |             |
| [**updateToken()**](TokensApi.md#updateToken)                 | **PATCH** /v1/tokens/{tokenId}        |             |

## `createToken()`

```php
createToken($create_token_input): \AffinidiTdk\Clients\Iam\Model\TokenDto
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: UserTokenAuth
$config = AffinidiTdk\Clients\Iam\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\Iam\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\Iam\Api\TokensApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$create_token_input = new \AffinidiTdk\Clients\Iam\Model\CreateTokenInput(); // \AffinidiTdk\Clients\Iam\Model\CreateTokenInput | CreateToken

try {
    $result = $apiInstance->createToken($create_token_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TokensApi->createToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                   | Type                                                                                | Description | Notes |
| ---------------------- | ----------------------------------------------------------------------------------- | ----------- | ----- |
| **create_token_input** | [**\AffinidiTdk\Clients\Iam\Model\CreateTokenInput**](../Model/CreateTokenInput.md) | CreateToken |       |

### Return type

[**\AffinidiTdk\Clients\Iam\Model\TokenDto**](../Model/TokenDto.md)

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
$config = AffinidiTdk\Clients\Iam\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\Iam\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\Iam\Api\TokensApi(
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
getToken($token_id): \AffinidiTdk\Clients\Iam\Model\TokenDto
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: UserTokenAuth
$config = AffinidiTdk\Clients\Iam\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\Iam\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\Iam\Api\TokensApi(
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

[**\AffinidiTdk\Clients\Iam\Model\TokenDto**](../Model/TokenDto.md)

### Authorization

[UserTokenAuth](../../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listProjectsOfToken()`

```php
listProjectsOfToken($token_id, $limit, $exclusive_start_key): \AffinidiTdk\Clients\Iam\Model\ProjectWithPolicyList
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: UserTokenAuth
$config = AffinidiTdk\Clients\Iam\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\Iam\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\Iam\Api\TokensApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$token_id = 'token_id_example'; // string
$limit = 56; // int | Maximum number of records to fetch in a list
$exclusive_start_key = 'exclusive_start_key_example'; // string | exclusiveStartKey for retrieving the next batch of data.

try {
    $result = $apiInstance->listProjectsOfToken($token_id, $limit, $exclusive_start_key);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TokensApi->listProjectsOfToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                    | Type       | Description                                              | Notes      |
| ----------------------- | ---------- | -------------------------------------------------------- | ---------- |
| **token_id**            | **string** |                                                          |            |
| **limit**               | **int**    | Maximum number of records to fetch in a list             | [optional] |
| **exclusive_start_key** | **string** | exclusiveStartKey for retrieving the next batch of data. | [optional] |

### Return type

[**\AffinidiTdk\Clients\Iam\Model\ProjectWithPolicyList**](../Model/ProjectWithPolicyList.md)

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
listToken(): \AffinidiTdk\Clients\Iam\Model\TokenList
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: UserTokenAuth
$config = AffinidiTdk\Clients\Iam\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\Iam\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\Iam\Api\TokensApi(
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

[**\AffinidiTdk\Clients\Iam\Model\TokenList**](../Model/TokenList.md)

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
updateToken($token_id, $update_token_input): \AffinidiTdk\Clients\Iam\Model\TokenDto
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: UserTokenAuth
$config = AffinidiTdk\Clients\Iam\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\Iam\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\Iam\Api\TokensApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$token_id = 'token_id_example'; // string
$update_token_input = new \AffinidiTdk\Clients\Iam\Model\UpdateTokenInput(); // \AffinidiTdk\Clients\Iam\Model\UpdateTokenInput | UpdateToken

try {
    $result = $apiInstance->updateToken($token_id, $update_token_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TokensApi->updateToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                   | Type                                                                                | Description | Notes |
| ---------------------- | ----------------------------------------------------------------------------------- | ----------- | ----- |
| **token_id**           | **string**                                                                          |             |       |
| **update_token_input** | [**\AffinidiTdk\Clients\Iam\Model\UpdateTokenInput**](../Model/UpdateTokenInput.md) | UpdateToken |       |

### Return type

[**\AffinidiTdk\Clients\Iam\Model\TokenDto**](../Model/TokenDto.md)

### Authorization

[UserTokenAuth](../../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
