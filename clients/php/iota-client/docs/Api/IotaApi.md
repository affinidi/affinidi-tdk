# OpenAPI\Client\IotaApi

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
awsExchangeCredentials($aws_exchange_credentials): \OpenAPI\Client\Model\AwsExchangeCredentialsOK
```

Exchange a limited-scoped token into a Cognito credential to generate the identity credential. The identity credential initiates the secure WebSocket connection from the client. This method is used only in WebSocket data-sharing mode.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\IotaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$aws_exchange_credentials = new \OpenAPI\Client\Model\AwsExchangeCredentials(); // \OpenAPI\Client\Model\AwsExchangeCredentials | AwsExchangeCredentials

try {
    $result = $apiInstance->awsExchangeCredentials($aws_exchange_credentials);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IotaApi->awsExchangeCredentials: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                         | Type                                                                                   | Description            | Notes |
| ---------------------------- | -------------------------------------------------------------------------------------- | ---------------------- | ----- |
| **aws_exchange_credentials** | [**\OpenAPI\Client\Model\AwsExchangeCredentials**](../Model/AwsExchangeCredentials.md) | AwsExchangeCredentials |       |

### Return type

[**\OpenAPI\Client\Model\AwsExchangeCredentialsOK**](../Model/AwsExchangeCredentialsOK.md)

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
awsExchangeCredentialsProjectToken($aws_exchange_credentials_project_token): \OpenAPI\Client\Model\IotaExchangeCredentialsOK
```

Exchange a Project Scoped Token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\IotaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$aws_exchange_credentials_project_token = new \OpenAPI\Client\Model\AwsExchangeCredentialsProjectToken(); // \OpenAPI\Client\Model\AwsExchangeCredentialsProjectToken | AwsExchangeCredentialsProjectToken

try {
    $result = $apiInstance->awsExchangeCredentialsProjectToken($aws_exchange_credentials_project_token);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IotaApi->awsExchangeCredentialsProjectToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                                       | Type                                                                                                           | Description                        | Notes |
| ------------------------------------------ | -------------------------------------------------------------------------------------------------------------- | ---------------------------------- | ----- |
| **aws_exchange_credentials_project_token** | [**\OpenAPI\Client\Model\AwsExchangeCredentialsProjectToken**](../Model/AwsExchangeCredentialsProjectToken.md) | AwsExchangeCredentialsProjectToken |       |

### Return type

[**\OpenAPI\Client\Model\IotaExchangeCredentialsOK**](../Model/IotaExchangeCredentialsOK.md)

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
fetchIotaVpResponse($fetch_iotavp_response_input): \OpenAPI\Client\Model\FetchIOTAVPResponseOK
```

Fetches the client's callback that contains the user's shared data in a Verifiable Presentation format after a successful data-sharing flow.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\IotaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$fetch_iotavp_response_input = new \OpenAPI\Client\Model\FetchIOTAVPResponseInput(); // \OpenAPI\Client\Model\FetchIOTAVPResponseInput | FetchIOTAVPResponseInput

try {
    $result = $apiInstance->fetchIotaVpResponse($fetch_iotavp_response_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IotaApi->fetchIotaVpResponse: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                            | Type                                                                                       | Description              | Notes |
| ------------------------------- | ------------------------------------------------------------------------------------------ | ------------------------ | ----- |
| **fetch_iotavp_response_input** | [**\OpenAPI\Client\Model\FetchIOTAVPResponseInput**](../Model/FetchIOTAVPResponseInput.md) | FetchIOTAVPResponseInput |       |

### Return type

[**\OpenAPI\Client\Model\FetchIOTAVPResponseOK**](../Model/FetchIOTAVPResponseOK.md)

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
initiateDataSharingRequest($initiate_data_sharing_request_input): \OpenAPI\Client\Model\InitiateDataSharingRequestOK
```

Generates the request token for the Redirect mode to initiate the data-sharing flow.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\IotaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$initiate_data_sharing_request_input = new \OpenAPI\Client\Model\InitiateDataSharingRequestInput(); // \OpenAPI\Client\Model\InitiateDataSharingRequestInput | InitiateDataSharingRequestInput

try {
    $result = $apiInstance->initiateDataSharingRequest($initiate_data_sharing_request_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IotaApi->initiateDataSharingRequest: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                                    | Type                                                                                                     | Description                     | Notes |
| --------------------------------------- | -------------------------------------------------------------------------------------------------------- | ------------------------------- | ----- |
| **initiate_data_sharing_request_input** | [**\OpenAPI\Client\Model\InitiateDataSharingRequestInput**](../Model/InitiateDataSharingRequestInput.md) | InitiateDataSharingRequestInput |       |

### Return type

[**\OpenAPI\Client\Model\InitiateDataSharingRequestOK**](../Model/InitiateDataSharingRequestOK.md)

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
iotaExchangeCredentials($iota_exchange_credentials): \OpenAPI\Client\Model\IotaExchangeCredentialsOK
```

Exchange a limited-scoped token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\IotaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$iota_exchange_credentials = new \OpenAPI\Client\Model\IotaExchangeCredentials(); // \OpenAPI\Client\Model\IotaExchangeCredentials | IotaAwsExchangeCredentials

try {
    $result = $apiInstance->iotaExchangeCredentials($iota_exchange_credentials);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IotaApi->iotaExchangeCredentials: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name                          | Type                                                                                     | Description                | Notes |
| ----------------------------- | ---------------------------------------------------------------------------------------- | -------------------------- | ----- |
| **iota_exchange_credentials** | [**\OpenAPI\Client\Model\IotaExchangeCredentials**](../Model/IotaExchangeCredentials.md) | IotaAwsExchangeCredentials |       |

### Return type

[**\OpenAPI\Client\Model\IotaExchangeCredentialsOK**](../Model/IotaExchangeCredentialsOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
