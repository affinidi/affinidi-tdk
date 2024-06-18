# CredentialsApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                           | HTTP request                        | Description |
| ---------------------------------------------------------------- | ----------------------------------- | ----------- |
| [**generateCredentials**](CredentialsApi.md#generateCredentials) | **POST** /v1/{projectId}/credential |             |

<a name="generateCredentials"></a>

# **generateCredentials**

> CredentialResponse generateCredentials(projectId, CreateCredentialInput)

    Issue credential for end user upon presentation a valid access token. Since we don&#39;t immediate issue credential It&#39;s expected to return &#x60;transaction_id&#x60; and use this &#x60;transaction_id&#x60; to get the deferred credentials

### Parameters

| Name                      | Type                                                            | Description                       | Notes             |
| ------------------------- | --------------------------------------------------------------- | --------------------------------- | ----------------- |
| **projectId**             | **String**                                                      | Affinidi project id               | [default to null] |
| **CreateCredentialInput** | [**CreateCredentialInput**](../Models/CreateCredentialInput.md) | Request body to issue credentials |                   |

### Return type

[**CredentialResponse**](../Models/CredentialResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
