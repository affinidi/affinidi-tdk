# OpenAPI\Client\CredentialsApi

All URIs are relative to https://apse1.api.affinidi.io/cis, except if the operation defines another base path.

| Method                                                             | HTTP request                        | Description |
| ------------------------------------------------------------------ | ----------------------------------- | ----------- |
| [**generateCredentials()**](CredentialsApi.md#generateCredentials) | **POST** /v1/{projectId}/credential |             |

## `generateCredentials()`

```php
generateCredentials($project_id, $create_credential_input): \OpenAPI\Client\Model\CredentialResponse
```

Issue credential for end user upon presentation a valid access token. Since we don't immediate issue credential It's expected to return `transaction_id` and use this `transaction_id` to get the deferred credentials

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: bearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\CredentialsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 'project_id_example'; // string | Affinidi project id
$create_credential_input = new \OpenAPI\Client\Model\CreateCredentialInput(); // \OpenAPI\Client\Model\CreateCredentialInput | Request body to issue credentials

try {
    $result = $apiInstance->generateCredentials($project_id, $create_credential_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CredentialsApi->generateCredentials: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                        | Type                                                                                 | Description                       | Notes |
| --------------------------- | ------------------------------------------------------------------------------------ | --------------------------------- | ----- |
| **project_id**              | **string**                                                                           | Affinidi project id               |       |
| **create_credential_input** | [**\OpenAPI\Client\Model\CreateCredentialInput**](../Model/CreateCredentialInput.md) | Request body to issue credentials |       |

### Return type

[**\OpenAPI\Client\Model\CredentialResponse**](../Model/CredentialResponse.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
