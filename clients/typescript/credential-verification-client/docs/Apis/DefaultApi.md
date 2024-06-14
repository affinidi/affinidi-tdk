# DefaultApi

All URIs are relative to *https://apse1.api.affinidi.io/ver*

| Method                                                     | HTTP request                     | Description  |
| ---------------------------------------------------------- | -------------------------------- | ------------ |
| [**verifyCredentials**](DefaultApi.md#verifyCredentials)   | **POST** /v1/verifier/verify-vcs | Verifying VC |
| [**verifyPresentation**](DefaultApi.md#verifyPresentation) | **POST** /v1/verifier/verify-vp  | Verifying VP |

<a name="verifyCredentials"></a>

# **verifyCredentials**

> VerifyCredentialOutput verifyCredentials(VerifyCredentialInput)

Verifying VC

    Verifying Verifiable Credentials (signatures)  &#x60;isValid&#x60; - true if all credentials verified &#x60;errors&#x60; contains list of error messages for invalid credentials.

### Parameters

| Name                      | Type                                                            | Description       | Notes |
| ------------------------- | --------------------------------------------------------------- | ----------------- | ----- |
| **VerifyCredentialInput** | [**VerifyCredentialInput**](../Models/VerifyCredentialInput.md) | VerifyCredentials |       |

### Return type

[**VerifyCredentialOutput**](../Models/VerifyCredentialOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="verifyPresentation"></a>

# **verifyPresentation**

> VerifyPresentationOutput verifyPresentation(VerifyPresentationInput)

Verifying VP

    Verifying Verifiable Presentation (signatures)  &#x60;isValid&#x60; - true if presentation verified &#x60;error&#x60; verificaction error.

### Parameters

| Name                        | Type                                                                | Description        | Notes |
| --------------------------- | ------------------------------------------------------------------- | ------------------ | ----- |
| **VerifyPresentationInput** | [**VerifyPresentationInput**](../Models/VerifyPresentationInput.md) | VerifyPresentation |       |

### Return type

[**VerifyPresentationOutput**](../Models/VerifyPresentationOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
