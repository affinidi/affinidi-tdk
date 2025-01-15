# affinidi_tdk_credential_verification_client.api.DefaultApi

## Load the API package

```dart
import 'package:affinidi_tdk_credential_verification_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/ver*

| Method                                                     | HTTP request                     | Description  |
| ---------------------------------------------------------- | -------------------------------- | ------------ |
| [**verifyCredentials**](DefaultApi.md#verifycredentials)   | **POST** /v1/verifier/verify-vcs | Verifying VC |
| [**verifyPresentation**](DefaultApi.md#verifypresentation) | **POST** /v1/verifier/verify-vp  | Verifying VP |

# **verifyCredentials**

> VerifyCredentialOutput verifyCredentials(verifyCredentialInput)

Verifying VC

Verifying Verifiable Credentials (signatures) `isValid` - true if all credentials verified `errors` contains list of error messages for invalid credentials.

### Example

```dart
import 'package:affinidi_tdk_credential_verification_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkCredentialVerificationClient().getDefaultApi();
final VerifyCredentialInput verifyCredentialInput = ; // VerifyCredentialInput | VerifyCredentials

try {
    final response = api.verifyCredentials(verifyCredentialInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->verifyCredentials: $e\n');
}
```

### Parameters

| Name                      | Type                                                  | Description       | Notes |
| ------------------------- | ----------------------------------------------------- | ----------------- | ----- |
| **verifyCredentialInput** | [**VerifyCredentialInput**](VerifyCredentialInput.md) | VerifyCredentials |

### Return type

[**VerifyCredentialOutput**](VerifyCredentialOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyPresentation**

> VerifyPresentationOutput verifyPresentation(verifyPresentationInput)

Verifying VP

Verifying Verifiable Presentation (signatures) `isValid` - true if presentation verified `error` verificaction error.

### Example

```dart
import 'package:affinidi_tdk_credential_verification_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkCredentialVerificationClient().getDefaultApi();
final VerifyPresentationInput verifyPresentationInput = ; // VerifyPresentationInput | VerifyPresentation

try {
    final response = api.verifyPresentation(verifyPresentationInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->verifyPresentation: $e\n');
}
```

### Parameters

| Name                        | Type                                                      | Description        | Notes |
| --------------------------- | --------------------------------------------------------- | ------------------ | ----- |
| **verifyPresentationInput** | [**VerifyPresentationInput**](VerifyPresentationInput.md) | VerifyPresentation |

### Return type

[**VerifyPresentationOutput**](VerifyPresentationOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
