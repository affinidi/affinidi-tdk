# CredentialsApi

All URIs are relative to _http://localhost_

| Method                                                           | HTTP request                                 | Description |
| ---------------------------------------------------------------- | -------------------------------------------- | ----------- |
| [**deferredCredentials**](CredentialsApi.md#deferredCredentials) | **POST** /v1/{projectId}/deferred_credential |             |
| [**generateCredentials**](CredentialsApi.md#generateCredentials) | **POST** /v1/{projectId}/credential          |             |

<a name="deferredCredentials"></a>

# **deferredCredentials**

> CredentialResponseImmediate deferredCredentials(projectId, DeferredCredentialInput, authorization)

    Get deferred credential by &#x60;transaction_id&#x60;

### Parameters

| Name                        | Type                                                                | Description                          | Notes                        |
| --------------------------- | ------------------------------------------------------------------- | ------------------------------------ | ---------------------------- |
| **projectId**               | **String**                                                          | Affinidi project id                  | [default to null]            |
| **DeferredCredentialInput** | [**DeferredCredentialInput**](../Models/DeferredCredentialInput.md) | Request body of deferred credentials |                              |
| **authorization**           | **String**                                                          | Token from OID4VCI auth server       | [optional] [default to null] |

### Return type

[**CredentialResponseImmediate**](../Models/CredentialResponseImmediate.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="generateCredentials"></a>

# **generateCredentials**

> CredentialResponse generateCredentials(projectId, CreateCredentialInput, authorization)

    Issue credential for end user upon presentation a valid access token. Since we don&#39;t immediate issue credential It&#39;s expected to return &#x60;transaction_id&#x60; and use this &#x60;transaction_id&#x60; to get the deferred credentials

### Parameters

| Name                      | Type                                                            | Description                       | Notes                        |
| ------------------------- | --------------------------------------------------------------- | --------------------------------- | ---------------------------- |
| **projectId**             | **String**                                                      | Affinidi project id               | [default to null]            |
| **CreateCredentialInput** | [**CreateCredentialInput**](../Models/CreateCredentialInput.md) | Request body to issue credentials |                              |
| **authorization**         | **String**                                                      | Token from OID4VCI auth server    | [optional] [default to null] |

### Return type

[**CredentialResponse**](../Models/CredentialResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
