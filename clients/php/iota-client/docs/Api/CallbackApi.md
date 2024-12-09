# AffinidiTdk\Clients\Iota\CallbackApi

All URIs are relative to https://apse1.api.affinidi.io/ais, except if the operation defines another base path.

| Method                                                        | HTTP request          | Description |
| ------------------------------------------------------------- | --------------------- | ----------- |
| [**iotOIDC4VPCallback()**](CallbackApi.md#iotOIDC4VPCallback) | **POST** /v1/callback |             |

## `iotOIDC4VPCallback()`

```php
iotOIDC4VPCallback($callback_input): \AffinidiTdk\Clients\Iota\Model\CallbackResponseOK
```

It handles the client's (e.g., Affinidi Vault) callback about the result of the data-sharing request. It may contain the data shared by the user, including the presentation submission, verification token, and state. Using the MQTT protocol, it communicates the completion of the request or if any error occurred.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new AffinidiTdk\Clients\Iota\Api\CallbackApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$callback_input = new \AffinidiTdk\Clients\Iota\Model\CallbackInput(); // \AffinidiTdk\Clients\Iota\Model\CallbackInput | CallbackRequestInput

try {
    $result = $apiInstance->iotOIDC4VPCallback($callback_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CallbackApi->iotOIDC4VPCallback: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name               | Type                                                                           | Description          | Notes |
| ------------------ | ------------------------------------------------------------------------------ | -------------------- | ----- |
| **callback_input** | [**\AffinidiTdk\Clients\Iota\Model\CallbackInput**](../Model/CallbackInput.md) | CallbackRequestInput |       |

### Return type

[**\AffinidiTdk\Clients\Iota\Model\CallbackResponseOK**](../Model/CallbackResponseOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
