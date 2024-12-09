# AffinidiTdk\Clients\CredentialVerification\DefaultApi

All URIs are relative to https://apse1.api.affinidi.io/ver, except if the operation defines another base path.

| Method                                                       | HTTP request                     | Description  |
| ------------------------------------------------------------ | -------------------------------- | ------------ |
| [**verifyCredentials()**](DefaultApi.md#verifyCredentials)   | **POST** /v1/verifier/verify-vcs | Verifying VC |
| [**verifyPresentation()**](DefaultApi.md#verifyPresentation) | **POST** /v1/verifier/verify-vp  | Verifying VP |

## `verifyCredentials()`

```php
verifyCredentials($verify_credential_input): \AffinidiTdk\Clients\CredentialVerification\Model\VerifyCredentialOutput
```

Verifying VC

Verifying Verifiable Credentials (signatures) `isValid` - true if all credentials verified `errors` contains list of error messages for invalid credentials.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\CredentialVerification\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\CredentialVerification\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\CredentialVerification\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$verify_credential_input = new \AffinidiTdk\Clients\CredentialVerification\Model\VerifyCredentialInput(); // \AffinidiTdk\Clients\CredentialVerification\Model\VerifyCredentialInput | VerifyCredentials

try {
    $result = $apiInstance->verifyCredentials($verify_credential_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->verifyCredentials: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                        | Type                                                                                                             | Description       | Notes |
| --------------------------- | ---------------------------------------------------------------------------------------------------------------- | ----------------- | ----- |
| **verify_credential_input** | [**\AffinidiTdk\Clients\CredentialVerification\Model\VerifyCredentialInput**](../Model/VerifyCredentialInput.md) | VerifyCredentials |       |

### Return type

[**\AffinidiTdk\Clients\CredentialVerification\Model\VerifyCredentialOutput**](../Model/VerifyCredentialOutput.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `verifyPresentation()`

```php
verifyPresentation($verify_presentation_input): \AffinidiTdk\Clients\CredentialVerification\Model\VerifyPresentationOutput
```

Verifying VP

Verifying Verifiable Presentation (signatures) `isValid` - true if presentation verified `error` verificaction error.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\CredentialVerification\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\CredentialVerification\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\CredentialVerification\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$verify_presentation_input = new \AffinidiTdk\Clients\CredentialVerification\Model\VerifyPresentationInput(); // \AffinidiTdk\Clients\CredentialVerification\Model\VerifyPresentationInput | VerifyPresentation

try {
    $result = $apiInstance->verifyPresentation($verify_presentation_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->verifyPresentation: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                          | Type                                                                                                                 | Description        | Notes |
| ----------------------------- | -------------------------------------------------------------------------------------------------------------------- | ------------------ | ----- |
| **verify_presentation_input** | [**\AffinidiTdk\Clients\CredentialVerification\Model\VerifyPresentationInput**](../Model/VerifyPresentationInput.md) | VerifyPresentation |       |

### Return type

[**\AffinidiTdk\Clients\CredentialVerification\Model\VerifyPresentationOutput**](../Model/VerifyPresentationOutput.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
