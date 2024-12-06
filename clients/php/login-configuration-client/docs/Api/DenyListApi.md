# OpenAPI\Client\DenyListApi

All URIs are relative to https://apse1.api.affinidi.io/vpa, except if the operation defines another base path.

| Method                                                      | HTTP request                         | Description |
| ----------------------------------------------------------- | ------------------------------------ | ----------- |
| [**blockGroups()**](DenyListApi.md#blockGroups)             | **POST** /v1/deny-list/groups/add    |             |
| [**blockUsers()**](DenyListApi.md#blockUsers)               | **POST** /v1/deny-list/users/add     |             |
| [**listBlockedGroups()**](DenyListApi.md#listBlockedGroups) | **GET** /v1/deny-list/groups         |             |
| [**listBlockedUsers()**](DenyListApi.md#listBlockedUsers)   | **GET** /v1/deny-list/users          |             |
| [**unblockGroups()**](DenyListApi.md#unblockGroups)         | **POST** /v1/deny-list/groups/remove |             |
| [**unblockUsers()**](DenyListApi.md#unblockUsers)           | **POST** /v1/deny-list/users/remove  |             |

## `blockGroups()`

```php
blockGroups($group_names_input)
```

Block Single or Multiple Groups

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DenyListApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$group_names_input = new \OpenAPI\Client\Model\GroupNamesInput(); // \OpenAPI\Client\Model\GroupNamesInput | List of group names as input

try {
    $apiInstance->blockGroups($group_names_input);
} catch (Exception $e) {
    echo 'Exception when calling DenyListApi->blockGroups: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                  | Type                                                                     | Description                  | Notes      |
| --------------------- | ------------------------------------------------------------------------ | ---------------------------- | ---------- |
| **group_names_input** | [**\OpenAPI\Client\Model\GroupNamesInput**](../Model/GroupNamesInput.md) | List of group names as input | [optional] |

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

## `blockUsers()`

```php
blockUsers($blocked_users_input)
```

Block Single or Multiple user ids

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DenyListApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$blocked_users_input = new \OpenAPI\Client\Model\BlockedUsersInput(); // \OpenAPI\Client\Model\BlockedUsersInput | List of blocked users as input

try {
    $apiInstance->blockUsers($blocked_users_input);
} catch (Exception $e) {
    echo 'Exception when calling DenyListApi->blockUsers: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                    | Type                                                                         | Description                    | Notes      |
| ----------------------- | ---------------------------------------------------------------------------- | ------------------------------ | ---------- |
| **blocked_users_input** | [**\OpenAPI\Client\Model\BlockedUsersInput**](../Model/BlockedUsersInput.md) | List of blocked users as input | [optional] |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listBlockedGroups()`

```php
listBlockedGroups($page_token): \OpenAPI\Client\Model\GroupNames
```

Get Blocked Groups

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DenyListApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$page_token = 'page_token_example'; // string

try {
    $result = $apiInstance->listBlockedGroups($page_token);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DenyListApi->listBlockedGroups: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name           | Type       | Description | Notes      |
| -------------- | ---------- | ----------- | ---------- |
| **page_token** | **string** |             | [optional] |

### Return type

[**\OpenAPI\Client\Model\GroupNames**](../Model/GroupNames.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listBlockedUsers()`

```php
listBlockedUsers($page_token): \OpenAPI\Client\Model\BlockedUsers
```

Get List of Blocked Users

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DenyListApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$page_token = 'page_token_example'; // string

try {
    $result = $apiInstance->listBlockedUsers($page_token);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DenyListApi->listBlockedUsers: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name           | Type       | Description | Notes      |
| -------------- | ---------- | ----------- | ---------- |
| **page_token** | **string** |             | [optional] |

### Return type

[**\OpenAPI\Client\Model\BlockedUsers**](../Model/BlockedUsers.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `unblockGroups()`

```php
unblockGroups($group_names_input)
```

Unblock Single or Multiple Groups

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DenyListApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$group_names_input = new \OpenAPI\Client\Model\GroupNamesInput(); // \OpenAPI\Client\Model\GroupNamesInput | List of group names as input

try {
    $apiInstance->unblockGroups($group_names_input);
} catch (Exception $e) {
    echo 'Exception when calling DenyListApi->unblockGroups: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                  | Type                                                                     | Description                  | Notes      |
| --------------------- | ------------------------------------------------------------------------ | ---------------------------- | ---------- |
| **group_names_input** | [**\OpenAPI\Client\Model\GroupNamesInput**](../Model/GroupNamesInput.md) | List of group names as input | [optional] |

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

## `unblockUsers()`

```php
unblockUsers($blocked_users_input)
```

Unblock Single or Multiple user ids

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DenyListApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$blocked_users_input = new \OpenAPI\Client\Model\BlockedUsersInput(); // \OpenAPI\Client\Model\BlockedUsersInput | List of blocked users as input

try {
    $apiInstance->unblockUsers($blocked_users_input);
} catch (Exception $e) {
    echo 'Exception when calling DenyListApi->unblockUsers: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                    | Type                                                                         | Description                    | Notes      |
| ----------------------- | ---------------------------------------------------------------------------- | ------------------------------ | ---------- |
| **blocked_users_input** | [**\OpenAPI\Client\Model\BlockedUsersInput**](../Model/BlockedUsersInput.md) | List of blocked users as input | [optional] |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
