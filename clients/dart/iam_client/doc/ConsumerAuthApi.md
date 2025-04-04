# affinidi_tdk_iam_client.api.ConsumerAuthApi

## Load the API package

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                                        | HTTP request                       | Description                           |
| ----------------------------------------------------------------------------- | ---------------------------------- | ------------------------------------- |
| [**consumerAuthTokenEndpoint**](ConsumerAuthApi.md#consumerauthtokenendpoint) | **POST** /v1/consumer/oauth2/token | The Consumer OAuth 2.0 Token Endpoint |

# **consumerAuthTokenEndpoint**

> ConsumerAuthTokenEndpointOutput consumerAuthTokenEndpoint(consumerAuthTokenEndpointInput)

The Consumer OAuth 2.0 Token Endpoint

Use open source libraries to perform OAuth 2.0 and OpenID Connect available for any programming language. You can find a list of libraries here https://oauth.net/code/ The Ory SDK is not yet able to this endpoint properly.

### Example

```dart
import 'package:affinidi_tdk_iam_client/api.dart';

final api = AffinidiTdkIamClient().getConsumerAuthApi();
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
