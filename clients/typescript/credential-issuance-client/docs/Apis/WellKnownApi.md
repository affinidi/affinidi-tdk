# WellKnownApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                                                       | HTTP request                                                 | Description |
| -------------------------------------------------------------------------------------------- | ------------------------------------------------------------ | ----------- |
| [**getWellKnownOpenIdCredentialIssuer**](WellKnownApi.md#getWellKnownOpenIdCredentialIssuer) | **GET** /v1/{projectId}/.well-known/openid-credential-issuer |             |

<a name="getWellKnownOpenIdCredentialIssuer"></a>

# **getWellKnownOpenIdCredentialIssuer**

> WellKnownOpenIdCredentialIssuerResponse getWellKnownOpenIdCredentialIssuer(projectId)

### Parameters

| Name          | Type       | Description         | Notes             |
| ------------- | ---------- | ------------------- | ----------------- |
| **projectId** | **String** | Affinidi project id | [default to null] |

### Return type

[**WellKnownOpenIdCredentialIssuerResponse**](../Models/WellKnownOpenIdCredentialIssuerResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
