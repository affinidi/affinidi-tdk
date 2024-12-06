# OpenAPI\Client\WellKnownApi

All URIs are relative to https://apse1.api.affinidi.io/iam, except if the operation defines another base path.

| Method                                                     | HTTP request                   | Description |
| ---------------------------------------------------------- | ------------------------------ | ----------- |
| [**getWellKnownDid()**](WellKnownApi.md#getWellKnownDid)   | **GET** /.well-known/did.json  |             |
| [**getWellKnownJwks()**](WellKnownApi.md#getWellKnownJwks) | **GET** /.well-known/jwks.json |             |

## `getWellKnownDid()`

```php
getWellKnownDid(): \OpenAPI\Client\Model\GetWellKnownDidOK
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\WellKnownApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->getWellKnownDid();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WellKnownApi->getWellKnownDid: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\GetWellKnownDidOK**](../Model/GetWellKnownDidOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getWellKnownJwks()`

```php
getWellKnownJwks(): \OpenAPI\Client\Model\JsonWebKeySetDto
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\WellKnownApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->getWellKnownJwks();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WellKnownApi->getWellKnownJwks: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\JsonWebKeySetDto**](../Model/JsonWebKeySetDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
