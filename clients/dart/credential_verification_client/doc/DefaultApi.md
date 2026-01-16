# affinidi_tdk_credential_verification_client.api.DefaultApi

## Load the API package

```dart
import 'package:affinidi_tdk_credential_verification_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/ver*

| Method                                                         | HTTP request                       | Description  |
| -------------------------------------------------------------- | ---------------------------------- | ------------ |
| [**verifyCredentials**](DefaultApi.md#verifycredentials)       | **POST** /v1/verifier/verify-vcs   | Verifying VC |
| [**verifyCredentialsV2**](DefaultApi.md#verifycredentialsv2)   | **POST** /v2/verifier/credentials  | Verifying VC |
| [**verifyPresentation**](DefaultApi.md#verifypresentation)     | **POST** /v1/verifier/verify-vp    | Verifying VP |
| [**verifyPresentationV2**](DefaultApi.md#verifypresentationv2) | **POST** /v2/verifier/presentation | Verifying VP |

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

# **verifyCredentialsV2**

> VerifyCredentialOutput verifyCredentialsV2(verifyCredentialV2Input)

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
final VerifyCredentialV2Input verifyCredentialV2Input = ; // VerifyCredentialV2Input | Request body for verifying VCs with separate JWT and LDP arrays

try {
    final response = api.verifyCredentialsV2(verifyCredentialV2Input);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->verifyCredentialsV2: $e\n');
}
```

### Parameters

| Name                        | Type                                                      | Description                                                     | Notes |
| --------------------------- | --------------------------------------------------------- | --------------------------------------------------------------- | ----- |
| **verifyCredentialV2Input** | [**VerifyCredentialV2Input**](VerifyCredentialV2Input.md) | Request body for verifying VCs with separate JWT and LDP arrays |

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

# **verifyPresentationV2**

> VerifyPresentationOutput verifyPresentationV2(verifyPresentationV2Input)

Verifying VP

Verifying Verifiable Presentation (signatures) Uses Presentation Exchange Query (pexQuery) structure for presentation definition and submission. Supports optional domain and challenge verification as per W3C VP standard. `isValid` - true if presentation verified `error` verificaction error.

### Example

```dart
import 'package:affinidi_tdk_credential_verification_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkCredentialVerificationClient().getDefaultApi();
final VerifyPresentationV2Input verifyPresentationV2Input = ; // VerifyPresentationV2Input | VerifyPresentationV2

try {
    final response = api.verifyPresentationV2(verifyPresentationV2Input);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->verifyPresentationV2: $e\n');
}
```

### Parameters

| Name                          | Type                                                          | Description          | Notes |
| ----------------------------- | ------------------------------------------------------------- | -------------------- | ----- |
| **verifyPresentationV2Input** | [**VerifyPresentationV2Input**](VerifyPresentationV2Input.md) | VerifyPresentationV2 |

### Return type

[**VerifyPresentationOutput**](VerifyPresentationOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
