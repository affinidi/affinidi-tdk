# AffinidiTdk\Clients\CredentialIssuance\WellKnownApi

All URIs are relative to https://apse1.api.affinidi.io/cis, except if the operation defines another base path.

| Method                                                                                         | HTTP request                                                 | Description |
| ---------------------------------------------------------------------------------------------- | ------------------------------------------------------------ | ----------- |
| [**getWellKnownOpenIdCredentialIssuer()**](WellKnownApi.md#getWellKnownOpenIdCredentialIssuer) | **GET** /v1/{projectId}/.well-known/openid-credential-issuer |             |

## `getWellKnownOpenIdCredentialIssuer()`

```php
getWellKnownOpenIdCredentialIssuer($project_id): \AffinidiTdk\Clients\CredentialIssuance\Model\WellKnownOpenIdCredentialIssuerResponse
```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new AffinidiTdk\Clients\CredentialIssuance\Api\WellKnownApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$project_id = 'project_id_example'; // string | Affinidi project id

try {
    $result = $apiInstance->getWellKnownOpenIdCredentialIssuer($project_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WellKnownApi->getWellKnownOpenIdCredentialIssuer: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name           | Type       | Description         | Notes |
| -------------- | ---------- | ------------------- | ----- |
| **project_id** | **string** | Affinidi project id |       |

### Return type

[**\AffinidiTdk\Clients\CredentialIssuance\Model\WellKnownOpenIdCredentialIssuerResponse**](../Model/WellKnownOpenIdCredentialIssuerResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
