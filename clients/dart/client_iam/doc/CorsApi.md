# openapi.api.CorsApi

## Load the API package

```dart
import 'package:openapi/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                                        | HTTP request                          | Description  |
| ----------------------------------------------------------------------------- | ------------------------------------- | ------------ |
| [**corsConsumerAuthTokenEndpoint**](CorsApi.md#corsconsumerauthtokenendpoint) | **OPTIONS** /v1/consumer/oauth2/token | CORS Support |

# **corsConsumerAuthTokenEndpoint**

> CorsConsumerAuthTokenEndpointOK corsConsumerAuthTokenEndpoint()

CORS Support

Enables CORS by returning correct headers

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = CorsApi();

try {
    final result = api_instance.corsConsumerAuthTokenEndpoint();
    print(result);
} catch (e) {
    print('Exception when calling CorsApi->corsConsumerAuthTokenEndpoint: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CorsConsumerAuthTokenEndpointOK**](CorsConsumerAuthTokenEndpointOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
