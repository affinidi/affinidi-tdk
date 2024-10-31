# PexQueryApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                      | HTTP request                                                          | Description         |
| ----------------------------------------------------------- | --------------------------------------------------------------------- | ------------------- |
| [**createPexQuery**](PexQueryApi.md#createPexQuery)         | **POST** /v1/configurations/{configurationId}/pex-queries             |                     |
| [**deletePexQueries**](PexQueryApi.md#deletePexQueries)     | **POST** /v1/configurations/{configurationId}/delete-queries          | deletes pex queries |
| [**deletePexQueryById**](PexQueryApi.md#deletePexQueryById) | **DELETE** /v1/configurations/{configurationId}/pex-queries/{queryId} |                     |
| [**getPexQueryById**](PexQueryApi.md#getPexQueryById)       | **GET** /v1/configurations/{configurationId}/pex-queries/{queryId}    |                     |
| [**listPexQueries**](PexQueryApi.md#listPexQueries)         | **GET** /v1/configurations/{configurationId}/pex-queries              |                     |
| [**savePexQueries**](PexQueryApi.md#savePexQueries)         | **POST** /v1/configurations/{configurationId}/save-queries            |                     |
| [**updatePexQueryById**](PexQueryApi.md#updatePexQueryById) | **PATCH** /v1/configurations/{configurationId}/pex-queries/{queryId}  |                     |

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

<a name="deletePexQueries"></a>

# **deletePexQueries**

> deletePexQueries(configurationId)

deletes pex queries

    deletes pex queries

### Parameters

| Name                | Type       | Description          | Notes             |
| ------------------- | ---------- | -------------------- | ----------------- |
| **configurationId** | **String** | iotaConfiguration Id | [default to null] |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
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

> ListPexQueriesOK listPexQueries(configurationId, limit, exclusiveStartKey)

### Parameters

| Name                  | Type        | Description                                                                                                                                                    | Notes                        |
| --------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **configurationId**   | **String**  | iotaConfiguration Id                                                                                                                                           | [default to null]            |
| **limit**             | **Integer** | Maximum number of records to fetch in a list                                                                                                                   | [optional] [default to null] |
| **exclusiveStartKey** | **String**  | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] [default to null] |

### Return type

[**ListPexQueriesOK**](../Models/ListPexQueriesOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="savePexQueries"></a>

# **savePexQueries**

> Object savePexQueries(configurationId, SavePexQueriesUpdateInput)

    saves all pex queries

### Parameters

| Name                          | Type                                                                    | Description          | Notes             |
| ----------------------------- | ----------------------------------------------------------------------- | -------------------- | ----------------- |
| **configurationId**           | **String**                                                              | iotaConfiguration Id | [default to null] |
| **SavePexQueriesUpdateInput** | [**SavePexQueriesUpdateInput**](../Models/SavePexQueriesUpdateInput.md) | SavePexQueriesInput  |                   |

### Return type

**Object**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
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
