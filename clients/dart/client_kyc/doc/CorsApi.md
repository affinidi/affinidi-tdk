# openapi.api.CorsApi

## Load the API package

```dart
import 'package:openapi/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                              | HTTP request                 | Description  |
| ------------------------------------------------------------------- | ---------------------------- | ------------ |
| [**corsCompleteOtpOperation**](CorsApi.md#corscompleteotpoperation) | **OPTIONS** /v1/otp/complete | CORS Support |
| [**corsInitiateOtpOperation**](CorsApi.md#corsinitiateotpoperation) | **OPTIONS** /v1/otp/initiate | CORS Support |

# **corsCompleteOtpOperation**

> CorsCompleteOtpOperationOK corsCompleteOtpOperation()

CORS Support

Enables CORS by returning correct headers

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = CorsApi();

try {
    final result = api_instance.corsCompleteOtpOperation();
    print(result);
} catch (e) {
    print('Exception when calling CorsApi->corsCompleteOtpOperation: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CorsCompleteOtpOperationOK**](CorsCompleteOtpOperationOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **corsInitiateOtpOperation**

> CorsInitiateOtpOperationOK corsInitiateOtpOperation()

CORS Support

Enables CORS by returning correct headers

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = CorsApi();

try {
    final result = api_instance.corsInitiateOtpOperation();
    print(result);
} catch (e) {
    print('Exception when calling CorsApi->corsInitiateOtpOperation: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CorsInitiateOtpOperationOK**](CorsInitiateOtpOperationOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
