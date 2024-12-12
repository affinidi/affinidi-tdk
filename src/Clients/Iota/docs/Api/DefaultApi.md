# AffinidiTdk\Clients\Iota\DefaultApi

All URIs are relative to https://apse1.api.affinidi.io/ais, except if the operation defines another base path.

| Method                                                       | HTTP request                | Description |
| ------------------------------------------------------------ | --------------------------- | ----------- |
| [**listLoggedConsents()**](DefaultApi.md#listLoggedConsents) | **GET** /v1/logged-consents |             |

## `listLoggedConsents()`

```php
listLoggedConsents($configuration_id, $user_id, $limit, $exclusive_start_key): \AffinidiTdk\Clients\Iota\Model\ListLoggedConsentsOK
```

Lists all the logged consents for a project.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\Iota\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\Iota\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\Iota\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$configuration_id = 'configuration_id_example'; // string
$user_id = 'user_id_example'; // string
$limit = 56; // int | The maximum number of records to fetch from the list of logged consents.
$exclusive_start_key = 'exclusive_start_key_example'; // string | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.

try {
    $result = $apiInstance->listLoggedConsents($configuration_id, $user_id, $limit, $exclusive_start_key);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->listLoggedConsents: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                    | Type       | Description                                                                                                                                                    | Notes      |
| ----------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **configuration_id**    | **string** |                                                                                                                                                                | [optional] |
| **user_id**             | **string** |                                                                                                                                                                | [optional] |
| **limit**               | **int**    | The maximum number of records to fetch from the list of logged consents.                                                                                       | [optional] |
| **exclusive_start_key** | **string** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |

### Return type

[**\AffinidiTdk\Clients\Iota\Model\ListLoggedConsentsOK**](../Model/ListLoggedConsentsOK.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
