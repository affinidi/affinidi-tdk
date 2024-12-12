# AffinidiTdk\Clients\LoginConfiguration\AllowListApi

All URIs are relative to https://apse1.api.affinidi.io/vpa, except if the operation defines another base path.

| Method                                                       | HTTP request                          | Description |
| ------------------------------------------------------------ | ------------------------------------- | ----------- |
| [**allowGroups()**](AllowListApi.md#allowGroups)             | **POST** /v1/allow-list/groups/add    |             |
| [**disallowGroups()**](AllowListApi.md#disallowGroups)       | **POST** /v1/allow-list/groups/remove |             |
| [**listAllowedGroups()**](AllowListApi.md#listAllowedGroups) | **GET** /v1/allow-list/groups         |             |

## `allowGroups()`

```php
allowGroups($group_names_input)
```

Allow Single or Multiple Groups

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\LoginConfiguration\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\LoginConfiguration\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\LoginConfiguration\Api\AllowListApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$group_names_input = new \AffinidiTdk\Clients\LoginConfiguration\Model\GroupNamesInput(); // \AffinidiTdk\Clients\LoginConfiguration\Model\GroupNamesInput | List of group names as input

try {
    $apiInstance->allowGroups($group_names_input);
} catch (Exception $e) {
    echo 'Exception when calling AllowListApi->allowGroups: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                  | Type                                                                                             | Description                  | Notes      |
| --------------------- | ------------------------------------------------------------------------------------------------ | ---------------------------- | ---------- |
| **group_names_input** | [**\AffinidiTdk\Clients\LoginConfiguration\Model\GroupNamesInput**](../Model/GroupNamesInput.md) | List of group names as input | [optional] |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `disallowGroups()`

```php
disallowGroups($group_names_input)
```

Disallow Single or Multiple Groups

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\LoginConfiguration\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\LoginConfiguration\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\LoginConfiguration\Api\AllowListApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$group_names_input = new \AffinidiTdk\Clients\LoginConfiguration\Model\GroupNamesInput(); // \AffinidiTdk\Clients\LoginConfiguration\Model\GroupNamesInput | List of group names as input

try {
    $apiInstance->disallowGroups($group_names_input);
} catch (Exception $e) {
    echo 'Exception when calling AllowListApi->disallowGroups: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                  | Type                                                                                             | Description                  | Notes      |
| --------------------- | ------------------------------------------------------------------------------------------------ | ---------------------------- | ---------- |
| **group_names_input** | [**\AffinidiTdk\Clients\LoginConfiguration\Model\GroupNamesInput**](../Model/GroupNamesInput.md) | List of group names as input | [optional] |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listAllowedGroups()`

```php
listAllowedGroups($page_token): \AffinidiTdk\Clients\LoginConfiguration\Model\GroupNames
```

Get Allowed Groups

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\LoginConfiguration\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\LoginConfiguration\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\LoginConfiguration\Api\AllowListApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$page_token = 'page_token_example'; // string

try {
    $result = $apiInstance->listAllowedGroups($page_token);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AllowListApi->listAllowedGroups: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name           | Type       | Description | Notes      |
| -------------- | ---------- | ----------- | ---------- |
| **page_token** | **string** |             | [optional] |

### Return type

[**\AffinidiTdk\Clients\LoginConfiguration\Model\GroupNames**](../Model/GroupNames.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
