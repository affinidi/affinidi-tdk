# affinidi_tdk_iota_client.api.IotaApi

## Load the API package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                          | HTTP request                          | Description |
| --------------------------------------------------------------- | ------------------------------------- | ----------- |
| [**awsExchangeCredentials**](IotaApi.md#awsexchangecredentials) | **POST** /v1/aws-exchange-credentials |

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
