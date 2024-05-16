# VerifierApi

All URIs are relative to _http://localhost_

| Method                                        | HTTP request                       | Description         |
| --------------------------------------------- | ---------------------------------- | ------------------- |
| [**validateJwt**](VerifierApi.md#validateJwt) | **POST** /v1/verifier/validate-jwt | Validates JWT token |

<a name="validateJwt"></a>

# **validateJwt**

> ValidateJwtOutput validateJwt(ValidateJwtInput)

Validates JWT token

    Validates JWT object.  returns   isValid: boolean   payload: payload from JWT

### Parameters

| Name                 | Type                                                  | Description | Notes |
| -------------------- | ----------------------------------------------------- | ----------- | ----- |
| **ValidateJwtInput** | [**ValidateJwtInput**](../Models/ValidateJwtInput.md) | ValidateJwt |       |

### Return type

[**ValidateJwtOutput**](../Models/ValidateJwtOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
