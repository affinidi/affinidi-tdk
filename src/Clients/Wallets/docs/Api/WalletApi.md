# AffinidiTdk\Clients\Wallets\WalletApi

All URIs are relative to https://apse1.api.affinidi.io/cwe, except if the operation defines another base path.

| Method                                              | HTTP request                                    | Description |
| --------------------------------------------------- | ----------------------------------------------- | ----------- |
| [**createWallet()**](WalletApi.md#createWallet)     | **POST** /v1/wallets                            |             |
| [**deleteWallet()**](WalletApi.md#deleteWallet)     | **DELETE** /v1/wallets/{walletId}               |             |
| [**getWallet()**](WalletApi.md#getWallet)           | **GET** /v1/wallets/{walletId}                  |             |
| [**listWallets()**](WalletApi.md#listWallets)       | **GET** /v1/wallets                             |             |
| [**signCredential()**](WalletApi.md#signCredential) | **POST** /v1/wallets/{walletId}/sign-credential |             |
| [**signJwtToken()**](WalletApi.md#signJwtToken)     | **POST** /v1/wallets/{walletId}/sign-jwt        |             |
| [**updateWallet()**](WalletApi.md#updateWallet)     | **PATCH** /v1/wallets/{walletId}                |             |

## `createWallet()`

```php
createWallet($create_wallet_input): \AffinidiTdk\Clients\Wallets\Model\CreateWalletResponse
```

creates a wallet

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\Wallets\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\Wallets\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\Wallets\Api\WalletApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$create_wallet_input = new \AffinidiTdk\Clients\Wallets\Model\CreateWalletInput(); // \AffinidiTdk\Clients\Wallets\Model\CreateWalletInput | CreateWallet

try {
    $result = $apiInstance->createWallet($create_wallet_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WalletApi->createWallet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                    | Type                                                                                      | Description  | Notes      |
| ----------------------- | ----------------------------------------------------------------------------------------- | ------------ | ---------- |
| **create_wallet_input** | [**\AffinidiTdk\Clients\Wallets\Model\CreateWalletInput**](../Model/CreateWalletInput.md) | CreateWallet | [optional] |

### Return type

[**\AffinidiTdk\Clients\Wallets\Model\CreateWalletResponse**](../Model/CreateWalletResponse.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteWallet()`

```php
deleteWallet($wallet_id)
```

delete wallet by walletId

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\Wallets\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\Wallets\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\Wallets\Api\WalletApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$wallet_id = 'wallet_id_example'; // string | id of the wallet

try {
    $apiInstance->deleteWallet($wallet_id);
} catch (Exception $e) {
    echo 'Exception when calling WalletApi->deleteWallet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name          | Type       | Description      | Notes |
| ------------- | ---------- | ---------------- | ----- |
| **wallet_id** | **string** | id of the wallet |       |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getWallet()`

```php
getWallet($wallet_id): \AffinidiTdk\Clients\Wallets\Model\WalletDto
```

get wallet details using wallet Id.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\Wallets\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\Wallets\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\Wallets\Api\WalletApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$wallet_id = 'wallet_id_example'; // string | id of the wallet

try {
    $result = $apiInstance->getWallet($wallet_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WalletApi->getWallet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name          | Type       | Description      | Notes |
| ------------- | ---------- | ---------------- | ----- |
| **wallet_id** | **string** | id of the wallet |       |

### Return type

[**\AffinidiTdk\Clients\Wallets\Model\WalletDto**](../Model/WalletDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listWallets()`

```php
listWallets($did_type): \AffinidiTdk\Clients\Wallets\Model\WalletsListDto
```

lists all wallets

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\Wallets\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\Wallets\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\Wallets\Api\WalletApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$did_type = 'did_type_example'; // string

try {
    $result = $apiInstance->listWallets($did_type);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WalletApi->listWallets: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name         | Type       | Description | Notes      |
| ------------ | ---------- | ----------- | ---------- |
| **did_type** | **string** |             | [optional] |

### Return type

[**\AffinidiTdk\Clients\Wallets\Model\WalletsListDto**](../Model/WalletsListDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `signCredential()`

```php
signCredential($wallet_id, $sign_credential_input_dto): \AffinidiTdk\Clients\Wallets\Model\SignCredentialResultDto
```

signs credential with the wallet

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\Wallets\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\Wallets\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\Wallets\Api\WalletApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$wallet_id = 'wallet_id_example'; // string | id of the wallet
$sign_credential_input_dto = new \AffinidiTdk\Clients\Wallets\Model\SignCredentialInputDto(); // \AffinidiTdk\Clients\Wallets\Model\SignCredentialInputDto | SignCredential

try {
    $result = $apiInstance->signCredential($wallet_id, $sign_credential_input_dto);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WalletApi->signCredential: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                          | Type                                                                                                | Description      | Notes |
| ----------------------------- | --------------------------------------------------------------------------------------------------- | ---------------- | ----- |
| **wallet_id**                 | **string**                                                                                          | id of the wallet |       |
| **sign_credential_input_dto** | [**\AffinidiTdk\Clients\Wallets\Model\SignCredentialInputDto**](../Model/SignCredentialInputDto.md) | SignCredential   |       |

### Return type

[**\AffinidiTdk\Clients\Wallets\Model\SignCredentialResultDto**](../Model/SignCredentialResultDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `signJwtToken()`

```php
signJwtToken($wallet_id, $sign_jwt_token): \AffinidiTdk\Clients\Wallets\Model\SignJwtTokenOK
```

signs a jwt token with the wallet

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\Wallets\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\Wallets\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\Wallets\Api\WalletApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$wallet_id = 'wallet_id_example'; // string | id of the wallet.
$sign_jwt_token = new \AffinidiTdk\Clients\Wallets\Model\SignJwtToken(); // \AffinidiTdk\Clients\Wallets\Model\SignJwtToken | SignJwtToken

try {
    $result = $apiInstance->signJwtToken($wallet_id, $sign_jwt_token);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WalletApi->signJwtToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name               | Type                                                                            | Description       | Notes |
| ------------------ | ------------------------------------------------------------------------------- | ----------------- | ----- |
| **wallet_id**      | **string**                                                                      | id of the wallet. |       |
| **sign_jwt_token** | [**\AffinidiTdk\Clients\Wallets\Model\SignJwtToken**](../Model/SignJwtToken.md) | SignJwtToken      |       |

### Return type

[**\AffinidiTdk\Clients\Wallets\Model\SignJwtTokenOK**](../Model/SignJwtTokenOK.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateWallet()`

```php
updateWallet($wallet_id, $update_wallet_input): \AffinidiTdk\Clients\Wallets\Model\WalletDto
```

update wallet details using wallet Id.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\Wallets\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\Wallets\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\Wallets\Api\WalletApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$wallet_id = 'wallet_id_example'; // string | id of the wallet
$update_wallet_input = new \AffinidiTdk\Clients\Wallets\Model\UpdateWalletInput(); // \AffinidiTdk\Clients\Wallets\Model\UpdateWalletInput | UpdateWallet

try {
    $result = $apiInstance->updateWallet($wallet_id, $update_wallet_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WalletApi->updateWallet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                    | Type                                                                                      | Description      | Notes |
| ----------------------- | ----------------------------------------------------------------------------------------- | ---------------- | ----- |
| **wallet_id**           | **string**                                                                                | id of the wallet |       |
| **update_wallet_input** | [**\AffinidiTdk\Clients\Wallets\Model\UpdateWalletInput**](../Model/UpdateWalletInput.md) | UpdateWallet     |       |

### Return type

[**\AffinidiTdk\Clients\Wallets\Model\WalletDto**](../Model/WalletDto.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
