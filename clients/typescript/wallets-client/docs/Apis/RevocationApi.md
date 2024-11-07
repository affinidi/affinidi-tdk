# RevocationApi

All URIs are relative to *https://apse1.api.affinidi.io/cwe*

| Method                                                                              | HTTP request                                                                       | Description                        |
| ----------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------- |
| [**getRevocationCredentialStatus**](RevocationApi.md#getRevocationCredentialStatus) | **GET** /v1/projects/{projectId}/wallets/{walletId}/revocation-statuses/{statusId} |                                    |
| [**getRevocationListCredential**](RevocationApi.md#getRevocationListCredential)     | **GET** /v1/wallets/{walletId}/revocation-list/{listId}                            | Return revocation list credential. |
| [**revokeCredential**](RevocationApi.md#revokeCredential)                           | **POST** /v1/wallets/{walletId}/revoke                                             | Revoke Credential.                 |

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

<a name="getRevocationListCredential"></a>

# **getRevocationListCredential**

> GetRevocationListCredentialResultDto getRevocationListCredential(listId, walletId)

Return revocation list credential.

    Get revocation list 2020 Credential (required to check if VC revoked). It is a public endpoint.

### Parameters

| Name         | Type       | Description      | Notes             |
| ------------ | ---------- | ---------------- | ----------------- |
| **listId**   | **String** |                  | [default to null] |
| **walletId** | **String** | id of the wallet | [default to null] |

### Return type

[**GetRevocationListCredentialResultDto**](../Models/GetRevocationListCredentialResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="revokeCredential"></a>

# **revokeCredential**

> revokeCredential(walletId, RevokeCredentialInput)

Revoke Credential.

    Update index/credetial at appropriate revocation list (set revoken is true).

### Parameters

| Name                      | Type                                                            | Description      | Notes             |
| ------------------------- | --------------------------------------------------------------- | ---------------- | ----------------- |
| **walletId**              | **String**                                                      | id of the wallet | [default to null] |
| **RevokeCredentialInput** | [**RevokeCredentialInput**](../Models/RevokeCredentialInput.md) | RevokeCredential |                   |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
