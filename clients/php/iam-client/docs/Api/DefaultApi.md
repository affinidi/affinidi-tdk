# OpenAPI\Client\DefaultApi

All URIs are relative to https://apse1.api.affinidi.io/iam, except if the operation defines another base path.

| Method                                                     | HTTP request                 | Description |
| ---------------------------------------------------------- | ---------------------------- | ----------- |
| [**v1AuthProxyDelete()**](DefaultApi.md#v1AuthProxyDelete) | **DELETE** /v1/auth/{proxy+} |             |
| [**v1AuthProxyGet()**](DefaultApi.md#v1AuthProxyGet)       | **GET** /v1/auth/{proxy+}    |             |
| [**v1AuthProxyPatch()**](DefaultApi.md#v1AuthProxyPatch)   | **PATCH** /v1/auth/{proxy+}  |             |
| [**v1AuthProxyPost()**](DefaultApi.md#v1AuthProxyPost)     | **POST** /v1/auth/{proxy+}   |             |
| [**v1AuthProxyPut()**](DefaultApi.md#v1AuthProxyPut)       | **PUT** /v1/auth/{proxy+}    |             |
| [**v1IdpProxyDelete()**](DefaultApi.md#v1IdpProxyDelete)   | **DELETE** /v1/idp/{proxy+}  |             |
| [**v1IdpProxyGet()**](DefaultApi.md#v1IdpProxyGet)         | **GET** /v1/idp/{proxy+}     |             |
| [**v1IdpProxyPatch()**](DefaultApi.md#v1IdpProxyPatch)     | **PATCH** /v1/idp/{proxy+}   |             |
| [**v1IdpProxyPost()**](DefaultApi.md#v1IdpProxyPost)       | **POST** /v1/idp/{proxy+}    |             |
| [**v1IdpProxyPut()**](DefaultApi.md#v1IdpProxyPut)         | **PUT** /v1/idp/{proxy+}     |             |

## `v1AuthProxyDelete()`

```php
v1AuthProxyDelete($proxy)
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$proxy = 'proxy_example'; // string

try {
    $apiInstance->v1AuthProxyDelete($proxy);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->v1AuthProxyDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **string** |             |       |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1AuthProxyGet()`

```php
v1AuthProxyGet($proxy)
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$proxy = 'proxy_example'; // string

try {
    $apiInstance->v1AuthProxyGet($proxy);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->v1AuthProxyGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **string** |             |       |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1AuthProxyPatch()`

```php
v1AuthProxyPatch($proxy)
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$proxy = 'proxy_example'; // string

try {
    $apiInstance->v1AuthProxyPatch($proxy);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->v1AuthProxyPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **string** |             |       |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1AuthProxyPost()`

```php
v1AuthProxyPost($proxy)
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$proxy = 'proxy_example'; // string

try {
    $apiInstance->v1AuthProxyPost($proxy);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->v1AuthProxyPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **string** |             |       |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1AuthProxyPut()`

```php
v1AuthProxyPut($proxy)
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$proxy = 'proxy_example'; // string

try {
    $apiInstance->v1AuthProxyPut($proxy);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->v1AuthProxyPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **string** |             |       |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1IdpProxyDelete()`

```php
v1IdpProxyDelete($proxy)
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$proxy = 'proxy_example'; // string

try {
    $apiInstance->v1IdpProxyDelete($proxy);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->v1IdpProxyDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **string** |             |       |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1IdpProxyGet()`

```php
v1IdpProxyGet($proxy)
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$proxy = 'proxy_example'; // string

try {
    $apiInstance->v1IdpProxyGet($proxy);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->v1IdpProxyGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **string** |             |       |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1IdpProxyPatch()`

```php
v1IdpProxyPatch($proxy)
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$proxy = 'proxy_example'; // string

try {
    $apiInstance->v1IdpProxyPatch($proxy);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->v1IdpProxyPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **string** |             |       |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1IdpProxyPost()`

```php
v1IdpProxyPost($proxy)
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$proxy = 'proxy_example'; // string

try {
    $apiInstance->v1IdpProxyPost($proxy);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->v1IdpProxyPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **string** |             |       |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1IdpProxyPut()`

```php
v1IdpProxyPut($proxy)
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$proxy = 'proxy_example'; // string

try {
    $apiInstance->v1IdpProxyPut($proxy);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->v1IdpProxyPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **string** |             |       |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
