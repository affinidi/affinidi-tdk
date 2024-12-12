# AffinidiTdk\Clients\Iota\IotaApi

All URIs are relative to https://apse1.api.affinidi.io/ais, except if the operation defines another base path.

| Method                                                                                    | HTTP request                                        | Description |
| ----------------------------------------------------------------------------------------- | --------------------------------------------------- | ----------- |
| [**awsExchangeCredentials()**](IotaApi.md#awsExchangeCredentials)                         | **POST** /v1/aws-exchange-credentials               |             |
| [**awsExchangeCredentialsProjectToken()**](IotaApi.md#awsExchangeCredentialsProjectToken) | **POST** /v1/aws-exchange-credentials/project-token |             |
| [**fetchIotaVpResponse()**](IotaApi.md#fetchIotaVpResponse)                               | **POST** /v1/fetch-iota-response                    |             |
| [**initiateDataSharingRequest()**](IotaApi.md#initiateDataSharingRequest)                 | **POST** /v1/initiate-data-sharing-request          |             |
| [**iotaExchangeCredentials()**](IotaApi.md#iotaExchangeCredentials)                       | **POST** /v1/exchange-credentials                   |             |

## `awsExchangeCredentials()`

```php
awsExchangeCredentials($aws_exchange_credentials): \AffinidiTdk\Clients\Iota\Model\AwsExchangeCredentialsOK
```

Exchange a limited-scoped token into a Cognito credential to generate the identity credential. The identity credential initiates the secure WebSocket connection from the client. This method is used only in WebSocket data-sharing mode.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new AffinidiTdk\Clients\Iota\Api\IotaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$aws_exchange_credentials = new \AffinidiTdk\Clients\Iota\Model\AwsExchangeCredentials(); // \AffinidiTdk\Clients\Iota\Model\AwsExchangeCredentials | AwsExchangeCredentials

try {
    $result = $apiInstance->awsExchangeCredentials($aws_exchange_credentials);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IotaApi->awsExchangeCredentials: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                         | Type                                                                                             | Description            | Notes |
| ---------------------------- | ------------------------------------------------------------------------------------------------ | ---------------------- | ----- |
| **aws_exchange_credentials** | [**\AffinidiTdk\Clients\Iota\Model\AwsExchangeCredentials**](../Model/AwsExchangeCredentials.md) | AwsExchangeCredentials |       |

### Return type

[**\AffinidiTdk\Clients\Iota\Model\AwsExchangeCredentialsOK**](../Model/AwsExchangeCredentialsOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `awsExchangeCredentialsProjectToken()`

```php
awsExchangeCredentialsProjectToken($aws_exchange_credentials_project_token): \AffinidiTdk\Clients\Iota\Model\IotaExchangeCredentialsOK
```

Exchange a Project Scoped Token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\Iota\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\Iota\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\Iota\Api\IotaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$aws_exchange_credentials_project_token = new \AffinidiTdk\Clients\Iota\Model\AwsExchangeCredentialsProjectToken(); // \AffinidiTdk\Clients\Iota\Model\AwsExchangeCredentialsProjectToken | AwsExchangeCredentialsProjectToken

try {
    $result = $apiInstance->awsExchangeCredentialsProjectToken($aws_exchange_credentials_project_token);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IotaApi->awsExchangeCredentialsProjectToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                                       | Type                                                                                                                     | Description                        | Notes |
| ------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ | ---------------------------------- | ----- |
| **aws_exchange_credentials_project_token** | [**\AffinidiTdk\Clients\Iota\Model\AwsExchangeCredentialsProjectToken**](../Model/AwsExchangeCredentialsProjectToken.md) | AwsExchangeCredentialsProjectToken |       |

### Return type

[**\AffinidiTdk\Clients\Iota\Model\IotaExchangeCredentialsOK**](../Model/IotaExchangeCredentialsOK.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `fetchIotaVpResponse()`

```php
fetchIotaVpResponse($fetch_iotavp_response_input): \AffinidiTdk\Clients\Iota\Model\FetchIOTAVPResponseOK
```

Fetches the client's callback that contains the user's shared data in a Verifiable Presentation format after a successful data-sharing flow.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\Iota\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\Iota\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\Iota\Api\IotaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$fetch_iotavp_response_input = new \AffinidiTdk\Clients\Iota\Model\FetchIOTAVPResponseInput(); // \AffinidiTdk\Clients\Iota\Model\FetchIOTAVPResponseInput | FetchIOTAVPResponseInput

try {
    $result = $apiInstance->fetchIotaVpResponse($fetch_iotavp_response_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IotaApi->fetchIotaVpResponse: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                            | Type                                                                                                 | Description              | Notes |
| ------------------------------- | ---------------------------------------------------------------------------------------------------- | ------------------------ | ----- |
| **fetch_iotavp_response_input** | [**\AffinidiTdk\Clients\Iota\Model\FetchIOTAVPResponseInput**](../Model/FetchIOTAVPResponseInput.md) | FetchIOTAVPResponseInput |       |

### Return type

[**\AffinidiTdk\Clients\Iota\Model\FetchIOTAVPResponseOK**](../Model/FetchIOTAVPResponseOK.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `initiateDataSharingRequest()`

```php
initiateDataSharingRequest($initiate_data_sharing_request_input): \AffinidiTdk\Clients\Iota\Model\InitiateDataSharingRequestOK
```

Generates the request token for the Redirect mode to initiate the data-sharing flow.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = AffinidiTdk\Clients\Iota\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = AffinidiTdk\Clients\Iota\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new AffinidiTdk\Clients\Iota\Api\IotaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$initiate_data_sharing_request_input = new \AffinidiTdk\Clients\Iota\Model\InitiateDataSharingRequestInput(); // \AffinidiTdk\Clients\Iota\Model\InitiateDataSharingRequestInput | InitiateDataSharingRequestInput

try {
    $result = $apiInstance->initiateDataSharingRequest($initiate_data_sharing_request_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IotaApi->initiateDataSharingRequest: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                                    | Type                                                                                                               | Description                     | Notes |
| --------------------------------------- | ------------------------------------------------------------------------------------------------------------------ | ------------------------------- | ----- |
| **initiate_data_sharing_request_input** | [**\AffinidiTdk\Clients\Iota\Model\InitiateDataSharingRequestInput**](../Model/InitiateDataSharingRequestInput.md) | InitiateDataSharingRequestInput |       |

### Return type

[**\AffinidiTdk\Clients\Iota\Model\InitiateDataSharingRequestOK**](../Model/InitiateDataSharingRequestOK.md)

### Authorization

[ProjectTokenAuth](../../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `iotaExchangeCredentials()`

```php
iotaExchangeCredentials($iota_exchange_credentials): \AffinidiTdk\Clients\Iota\Model\IotaExchangeCredentialsOK
```

Exchange a limited-scoped token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new AffinidiTdk\Clients\Iota\Api\IotaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$iota_exchange_credentials = new \AffinidiTdk\Clients\Iota\Model\IotaExchangeCredentials(); // \AffinidiTdk\Clients\Iota\Model\IotaExchangeCredentials | IotaAwsExchangeCredentials

try {
    $result = $apiInstance->iotaExchangeCredentials($iota_exchange_credentials);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IotaApi->iotaExchangeCredentials: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                          | Type                                                                                               | Description                | Notes |
| ----------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------- | ----- |
| **iota_exchange_credentials** | [**\AffinidiTdk\Clients\Iota\Model\IotaExchangeCredentials**](../Model/IotaExchangeCredentials.md) | IotaAwsExchangeCredentials |       |

### Return type

[**\AffinidiTdk\Clients\Iota\Model\IotaExchangeCredentialsOK**](../Model/IotaExchangeCredentialsOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
