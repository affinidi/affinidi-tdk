# affinidi_tdk_iota_client.api.IotaApi

## Load the API package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                                                  | HTTP request                                                 | Description         |
| --------------------------------------------------------------------------------------- | ------------------------------------------------------------ | ------------------- |
| [**awsExchangeCredentials**](IotaApi.md#awsexchangecredentials)                         | **POST** /v1/aws-exchange-credentials                        |
| [**awsExchangeCredentialsProjectToken**](IotaApi.md#awsexchangecredentialsprojecttoken) | **POST** /v1/aws-exchange-credentials/project-token          |
| [**deletePexQueries**](IotaApi.md#deletepexqueries)                                     | **POST** /v1/configurations/{configurationId}/delete-queries | deletes pex queries |
| [**iotaExchangeCredentials**](IotaApi.md#iotaexchangecredentials)                       | **POST** /v1/exchange-credentials                            |
| [**savePexQueries**](IotaApi.md#savepexqueries)                                         | **POST** /v1/configurations/{configurationId}/save-queries   |

# **awsExchangeCredentials**

> AwsExchangeCredentialsOK awsExchangeCredentials(awsExchangeCredentials)

It exchanges limited token into cognito

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';

final api_instance = IotaApi();
final awsExchangeCredentials = AwsExchangeCredentials(); // AwsExchangeCredentials | AwsExchangeCredentials

try {
    final result = api_instance.awsExchangeCredentials(awsExchangeCredentials);
    print(result);
} catch (e) {
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

> AwsExchangeCredentialsOK awsExchangeCredentialsProjectToken(awsExchangeCredentialsProjectToken)

It exchanges project token into cognito

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = IotaApi();
final awsExchangeCredentialsProjectToken = AwsExchangeCredentialsProjectToken(); // AwsExchangeCredentialsProjectToken | AwsExchangeCredentialsProjectToken

try {
    final result = api_instance.awsExchangeCredentialsProjectToken(awsExchangeCredentialsProjectToken);
    print(result);
} catch (e) {
    print('Exception when calling IotaApi->awsExchangeCredentialsProjectToken: $e\n');
}
```

### Parameters

| Name                                   | Type                                                                            | Description                        | Notes |
| -------------------------------------- | ------------------------------------------------------------------------------- | ---------------------------------- | ----- |
| **awsExchangeCredentialsProjectToken** | [**AwsExchangeCredentialsProjectToken**](AwsExchangeCredentialsProjectToken.md) | AwsExchangeCredentialsProjectToken |

### Return type

[**AwsExchangeCredentialsOK**](AwsExchangeCredentialsOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePexQueries**

> deletePexQueries(configurationId)

deletes pex queries

deletes pex queries

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = IotaApi();
final configurationId = configurationId_example; // String | iotaConfiguration Id

try {
    api_instance.deletePexQueries(configurationId);
} catch (e) {
    print('Exception when calling IotaApi->deletePexQueries: $e\n');
}
```

### Parameters

| Name                | Type       | Description          | Notes |
| ------------------- | ---------- | -------------------- | ----- |
| **configurationId** | **String** | iotaConfiguration Id |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **iotaExchangeCredentials**

> IotaExchangeCredentialsOK iotaExchangeCredentials(iotaExchangeCredentials)

It exchanges limited token into cognito sts identity credentials

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';

final api_instance = IotaApi();
final iotaExchangeCredentials = IotaExchangeCredentials(); // IotaExchangeCredentials | IotaAwsExchangeCredentials

try {
    final result = api_instance.iotaExchangeCredentials(iotaExchangeCredentials);
    print(result);
} catch (e) {
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

# **savePexQueries**

> Object savePexQueries(configurationId, savePexQueriesUpdateInput)

saves all pex queries

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = IotaApi();
final configurationId = configurationId_example; // String | iotaConfiguration Id
final savePexQueriesUpdateInput = SavePexQueriesUpdateInput(); // SavePexQueriesUpdateInput | SavePexQueriesInput

try {
    final result = api_instance.savePexQueries(configurationId, savePexQueriesUpdateInput);
    print(result);
} catch (e) {
    print('Exception when calling IotaApi->savePexQueries: $e\n');
}
```

### Parameters

| Name                          | Type                                                          | Description          | Notes |
| ----------------------------- | ------------------------------------------------------------- | -------------------- | ----- |
| **configurationId**           | **String**                                                    | iotaConfiguration Id |
| **savePexQueriesUpdateInput** | [**SavePexQueriesUpdateInput**](SavePexQueriesUpdateInput.md) | SavePexQueriesInput  |

### Return type

[**Object**](Object.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
