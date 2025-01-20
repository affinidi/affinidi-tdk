# affinidi_tdk_iota_client.api.IotaApi

## Load the API package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                                                  | HTTP request                                        | Description |
| --------------------------------------------------------------------------------------- | --------------------------------------------------- | ----------- |
| [**awsExchangeCredentials**](IotaApi.md#awsexchangecredentials)                         | **POST** /v1/aws-exchange-credentials               |
| [**awsExchangeCredentialsProjectToken**](IotaApi.md#awsexchangecredentialsprojecttoken) | **POST** /v1/aws-exchange-credentials/project-token |
| [**fetchIotaVpResponse**](IotaApi.md#fetchiotavpresponse)                               | **POST** /v1/fetch-iota-response                    |
| [**initiateDataSharingRequest**](IotaApi.md#initiatedatasharingrequest)                 | **POST** /v1/initiate-data-sharing-request          |
| [**iotaExchangeCredentials**](IotaApi.md#iotaexchangecredentials)                       | **POST** /v1/exchange-credentials                   |

# **awsExchangeCredentials**

> AwsExchangeCredentialsOK awsExchangeCredentials(awsExchangeCredentials)

Exchange a limited-scoped token into a Cognito credential to generate the identity credential. The identity credential initiates the secure WebSocket connection from the client. This method is used only in WebSocket data-sharing mode.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';

final api = AffinidiTdkIotaClient().getIotaApi();
final AwsExchangeCredentials awsExchangeCredentials = ; // AwsExchangeCredentials | AwsExchangeCredentials

try {
    final response = api.awsExchangeCredentials(awsExchangeCredentials);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IotaApi->awsExchangeCredentials: $e\n');
}
```

### Parameters

| Name                       | Type                                                    | Description            | Notes |
| -------------------------- | ------------------------------------------------------- | ---------------------- | ----- |
| **awsExchangeCredentials** | [**AwsExchangeCredentials**](AwsExchangeCredentials.md) | AwsExchangeCredentials |

### Return type

[**AwsExchangeCredentialsOK**](AwsExchangeCredentialsOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **awsExchangeCredentialsProjectToken**

> IotaExchangeCredentialsOK awsExchangeCredentialsProjectToken(awsExchangeCredentialsProjectToken)

Exchange a Project Scoped Token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIotaClient().getIotaApi();
final AwsExchangeCredentialsProjectToken awsExchangeCredentialsProjectToken = ; // AwsExchangeCredentialsProjectToken | AwsExchangeCredentialsProjectToken

try {
    final response = api.awsExchangeCredentialsProjectToken(awsExchangeCredentialsProjectToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IotaApi->awsExchangeCredentialsProjectToken: $e\n');
}
```

### Parameters

| Name                                   | Type                                                                            | Description                        | Notes |
| -------------------------------------- | ------------------------------------------------------------------------------- | ---------------------------------- | ----- |
| **awsExchangeCredentialsProjectToken** | [**AwsExchangeCredentialsProjectToken**](AwsExchangeCredentialsProjectToken.md) | AwsExchangeCredentialsProjectToken |

### Return type

[**IotaExchangeCredentialsOK**](IotaExchangeCredentialsOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fetchIotaVpResponse**

> FetchIOTAVPResponseOK fetchIotaVpResponse(fetchIOTAVPResponseInput)

Fetches the client's callback that contains the user's shared data in a Verifiable Presentation format after a successful data-sharing flow.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIotaClient().getIotaApi();
final FetchIOTAVPResponseInput fetchIOTAVPResponseInput = ; // FetchIOTAVPResponseInput | FetchIOTAVPResponseInput

try {
    final response = api.fetchIotaVpResponse(fetchIOTAVPResponseInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IotaApi->fetchIotaVpResponse: $e\n');
}
```

### Parameters

| Name                         | Type                                                        | Description              | Notes |
| ---------------------------- | ----------------------------------------------------------- | ------------------------ | ----- |
| **fetchIOTAVPResponseInput** | [**FetchIOTAVPResponseInput**](FetchIOTAVPResponseInput.md) | FetchIOTAVPResponseInput |

### Return type

[**FetchIOTAVPResponseOK**](FetchIOTAVPResponseOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initiateDataSharingRequest**

> InitiateDataSharingRequestOK initiateDataSharingRequest(initiateDataSharingRequestInput)

Generates the request token for the Redirect mode to initiate the data-sharing flow.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIotaClient().getIotaApi();
final InitiateDataSharingRequestInput initiateDataSharingRequestInput = ; // InitiateDataSharingRequestInput | InitiateDataSharingRequestInput

try {
    final response = api.initiateDataSharingRequest(initiateDataSharingRequestInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IotaApi->initiateDataSharingRequest: $e\n');
}
```

### Parameters

| Name                                | Type                                                                      | Description                     | Notes |
| ----------------------------------- | ------------------------------------------------------------------------- | ------------------------------- | ----- |
| **initiateDataSharingRequestInput** | [**InitiateDataSharingRequestInput**](InitiateDataSharingRequestInput.md) | InitiateDataSharingRequestInput |

### Return type

[**InitiateDataSharingRequestOK**](InitiateDataSharingRequestOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **iotaExchangeCredentials**

> IotaExchangeCredentialsOK iotaExchangeCredentials(iotaExchangeCredentials)

Exchange a limited-scoped token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';

final api = AffinidiTdkIotaClient().getIotaApi();
final IotaExchangeCredentials iotaExchangeCredentials = ; // IotaExchangeCredentials | IotaAwsExchangeCredentials

try {
    final response = api.iotaExchangeCredentials(iotaExchangeCredentials);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IotaApi->iotaExchangeCredentials: $e\n');
}
```

### Parameters

| Name                        | Type                                                      | Description                | Notes |
| --------------------------- | --------------------------------------------------------- | -------------------------- | ----- |
| **iotaExchangeCredentials** | [**IotaExchangeCredentials**](IotaExchangeCredentials.md) | IotaAwsExchangeCredentials |

### Return type

[**IotaExchangeCredentialsOK**](IotaExchangeCredentialsOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
