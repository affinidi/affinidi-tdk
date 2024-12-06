# OpenAPI\Client\GroupApi

All URIs are relative to https://apse1.api.affinidi.io/vpa, except if the operation defines another base path.

| Method                                                           | HTTP request                            | Description |
| ---------------------------------------------------------------- | --------------------------------------- | ----------- |
| [**addUserToGroup()**](GroupApi.md#addUserToGroup)               | **POST** /v1/groups/{groupName}/users   |             |
| [**createGroup()**](GroupApi.md#createGroup)                     | **POST** /v1/groups                     |             |
| [**deleteGroup()**](GroupApi.md#deleteGroup)                     | **DELETE** /v1/groups/{groupName}       |             |
| [**getGroupById()**](GroupApi.md#getGroupById)                   | **GET** /v1/groups/{groupName}          |             |
| [**listGroupUserMappings()**](GroupApi.md#listGroupUserMappings) | **GET** /v1/groups/{groupName}/users    |             |
| [**listGroups()**](GroupApi.md#listGroups)                       | **GET** /v1/groups                      |             |
| [**removeUserFromGroup()**](GroupApi.md#removeUserFromGroup)     | **DELETE** /v1/groups/{groupName}/users |             |

## `addUserToGroup()`

```php
addUserToGroup($group_name, $add_user_to_group_input): \OpenAPI\Client\Model\GroupUserMappingDto
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\GroupApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$group_name = 'group_name_example'; // string
$add_user_to_group_input = new \OpenAPI\Client\Model\AddUserToGroupInput(); // \OpenAPI\Client\Model\AddUserToGroupInput | AddUserToGroup

try {
    $result = $apiInstance->addUserToGroup($group_name, $add_user_to_group_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GroupApi->addUserToGroup: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                        | Type                                                                             | Description    | Notes |
| --------------------------- | -------------------------------------------------------------------------------- | -------------- | ----- |
| **group_name**              | **string**                                                                       |                |       |
| **add_user_to_group_input** | [**\OpenAPI\Client\Model\AddUserToGroupInput**](../Model/AddUserToGroupInput.md) | AddUserToGroup |       |

### Return type

[**\OpenAPI\Client\Model\GroupUserMappingDto**](../Model/GroupUserMappingDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `createGroup()`

```php
createGroup($create_group_input): \OpenAPI\Client\Model\GroupDto
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\GroupApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$create_group_input = new \OpenAPI\Client\Model\CreateGroupInput(); // \OpenAPI\Client\Model\CreateGroupInput | CreateGroup

try {
    $result = $apiInstance->createGroup($create_group_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GroupApi->createGroup: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                   | Type                                                                       | Description | Notes |
| ---------------------- | -------------------------------------------------------------------------- | ----------- | ----- |
| **create_group_input** | [**\OpenAPI\Client\Model\CreateGroupInput**](../Model/CreateGroupInput.md) | CreateGroup |       |

### Return type

[**\OpenAPI\Client\Model\GroupDto**](../Model/GroupDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteGroup()`

```php
deleteGroup($group_name)
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\GroupApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$group_name = 'group_name_example'; // string

try {
    $apiInstance->deleteGroup($group_name);
} catch (Exception $e) {
    echo 'Exception when calling GroupApi->deleteGroup: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name           | Type       | Description | Notes |
| -------------- | ---------- | ----------- | ----- |
| **group_name** | **string** |             |       |

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

## `getGroupById()`

```php
getGroupById($group_name): \OpenAPI\Client\Model\GroupDto
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\GroupApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$group_name = 'group_name_example'; // string

try {
    $result = $apiInstance->getGroupById($group_name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GroupApi->getGroupById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name           | Type       | Description | Notes |
| -------------- | ---------- | ----------- | ----- |
| **group_name** | **string** |             |       |

### Return type

[**\OpenAPI\Client\Model\GroupDto**](../Model/GroupDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listGroupUserMappings()`

```php
listGroupUserMappings($group_name, $limit, $exclusive_start_key, $sort_order): \OpenAPI\Client\Model\GroupUserMappingsList
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\GroupApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$group_name = 'group_name_example'; // string
$limit = 56; // int | Maximum number of records to fetch in a list
$exclusive_start_key = 'exclusive_start_key_example'; // string | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
$sort_order = 'sort_order_example'; // string | sort response in specific order. By default it is in desc order

try {
    $result = $apiInstance->listGroupUserMappings($group_name, $limit, $exclusive_start_key, $sort_order);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GroupApi->listGroupUserMappings: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                    | Type       | Description                                                                                                                                                    | Notes      |
| ----------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **group_name**          | **string** |                                                                                                                                                                |            |
| **limit**               | **int**    | Maximum number of records to fetch in a list                                                                                                                   | [optional] |
| **exclusive_start_key** | **string** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |
| **sort_order**          | **string** | sort response in specific order. By default it is in desc order                                                                                                | [optional] |

### Return type

[**\OpenAPI\Client\Model\GroupUserMappingsList**](../Model/GroupUserMappingsList.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listGroups()`

```php
listGroups(): \OpenAPI\Client\Model\GroupsList
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\GroupApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->listGroups();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GroupApi->listGroups: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\GroupsList**](../Model/GroupsList.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `removeUserFromGroup()`

```php
removeUserFromGroup($group_name, $remove_user_from_group_input)
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\GroupApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$group_name = 'group_name_example'; // string
$remove_user_from_group_input = new \OpenAPI\Client\Model\RemoveUserFromGroupInput(); // \OpenAPI\Client\Model\RemoveUserFromGroupInput | Remove user from group

try {
    $apiInstance->removeUserFromGroup($group_name, $remove_user_from_group_input);
} catch (Exception $e) {
    echo 'Exception when calling GroupApi->removeUserFromGroup: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                             | Type                                                                                       | Description            | Notes |
| -------------------------------- | ------------------------------------------------------------------------------------------ | ---------------------- | ----- |
| **group_name**                   | **string**                                                                                 |                        |       |
| **remove_user_from_group_input** | [**\OpenAPI\Client\Model\RemoveUserFromGroupInput**](../Model/RemoveUserFromGroupInput.md) | Remove user from group |       |

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
