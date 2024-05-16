# affinidi_tdk_credential_verification_client.api.DefaultApi

## Load the API package

```dart
import 'package:affinidi_tdk_credential_verification_client/api.dart';
```

All URIs are relative to _http://localhost_

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

final api_instance = DefaultApi();
final verifyCredentialInput = VerifyCredentialInput(); // VerifyCredentialInput | VerifyCredentials

try {
    final result = api_instance.verifyCredentials(verifyCredentialInput);
    print(result);
} catch (e) {
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

final api_instance = DefaultApi();
final verifyPresentationInput = VerifyPresentationInput(); // VerifyPresentationInput | VerifyPresentation

try {
    final result = api_instance.verifyPresentation(verifyPresentationInput);
    print(result);
} catch (e) {
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
