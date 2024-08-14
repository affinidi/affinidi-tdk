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
