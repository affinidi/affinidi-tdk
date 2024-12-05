# OpenAPI\Client\PexQueryApi

All URIs are relative to https://apse1.api.affinidi.io/ais, except if the operation defines another base path.

| Method                                                        | HTTP request                                                          | Description |
| ------------------------------------------------------------- | --------------------------------------------------------------------- | ----------- |
| [**createPexQuery()**](PexQueryApi.md#createPexQuery)         | **POST** /v1/configurations/{configurationId}/pex-queries             |             |
| [**deletePexQueries()**](PexQueryApi.md#deletePexQueries)     | **POST** /v1/configurations/{configurationId}/delete-queries          |             |
| [**deletePexQueryById()**](PexQueryApi.md#deletePexQueryById) | **DELETE** /v1/configurations/{configurationId}/pex-queries/{queryId} |             |
| [**getPexQueryById()**](PexQueryApi.md#getPexQueryById)       | **GET** /v1/configurations/{configurationId}/pex-queries/{queryId}    |             |
| [**listPexQueries()**](PexQueryApi.md#listPexQueries)         | **GET** /v1/configurations/{configurationId}/pex-queries              |             |
| [**savePexQueries()**](PexQueryApi.md#savePexQueries)         | **POST** /v1/configurations/{configurationId}/save-queries            |             |
| [**updatePexQueryById()**](PexQueryApi.md#updatePexQueryById) | **PATCH** /v1/configurations/{configurationId}/pex-queries/{queryId}  |             |

## `createPexQuery()`

```php
createPexQuery($configuration_id, $create_pex_query_input): \OpenAPI\Client\Model\PexQueryDto
```

Creates a new Presentation Definition in the configuration to query data.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\PexQueryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$configuration_id = 'configuration_id_example'; // string | ID of the Affinidi Iota Framework configuration.
$create_pex_query_input = new \OpenAPI\Client\Model\CreatePexQueryInput(); // \OpenAPI\Client\Model\CreatePexQueryInput | CreatePexQuery

try {
    $result = $apiInstance->createPexQuery($configuration_id, $create_pex_query_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PexQueryApi->createPexQuery: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                       | Type                                                                             | Description                                      | Notes |
| -------------------------- | -------------------------------------------------------------------------------- | ------------------------------------------------ | ----- |
| **configuration_id**       | **string**                                                                       | ID of the Affinidi Iota Framework configuration. |       |
| **create_pex_query_input** | [**\OpenAPI\Client\Model\CreatePexQueryInput**](../Model/CreatePexQueryInput.md) | CreatePexQuery                                   |       |

### Return type

[**\OpenAPI\Client\Model\PexQueryDto**](../Model/PexQueryDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deletePexQueries()`

```php
deletePexQueries($configuration_id)
```

Deletes all Presentation Definition queries of a configuration.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\PexQueryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$configuration_id = 'configuration_id_example'; // string | ID of the Affinidi Iota Framework configuration.

try {
    $apiInstance->deletePexQueries($configuration_id);
} catch (Exception $e) {
    echo 'Exception when calling PexQueryApi->deletePexQueries: ', $e->getMessage(), PHP_EOL;
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

## `deletePexQueryById()`

```php
deletePexQueryById($configuration_id, $query_id)
```

Deletes a Presentation Definition in the configuration by ID.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\PexQueryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$configuration_id = 'configuration_id_example'; // string | ID of the Affinidi Iota Framework configuration.
$query_id = 'query_id_example'; // string | The ID of the query.

try {
    $apiInstance->deletePexQueryById($configuration_id, $query_id);
} catch (Exception $e) {
    echo 'Exception when calling PexQueryApi->deletePexQueryById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                 | Type       | Description                                      | Notes |
| -------------------- | ---------- | ------------------------------------------------ | ----- |
| **configuration_id** | **string** | ID of the Affinidi Iota Framework configuration. |       |
| **query_id**         | **string** | The ID of the query.                             |       |

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

## `getPexQueryById()`

```php
getPexQueryById($configuration_id, $query_id): \OpenAPI\Client\Model\PexQueryDto
```

Retrieves a Presentation Definition in the configuration by ID.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\PexQueryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$configuration_id = 'configuration_id_example'; // string | ID of the Affinidi Iota Framework configuration.
$query_id = 'query_id_example'; // string | The ID of the query.

try {
    $result = $apiInstance->getPexQueryById($configuration_id, $query_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PexQueryApi->getPexQueryById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                 | Type       | Description                                      | Notes |
| -------------------- | ---------- | ------------------------------------------------ | ----- |
| **configuration_id** | **string** | ID of the Affinidi Iota Framework configuration. |       |
| **query_id**         | **string** | The ID of the query.                             |       |

### Return type

[**\OpenAPI\Client\Model\PexQueryDto**](../Model/PexQueryDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listPexQueries()`

```php
listPexQueries($configuration_id, $limit, $exclusive_start_key): \OpenAPI\Client\Model\ListPexQueriesOK
```

Lists all Presentation Definitions in the configuration.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\PexQueryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$configuration_id = 'configuration_id_example'; // string | ID of the Affinidi Iota Framework configuration.
$limit = 56; // int | Maximum number of records to fetch in a list
$exclusive_start_key = 'exclusive_start_key_example'; // string | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.

try {
    $result = $apiInstance->listPexQueries($configuration_id, $limit, $exclusive_start_key);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PexQueryApi->listPexQueries: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                    | Type       | Description                                                                                                                                                    | Notes      |
| ----------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **configuration_id**    | **string** | ID of the Affinidi Iota Framework configuration.                                                                                                               |            |
| **limit**               | **int**    | Maximum number of records to fetch in a list                                                                                                                   | [optional] |
| **exclusive_start_key** | **string** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |

### Return type

[**\OpenAPI\Client\Model\ListPexQueriesOK**](../Model/ListPexQueriesOK.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `savePexQueries()`

```php
savePexQueries($configuration_id, $save_pex_queries_update_input): object
```

Saves all Presentation Definition queries of a configuration.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\PexQueryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$configuration_id = 'configuration_id_example'; // string | ID of the Affinidi Iota Framework configuration.
$save_pex_queries_update_input = new \OpenAPI\Client\Model\SavePexQueriesUpdateInput(); // \OpenAPI\Client\Model\SavePexQueriesUpdateInput | SavePexQueriesInput

try {
    $result = $apiInstance->savePexQueries($configuration_id, $save_pex_queries_update_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PexQueryApi->savePexQueries: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                              | Type                                                                                         | Description                                      | Notes |
| --------------------------------- | -------------------------------------------------------------------------------------------- | ------------------------------------------------ | ----- |
| **configuration_id**              | **string**                                                                                   | ID of the Affinidi Iota Framework configuration. |       |
| **save_pex_queries_update_input** | [**\OpenAPI\Client\Model\SavePexQueriesUpdateInput**](../Model/SavePexQueriesUpdateInput.md) | SavePexQueriesInput                              |       |

### Return type

**object**

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updatePexQueryById()`

```php
updatePexQueryById($configuration_id, $query_id, $update_pex_query_input): \OpenAPI\Client\Model\PexQueryDto
```

Updates the Presentation Definition in the configuration by ID.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\PexQueryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$configuration_id = 'configuration_id_example'; // string | ID of the Affinidi Iota Framework configuration.
$query_id = 'query_id_example'; // string | The ID of the query.
$update_pex_query_input = new \OpenAPI\Client\Model\UpdatePexQueryInput(); // \OpenAPI\Client\Model\UpdatePexQueryInput | UpdatePexQueryById

try {
    $result = $apiInstance->updatePexQueryById($configuration_id, $query_id, $update_pex_query_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PexQueryApi->updatePexQueryById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                       | Type                                                                             | Description                                      | Notes |
| -------------------------- | -------------------------------------------------------------------------------- | ------------------------------------------------ | ----- |
| **configuration_id**       | **string**                                                                       | ID of the Affinidi Iota Framework configuration. |       |
| **query_id**               | **string**                                                                       | The ID of the query.                             |       |
| **update_pex_query_input** | [**\OpenAPI\Client\Model\UpdatePexQueryInput**](../Model/UpdatePexQueryInput.md) | UpdatePexQueryById                               |       |

### Return type

[**\OpenAPI\Client\Model\PexQueryDto**](../Model/PexQueryDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
