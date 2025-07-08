# DefaultApi

All URIs are relative to *https://apse1.api.affinidi.io/ver*

| Method                                        | HTTP request                     | Description  |
| --------------------------------------------- | -------------------------------- | ------------ |
| [**verifyCredentials**](#verifycredentials)   | **POST** /v1/verifier/verify-vcs | Verifying VC |
| [**verifyPresentation**](#verifypresentation) | **POST** /v1/verifier/verify-vp  | Verifying VP |

# **verifyCredentials**

> VerifyCredentialOutput verifyCredentials(verifyCredentialInput)

Verifying Verifiable Credentials (signatures) `isValid` - true if all credentials verified `errors` contains list of error messages for invalid credentials.

### Example

```typescript
import {
  DefaultApi,
  Configuration,
  VerifyCredentialInput,
} from '@affinidi-tdk/credential-verification-client'

const configuration = new Configuration()
const apiInstance = new DefaultApi(configuration)

let verifyCredentialInput: VerifyCredentialInput //VerifyCredentials

const { status, data } = await apiInstance.verifyCredentials(
  verifyCredentialInput,
)
```

### Parameters

| Name                      | Type                      | Description       | Notes |
| ------------------------- | ------------------------- | ----------------- | ----- |
| **verifyCredentialInput** | **VerifyCredentialInput** | VerifyCredentials |       |

### Return type

**VerifyCredentialOutput**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyPresentation**

> VerifyPresentationOutput verifyPresentation(verifyPresentationInput)

Verifying Verifiable Presentation (signatures) `isValid` - true if presentation verified `error` verificaction error.

### Example

```typescript
import {
  DefaultApi,
  Configuration,
  VerifyPresentationInput,
} from '@affinidi-tdk/credential-verification-client'

const configuration = new Configuration()
const apiInstance = new DefaultApi(configuration)

let verifyPresentationInput: VerifyPresentationInput //VerifyPresentation

const { status, data } = await apiInstance.verifyPresentation(
  verifyPresentationInput,
)
```

### Parameters

| Name                        | Type                        | Description        | Notes |
| --------------------------- | --------------------------- | ------------------ | ----- |
| **verifyPresentationInput** | **VerifyPresentationInput** | VerifyPresentation |       |

### Return type

**VerifyPresentationOutput**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
