# TokensApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                      | HTTP request                          | Description |
| ----------------------------------------------------------- | ------------------------------------- | ----------- |
| [**createToken**](TokensApi.md#createToken)                 | **POST** /v1/tokens                   |             |
| [**deleteToken**](TokensApi.md#deleteToken)                 | **DELETE** /v1/tokens/{tokenId}       |             |
| [**getToken**](TokensApi.md#getToken)                       | **GET** /v1/tokens/{tokenId}          |             |
| [**listProjectsOfToken**](TokensApi.md#listProjectsOfToken) | **GET** /v1/tokens/{tokenId}/projects |             |
| [**listToken**](TokensApi.md#listToken)                     | **GET** /v1/tokens                    |             |
| [**updateToken**](TokensApi.md#updateToken)                 | **PATCH** /v1/tokens/{tokenId}        |             |

<a name="createToken"></a>

# **createToken**

> TokenDto createToken(CreateTokenInput)

### Parameters

| Name                 | Type                                                  | Description | Notes |
| -------------------- | ----------------------------------------------------- | ----------- | ----- |
| **CreateTokenInput** | [**CreateTokenInput**](../Models/CreateTokenInput.md) | CreateToken |       |

### Return type

[**TokenDto**](../Models/TokenDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteToken"></a>

# **deleteToken**

> deleteToken(tokenId)

### Parameters

| Name        | Type     | Description | Notes             |
| ----------- | -------- | ----------- | ----------------- |
| **tokenId** | **UUID** |             | [default to null] |

### Return type

null (empty response body)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getToken"></a>

# **getToken**

> TokenDto getToken(tokenId)

### Parameters

| Name        | Type     | Description | Notes             |
| ----------- | -------- | ----------- | ----------------- |
| **tokenId** | **UUID** |             | [default to null] |

### Return type

[**TokenDto**](../Models/TokenDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listProjectsOfToken"></a>

# **listProjectsOfToken**

> ProjectWithPolicyList listProjectsOfToken(tokenId, limit, exclusiveStartKey)

### Parameters

| Name                  | Type        | Description                                                                                                                                                    | Notes                        |
| --------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **tokenId**           | **UUID**    |                                                                                                                                                                | [default to null]            |
| **limit**             | **Integer** | Maximum number of records to fetch in a list                                                                                                                   | [optional] [default to 100]  |
| **exclusiveStartKey** | **String**  | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] [default to null] |

### Return type

[**ProjectWithPolicyList**](../Models/ProjectWithPolicyList.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listToken"></a>

# **listToken**

> TokenList listToken(limit, exclusiveStartKey)

### Parameters

| Name                  | Type        | Description                                                                                                                                                    | Notes                        |
| --------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **limit**             | **Integer** | Maximum number of records to fetch in a list                                                                                                                   | [optional] [default to 100]  |
| **exclusiveStartKey** | **String**  | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] [default to null] |

### Return type

[**TokenList**](../Models/TokenList.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateToken"></a>

# **updateToken**

> TokenDto updateToken(tokenId, UpdateTokenInput)

### Parameters

| Name                 | Type                                                  | Description | Notes             |
| -------------------- | ----------------------------------------------------- | ----------- | ----------------- |
| **tokenId**          | **UUID**                                              |             | [default to null] |
| **UpdateTokenInput** | [**UpdateTokenInput**](../Models/UpdateTokenInput.md) | UpdateToken |                   |

### Return type

[**TokenDto**](../Models/TokenDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
