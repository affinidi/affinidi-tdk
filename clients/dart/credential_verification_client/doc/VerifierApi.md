# affinidi_tdk_credential_verification_client.api.VerifierApi

## Load the API package

```dart
import 'package:affinidi_tdk_credential_verification_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/ver*

| Method                                        | HTTP request                       | Description         |
| --------------------------------------------- | ---------------------------------- | ------------------- |
| [**validateJwt**](VerifierApi.md#validatejwt) | **POST** /v1/verifier/validate-jwt | Validates JWT token |

# **validateJwt**

> ValidateJwtOutput validateJwt(validateJwtInput)

Validates JWT token

Validates JWT object. returns isValid: boolean payload: payload from JWT

### Example

```dart
import 'package:affinidi_tdk_credential_verification_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkCredentialVerificationClient().getVerifierApi();
final ValidateJwtInput validateJwtInput = ; // ValidateJwtInput | ValidateJwt

try {
    final response = api.validateJwt(validateJwtInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling VerifierApi->validateJwt: $e\n');
}
```

### Parameters

| Name                 | Type                                        | Description | Notes |
| -------------------- | ------------------------------------------- | ----------- | ----- |
| **validateJwtInput** | [**ValidateJwtInput**](ValidateJwtInput.md) | ValidateJwt |

### Return type

[**ValidateJwtOutput**](ValidateJwtOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
