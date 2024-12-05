# OpenAPI\Client\StsApi

All URIs are relative to https://apse1.api.affinidi.io/iam, except if the operation defines another base path.

| Method                                                               | HTTP request                                 | Description |
| -------------------------------------------------------------------- | -------------------------------------------- | ----------- |
| [**createProjectScopedToken()**](StsApi.md#createProjectScopedToken) | **POST** /v1/sts/create-project-scoped-token |             |
| [**whoami()**](StsApi.md#whoami)                                     | **GET** /v1/sts/whoami                       |             |

## `createProjectScopedToken()`

```php
createProjectScopedToken($create_project_scoped_token_input): \OpenAPI\Client\Model\CreateProjectScopedTokenOutput
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: UserTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\StsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$create_project_scoped_token_input = new \OpenAPI\Client\Model\CreateProjectScopedTokenInput(); // \OpenAPI\Client\Model\CreateProjectScopedTokenInput | CreateProjectScopedToken

try {
    $result = $apiInstance->createProjectScopedToken($create_project_scoped_token_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StsApi->createProjectScopedToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                                  | Type                                                                                                 | Description              | Notes |
| ------------------------------------- | ---------------------------------------------------------------------------------------------------- | ------------------------ | ----- |
| **create_project_scoped_token_input** | [**\OpenAPI\Client\Model\CreateProjectScopedTokenInput**](../Model/CreateProjectScopedTokenInput.md) | CreateProjectScopedToken |       |

### Return type

[**\OpenAPI\Client\Model\CreateProjectScopedTokenOutput**](../Model/CreateProjectScopedTokenOutput.md)

### Authorization

[UserTokenAuth](../../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `whoami()`

```php
whoami(): \OpenAPI\Client\Model\WhoamiDto
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: UserTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\StsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->whoami();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StsApi->whoami: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\WhoamiDto**](../Model/WhoamiDto.md)

### Authorization

[UserTokenAuth](../../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
