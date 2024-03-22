# openapi.api.XAffinidiTdkApi

## Load the API package

```dart
import 'package:openapi/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                                                | HTTP request                                   | Description                     |
| ------------------------------------------------------------------------------------- | ---------------------------------------------- | ------------------------------- |
| [**buildCredentialRequest**](XAffinidiTdkApi.md#buildcredentialrequest)               | **POST** /v1/verifier/build-credential-request | Builds credential share request |
| [**validateJwt**](XAffinidiTdkApi.md#validatejwt)                                     | **POST** /v1/verifier/validate-jwt             | Validates JWT token             |
| [**verifyCredentialShareResponse**](XAffinidiTdkApi.md#verifycredentialshareresponse) | **POST** /v1/verifier/verify-share-response    | Verifying share response token  |
| [**verifyCredentials**](XAffinidiTdkApi.md#verifycredentials)                         | **POST** /v1/verifier/verify-vcs               | Verifying VC                    |
| [**verifyPresentation**](XAffinidiTdkApi.md#verifypresentation)                       | **POST** /v1/verifier/verify-vp                | Verifying VP                    |

# **buildCredentialRequest**

> BuildCredentialRequestOutput buildCredentialRequest(buildCredentialRequestInput)

Builds credential share request

Build credential share request JWT object from input data.

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();
final buildCredentialRequestInput = BuildCredentialRequestInput(); // BuildCredentialRequestInput | BuildCredentialRequest

try {
    final result = api_instance.buildCredentialRequest(buildCredentialRequestInput);
    print(result);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->buildCredentialRequest: $e\n');
}
```

### Parameters

| Name                            | Type                                                              | Description            | Notes |
| ------------------------------- | ----------------------------------------------------------------- | ---------------------- | ----- |
| **buildCredentialRequestInput** | [**BuildCredentialRequestInput**](BuildCredentialRequestInput.md) | BuildCredentialRequest |

### Return type

[**BuildCredentialRequestOutput**](BuildCredentialRequestOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateJwt**

> ValidateJwtOutput validateJwt(validateJwtInput)

Validates JWT token

Validates JWT object. returns isValid: boolean payload: payload from JWT

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();
final validateJwtInput = ValidateJwtInput(); // ValidateJwtInput | ValidateJwt

try {
    final result = api_instance.validateJwt(validateJwtInput);
    print(result);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->validateJwt: $e\n');
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

# **verifyCredentialShareResponse**

> VerifyCredentialShareResponseOutput verifyCredentialShareResponse(verifyCredentialShareResponseInput)

Verifying share response token

Verifying JWT token (signature and expiration), validate each credential inside it (signature), validate response against request if requestToken was passed. `errors` contains list of error messages for invalid credentials.

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();
final verifyCredentialShareResponseInput = VerifyCredentialShareResponseInput(); // VerifyCredentialShareResponseInput | VerifyCredentialShareResponse

try {
    final result = api_instance.verifyCredentialShareResponse(verifyCredentialShareResponseInput);
    print(result);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->verifyCredentialShareResponse: $e\n');
}
```

### Parameters

| Name                                   | Type                                                                            | Description                   | Notes |
| -------------------------------------- | ------------------------------------------------------------------------------- | ----------------------------- | ----- |
| **verifyCredentialShareResponseInput** | [**VerifyCredentialShareResponseInput**](VerifyCredentialShareResponseInput.md) | VerifyCredentialShareResponse |

### Return type

[**VerifyCredentialShareResponseOutput**](VerifyCredentialShareResponseOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyCredentials**

> VerifyCredentialOutput verifyCredentials(verifyCredentialInput)

Verifying VC

Verifying Verifiable Credentials (signatures) `isValid` - true if all credentials verified `errors` contains list of error messages for invalid credentials.

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();
final verifyCredentialInput = VerifyCredentialInput(); // VerifyCredentialInput | VerifyCredentials

try {
    final result = api_instance.verifyCredentials(verifyCredentialInput);
    print(result);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->verifyCredentials: $e\n');
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
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();
final verifyPresentationInput = VerifyPresentationInput(); // VerifyPresentationInput | VerifyPresentation

try {
    final result = api_instance.verifyPresentation(verifyPresentationInput);
    print(result);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->verifyPresentation: $e\n');
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
