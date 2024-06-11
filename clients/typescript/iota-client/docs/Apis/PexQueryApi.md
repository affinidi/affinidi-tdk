# PexQueryApi

All URIs are relative to _http://localhost_

| Method                                                      | HTTP request                                                          | Description |
| ----------------------------------------------------------- | --------------------------------------------------------------------- | ----------- |
| [**createPexQuery**](PexQueryApi.md#createPexQuery)         | **POST** /v1/configurations/{configurationId}/pex-queries             |             |
| [**deletePexQueryById**](PexQueryApi.md#deletePexQueryById) | **DELETE** /v1/configurations/{configurationId}/pex-queries/{queryId} |             |
| [**getPexQueryById**](PexQueryApi.md#getPexQueryById)       | **GET** /v1/configurations/{configurationId}/pex-queries/{queryId}    |             |
| [**listPexQueries**](PexQueryApi.md#listPexQueries)         | **GET** /v1/configurations/{configurationId}/pex-queries              |             |
| [**updatePexQueryById**](PexQueryApi.md#updatePexQueryById) | **PATCH** /v1/configurations/{configurationId}/pex-queries/{queryId}  |             |

<a name="createPexQuery"></a>

# **createPexQuery**

> PexQueryDto createPexQuery(configurationId, CreatePexQueryInput)

### Parameters

| Name                    | Type                                                        | Description          | Notes             |
| ----------------------- | ----------------------------------------------------------- | -------------------- | ----------------- |
| **configurationId**     | **String**                                                  | iotaConfiguration Id | [default to null] |
| **CreatePexQueryInput** | [**CreatePexQueryInput**](../Models/CreatePexQueryInput.md) | CreatePexQuery       |                   |

### Return type

[**PexQueryDto**](../Models/PexQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deletePexQueryById"></a>

# **deletePexQueryById**

> deletePexQueryById(configurationId, queryId)

### Parameters

| Name                | Type       | Description          | Notes             |
| ------------------- | ---------- | -------------------- | ----------------- |
| **configurationId** | **String** | iotaConfiguration Id | [default to null] |
| **queryId**         | **String** | pex-query Id         | [default to null] |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPexQueryById"></a>

# **getPexQueryById**

> PexQueryDto getPexQueryById(configurationId, queryId)

### Parameters

| Name                | Type       | Description          | Notes             |
| ------------------- | ---------- | -------------------- | ----------------- |
| **configurationId** | **String** | iotaConfiguration Id | [default to null] |
| **queryId**         | **String** | pex-query Id         | [default to null] |

### Return type

[**PexQueryDto**](../Models/PexQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listPexQueries"></a>

# **listPexQueries**

> ListPexQueriesOK listPexQueries(configurationId)

### Parameters

| Name                | Type       | Description          | Notes             |
| ------------------- | ---------- | -------------------- | ----------------- |
| **configurationId** | **String** | iotaConfiguration Id | [default to null] |

### Return type

[**ListPexQueriesOK**](../Models/ListPexQueriesOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updatePexQueryById"></a>

# **updatePexQueryById**

> PexQueryDto updatePexQueryById(configurationId, queryId, UpdatePexQueryInput)

### Parameters

| Name                    | Type                                                        | Description          | Notes             |
| ----------------------- | ----------------------------------------------------------- | -------------------- | ----------------- |
| **configurationId**     | **String**                                                  | iotaConfiguration Id | [default to null] |
| **queryId**             | **String**                                                  | pex-query Id         | [default to null] |
| **UpdatePexQueryInput** | [**UpdatePexQueryInput**](../Models/UpdatePexQueryInput.md) | UpdatePexQueryById   |                   |

### Return type

[**PexQueryDto**](../Models/PexQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
