# DefaultApi

All URIs are relative to _http://localhost_

| Method                                                                           | HTTP request                                                                       | Description |
| -------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ----------- |
| [**getRevocationCredentialStatus**](DefaultApi.md#getRevocationCredentialStatus) | **GET** /v1/projects/{projectId}/wallets/{walletId}/revocation-statuses/{statusId} |             |

<a name="getRevocationCredentialStatus"></a>

# **getRevocationCredentialStatus**

> GetRevocationListCredentialResultDto getRevocationCredentialStatus(projectId, walletId, statusId)

    Get revocation status list as RevocationListCredential

### Parameters

| Name          | Type       | Description                | Notes             |
| ------------- | ---------- | -------------------------- | ----------------- |
| **projectId** | **String** | Description for projectId. | [default to null] |
| **walletId**  | **String** | Description for walletId.  | [default to null] |
| **statusId**  | **String** | Description for statusId.  | [default to null] |

### Return type

[**GetRevocationListCredentialResultDto**](../Models/GetRevocationListCredentialResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
