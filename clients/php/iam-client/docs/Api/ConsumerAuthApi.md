# AffinidiTdk\Clients\Iam\ConsumerAuthApi

All URIs are relative to https://apse1.api.affinidi.io/iam, except if the operation defines another base path.

| Method                                                                          | HTTP request                       | Description                           |
| ------------------------------------------------------------------------------- | ---------------------------------- | ------------------------------------- |
| [**consumerAuthTokenEndpoint()**](ConsumerAuthApi.md#consumerAuthTokenEndpoint) | **POST** /v1/consumer/oauth2/token | The Consumer OAuth 2.0 Token Endpoint |

## `consumerAuthTokenEndpoint()`

```php
consumerAuthTokenEndpoint($consumer_auth_token_endpoint_input): \AffinidiTdk\Clients\Iam\Model\ConsumerAuthTokenEndpointOutput
```

The Consumer OAuth 2.0 Token Endpoint

Use open source libraries to perform OAuth 2.0 and OpenID Connect available for any programming language. You can find a list of libraries here https://oauth.net/code/ The Ory SDK is not yet able to this endpoint properly.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new AffinidiTdk\Clients\Iam\Api\ConsumerAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$consumer_auth_token_endpoint_input = new \AffinidiTdk\Clients\Iam\Model\ConsumerAuthTokenEndpointInput(); // \AffinidiTdk\Clients\Iam\Model\ConsumerAuthTokenEndpointInput | ConsumerAuthTokenEndpoint

try {
    $result = $apiInstance->consumerAuthTokenEndpoint($consumer_auth_token_endpoint_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConsumerAuthApi->consumerAuthTokenEndpoint: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                                   | Type                                                                                                            | Description               | Notes |
| -------------------------------------- | --------------------------------------------------------------------------------------------------------------- | ------------------------- | ----- |
| **consumer_auth_token_endpoint_input** | [**\AffinidiTdk\Clients\Iam\Model\ConsumerAuthTokenEndpointInput**](../Model/ConsumerAuthTokenEndpointInput.md) | ConsumerAuthTokenEndpoint |       |

### Return type

[**\AffinidiTdk\Clients\Iam\Model\ConsumerAuthTokenEndpointOutput**](../Model/ConsumerAuthTokenEndpointOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
