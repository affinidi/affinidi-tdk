# ConfigurationApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                                       | HTTP request                                    | Description |
| ---------------------------------------------------------------------------- | ----------------------------------------------- | ----------- |
| [**createIssuanceConfig**](ConfigurationApi.md#createIssuanceConfig)         | **POST** /v1/configurations                     |             |
| [**deleteIssuanceConfigById**](ConfigurationApi.md#deleteIssuanceConfigById) | **DELETE** /v1/configurations/{configurationId} |             |
| [**getIssuanceConfigById**](ConfigurationApi.md#getIssuanceConfigById)       | **GET** /v1/configurations/{configurationId}    |             |
| [**getIssuanceConfigList**](ConfigurationApi.md#getIssuanceConfigList)       | **GET** /v1/configurations                      |             |
| [**updateIssuanceConfigById**](ConfigurationApi.md#updateIssuanceConfigById) | **PUT** /v1/configurations/{configurationId}    |             |

<a name="createIssuanceConfig"></a>

# **createIssuanceConfig**

> IssuanceConfigDto createIssuanceConfig(CreateIssuanceConfigInput)

    Create issuance configuration, project have only one configuration

### Parameters

| Name                          | Type                                                                    | Description                          | Notes |
| ----------------------------- | ----------------------------------------------------------------------- | ------------------------------------ | ----- |
| **CreateIssuanceConfigInput** | [**CreateIssuanceConfigInput**](../Models/CreateIssuanceConfigInput.md) | Request body of create configuration |       |

### Return type

[**IssuanceConfigDto**](../Models/IssuanceConfigDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteIssuanceConfigById"></a>

# **deleteIssuanceConfigById**

> deleteIssuanceConfigById(configurationId)

    Delete project issuance configuration

### Parameters

| Name                | Type       | Description                          | Notes             |
| ------------------- | ---------- | ------------------------------------ | ----------------- |
| **configurationId** | **String** | The id of the issuance configuration | [default to null] |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIssuanceConfigById"></a>

# **getIssuanceConfigById**

> IssuanceConfigDto getIssuanceConfigById(configurationId)

    Get issuance configuration by id

### Parameters

| Name                | Type       | Description                          | Notes             |
| ------------------- | ---------- | ------------------------------------ | ----------------- |
| **configurationId** | **String** | The id of the issuance configuration | [default to null] |

### Return type

[**IssuanceConfigDto**](../Models/IssuanceConfigDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIssuanceConfigList"></a>

# **getIssuanceConfigList**

> IssuanceConfigListResponse getIssuanceConfigList()

    Get issuance configuration for my selected project

### Parameters

This endpoint does not need any parameter.

### Return type

[**IssuanceConfigListResponse**](../Models/IssuanceConfigListResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateIssuanceConfigById"></a>

# **updateIssuanceConfigById**

> IssuanceConfigDto updateIssuanceConfigById(configurationId, UpdateIssuanceConfigInput)

    Update issuance configuration

### Parameters

| Name                          | Type                                                                    | Description                          | Notes             |
| ----------------------------- | ----------------------------------------------------------------------- | ------------------------------------ | ----------------- |
| **configurationId**           | **String**                                                              | The id of the issuance configuration | [default to null] |
| **UpdateIssuanceConfigInput** | [**UpdateIssuanceConfigInput**](../Models/UpdateIssuanceConfigInput.md) | Request body of update configuration |                   |

### Return type

[**IssuanceConfigDto**](../Models/IssuanceConfigDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
