# VerifierApi

All URIs are relative to *https://apse1.api.affinidi.io/ver*

| Method                          | HTTP request                       | Description         |
| ------------------------------- | ---------------------------------- | ------------------- |
| [**validateJwt**](#validatejwt) | **POST** /v1/verifier/validate-jwt | Validates JWT token |

# **validateJwt**

> ValidateJwtOutput validateJwt(validateJwtInput)

Validates JWT object. returns isValid: boolean payload: payload from JWT

### Example

```typescript
import {
  VerifierApi,
  Configuration,
  ValidateJwtInput,
} from '@affinidi-tdk/credential-verification-client'

const configuration = new Configuration()
const apiInstance = new VerifierApi(configuration)

let validateJwtInput: ValidateJwtInput //ValidateJwt

const { status, data } = await apiInstance.validateJwt(validateJwtInput)
```

### Parameters

| Name                 | Type                 | Description | Notes |
| -------------------- | -------------------- | ----------- | ----- |
| **validateJwtInput** | **ValidateJwtInput** | ValidateJwt |       |

### Return type

**ValidateJwtOutput**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | OK              | -                |
| **400**     | BadRequestError | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
