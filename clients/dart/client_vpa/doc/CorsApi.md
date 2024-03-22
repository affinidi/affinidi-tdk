# openapi.api.CorsApi

## Load the API package

```dart
import 'package:openapi/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                                          | HTTP request                                               | Description  |
| ------------------------------------------------------------------------------- | ---------------------------------------------------------- | ------------ |
| [**corsLoginSessionAcceptResponse**](CorsApi.md#corsloginsessionacceptresponse) | **OPTIONS** /v1/login/sessions/{sessionId}/accept-response | CORS Support |
| [**corsLoginSessionForIdp**](CorsApi.md#corsloginsessionforidp)                 | **OPTIONS** /v1/login/sessions/for-idp                     | CORS Support |
| [**corsLoginSessionRejectResponse**](CorsApi.md#corsloginsessionrejectresponse) | **OPTIONS** /v1/login/sessions/{sessionId}/reject-response | CORS Support |

# **corsLoginSessionAcceptResponse**

> CorsLoginSessionAcceptResponseOK corsLoginSessionAcceptResponse()

CORS Support

Enables CORS by returning correct headers

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = CorsApi();

try {
    final result = api_instance.corsLoginSessionAcceptResponse();
    print(result);
} catch (e) {
    print('Exception when calling CorsApi->corsLoginSessionAcceptResponse: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CorsLoginSessionAcceptResponseOK**](CorsLoginSessionAcceptResponseOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **corsLoginSessionForIdp**

> CorsLoginSessionForIdpOK corsLoginSessionForIdp()

CORS Support

Enables CORS by returning correct headers

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = CorsApi();

try {
    final result = api_instance.corsLoginSessionForIdp();
    print(result);
} catch (e) {
    print('Exception when calling CorsApi->corsLoginSessionForIdp: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CorsLoginSessionForIdpOK**](CorsLoginSessionForIdpOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **corsLoginSessionRejectResponse**

> CorsLoginSessionRejectResponseOK corsLoginSessionRejectResponse()

CORS Support

Enables CORS by returning correct headers

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = CorsApi();

try {
    final result = api_instance.corsLoginSessionRejectResponse();
    print(result);
} catch (e) {
    print('Exception when calling CorsApi->corsLoginSessionRejectResponse: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CorsLoginSessionRejectResponseOK**](CorsLoginSessionRejectResponseOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
