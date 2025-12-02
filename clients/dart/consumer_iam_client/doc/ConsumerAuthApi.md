# affinidi_tdk_consumer_iam_client.api.ConsumerAuthApi

## Load the API package

```dart
import 'package:affinidi_tdk_consumer_iam_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/cid*

| Method                                                                        | HTTP request                       | Description                           |
| ----------------------------------------------------------------------------- | ---------------------------------- | ------------------------------------- |
| [**consumerAuthTokenEndpoint**](ConsumerAuthApi.md#consumerauthtokenendpoint) | **POST** /v1/consumer/oauth2/token | The Consumer OAuth 2.0 Token Endpoint |

# **consumerAuthTokenEndpoint**

> ConsumerAuthTokenEndpointOutput consumerAuthTokenEndpoint(consumerAuthTokenEndpointInput)

The Consumer OAuth 2.0 Token Endpoint

### Example

```dart
import 'package:affinidi_tdk_consumer_iam_client/api.dart';

final api = AffinidiTdkConsumerIamClient().getConsumerAuthApi();
final ConsumerAuthTokenEndpointInput consumerAuthTokenEndpointInput = ; // ConsumerAuthTokenEndpointInput | ConsumerAuthTokenEndpoint

try {
    final response = api.consumerAuthTokenEndpoint(consumerAuthTokenEndpointInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsumerAuthApi->consumerAuthTokenEndpoint: $e\n');
}
```

### Parameters

| Name                               | Type                                                                    | Description               | Notes |
| ---------------------------------- | ----------------------------------------------------------------------- | ------------------------- | ----- |
| **consumerAuthTokenEndpointInput** | [**ConsumerAuthTokenEndpointInput**](ConsumerAuthTokenEndpointInput.md) | ConsumerAuthTokenEndpoint |

### Return type

[**ConsumerAuthTokenEndpointOutput**](ConsumerAuthTokenEndpointOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
