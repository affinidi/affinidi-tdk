# openapi.api.OtpApi

## Load the API package

```dart
import 'package:openapi/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                     | HTTP request              | Description |
| ---------------------------------------------------------- | ------------------------- | ----------- |
| [**completeOtpOperation**](OtpApi.md#completeotpoperation) | **POST** /v1/otp/complete |
| [**initiateOtpOperation**](OtpApi.md#initiateotpoperation) | **POST** /v1/otp/initiate |

# **completeOtpOperation**

> CompleteResponse completeOtpOperation(completeRequest)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = OtpApi();
final completeRequest = CompleteRequest(); // CompleteRequest | CompleteOtpOperation

try {
    final result = api_instance.completeOtpOperation(completeRequest);
    print(result);
} catch (e) {
    print('Exception when calling OtpApi->completeOtpOperation: $e\n');
}
```

### Parameters

| Name                | Type                                      | Description          | Notes |
| ------------------- | ----------------------------------------- | -------------------- | ----- |
| **completeRequest** | [**CompleteRequest**](CompleteRequest.md) | CompleteOtpOperation |

### Return type

[**CompleteResponse**](CompleteResponse.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initiateOtpOperation**

> InitiateResponse initiateOtpOperation(initiateRequest)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = OtpApi();
final initiateRequest = InitiateRequest(); // InitiateRequest | InitiateOtpOperation

try {
    final result = api_instance.initiateOtpOperation(initiateRequest);
    print(result);
} catch (e) {
    print('Exception when calling OtpApi->initiateOtpOperation: $e\n');
}
```

### Parameters

| Name                | Type                                      | Description          | Notes |
| ------------------- | ----------------------------------------- | -------------------- | ----- |
| **initiateRequest** | [**InitiateRequest**](InitiateRequest.md) | InitiateOtpOperation |

### Return type

[**InitiateResponse**](InitiateResponse.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
