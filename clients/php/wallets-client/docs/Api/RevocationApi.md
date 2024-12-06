# OpenAPI\Client\RevocationApi

All URIs are relative to https://apse1.api.affinidi.io/cwe, except if the operation defines another base path.

| Method                                                                                | HTTP request                                                                       | Description                        |
| ------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------- |
| [**getRevocationCredentialStatus()**](RevocationApi.md#getRevocationCredentialStatus) | **GET** /v1/projects/{projectId}/wallets/{walletId}/revocation-statuses/{statusId} |                                    |
| [**getRevocationListCredential()**](RevocationApi.md#getRevocationListCredential)     | **GET** /v1/wallets/{walletId}/revocation-list/{listId}                            | Return revocation list credential. |
| [**revokeCredential()**](RevocationApi.md#revokeCredential)                           | **POST** /v1/wallets/{walletId}/revoke                                             | Revoke Credential.                 |

## `getRevocationCredentialStatus()`

```php
getRevocationCredentialStatus($project_id, $wallet_id, $status_id): \OpenAPI\Client\Model\GetRevocationListCredentialResultDto
```

Get revocation status list as RevocationListCredential

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RevocationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 'project_id_example'; // string | Description for projectId.
$wallet_id = 'wallet_id_example'; // string | Description for walletId.
$status_id = 'status_id_example'; // string | Description for statusId.

try {
    $result = $apiInstance->getRevocationCredentialStatus($project_id, $wallet_id, $status_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RevocationApi->getRevocationCredentialStatus: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name           | Type       | Description                | Notes |
| -------------- | ---------- | -------------------------- | ----- |
| **project_id** | **string** | Description for projectId. |       |
| **wallet_id**  | **string** | Description for walletId.  |       |
| **status_id**  | **string** | Description for statusId.  |       |

### Return type

[**\OpenAPI\Client\Model\GetRevocationListCredentialResultDto**](../Model/GetRevocationListCredentialResultDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getRevocationListCredential()`

```php
getRevocationListCredential($list_id, $wallet_id): \OpenAPI\Client\Model\GetRevocationListCredentialResultDto
```

Return revocation list credential.

Get revocation list 2020 Credential (required to check if VC revoked). It is a public endpoint.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RevocationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$list_id = 'list_id_example'; // string
$wallet_id = 'wallet_id_example'; // string | id of the wallet

try {
    $result = $apiInstance->getRevocationListCredential($list_id, $wallet_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RevocationApi->getRevocationListCredential: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name          | Type       | Description      | Notes |
| ------------- | ---------- | ---------------- | ----- |
| **list_id**   | **string** |                  |       |
| **wallet_id** | **string** | id of the wallet |       |

### Return type

[**\OpenAPI\Client\Model\GetRevocationListCredentialResultDto**](../Model/GetRevocationListCredentialResultDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `revokeCredential()`

```php
revokeCredential($wallet_id, $revoke_credential_input)
```

Revoke Credential.

Update index/credetial at appropriate revocation list (set revoken is true).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\RevocationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$wallet_id = 'wallet_id_example'; // string | id of the wallet
$revoke_credential_input = new \OpenAPI\Client\Model\RevokeCredentialInput(); // \OpenAPI\Client\Model\RevokeCredentialInput | RevokeCredential

try {
    $apiInstance->revokeCredential($wallet_id, $revoke_credential_input);
} catch (Exception $e) {
    echo 'Exception when calling RevocationApi->revokeCredential: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                        | Type                                                                                 | Description      | Notes |
| --------------------------- | ------------------------------------------------------------------------------------ | ---------------- | ----- |
| **wallet_id**               | **string**                                                                           | id of the wallet |       |
| **revoke_credential_input** | [**\OpenAPI\Client\Model\RevokeCredentialInput**](../Model/RevokeCredentialInput.md) | RevokeCredential |       |

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
