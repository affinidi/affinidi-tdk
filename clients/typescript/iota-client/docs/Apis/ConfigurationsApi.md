# ConfigurationsApi

All URIs are relative to _http://localhost_

| Method                                                                                | HTTP request                                                               | Description |
| ------------------------------------------------------------------------------------- | -------------------------------------------------------------------------- | ----------- |
| [**createIotaConfiguration**](ConfigurationsApi.md#createIotaConfiguration)           | **POST** /v1/configurations                                                |             |
| [**deleteIotaConfigurationById**](ConfigurationsApi.md#deleteIotaConfigurationById)   | **DELETE** /v1/configurations/{configurationId}                            |             |
| [**getIotaConfigurationById**](ConfigurationsApi.md#getIotaConfigurationById)         | **GET** /v1/configurations/{configurationId}                               |             |
| [**getIotaConfigurationMetaData**](ConfigurationsApi.md#getIotaConfigurationMetaData) | **GET** /v1/projects/{projectId}/configurations/{configurationId}/metadata |             |
| [**listIotaConfigurations**](ConfigurationsApi.md#listIotaConfigurations)             | **GET** /v1/configurations                                                 |             |
| [**updateIotaConfigurationById**](ConfigurationsApi.md#updateIotaConfigurationById)   | **PATCH** /v1/configurations/{configurationId}                             |             |

<a name="createIotaConfiguration"></a>

# **createIotaConfiguration**

> IotaConfigurationDto createIotaConfiguration(CreateIotaConfigurationInput)

### Parameters

| Name                             | Type                                                                          | Description         | Notes |
| -------------------------------- | ----------------------------------------------------------------------------- | ------------------- | ----- |
| **CreateIotaConfigurationInput** | [**CreateIotaConfigurationInput**](../Models/CreateIotaConfigurationInput.md) | CreateConfiguration |       |

### Return type

[**IotaConfigurationDto**](../Models/IotaConfigurationDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteIotaConfigurationById"></a>

# **deleteIotaConfigurationById**

> deleteIotaConfigurationById(configurationId)

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

<a name="getIotaConfigurationById"></a>

# **getIotaConfigurationById**

> IotaConfigurationDto getIotaConfigurationById(configurationId)

### Parameters

| Name                | Type       | Description          | Notes             |
| ------------------- | ---------- | -------------------- | ----------------- |
| **configurationId** | **String** | iotaConfiguration Id | [default to null] |

### Return type

[**IotaConfigurationDto**](../Models/IotaConfigurationDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIotaConfigurationMetaData"></a>

# **getIotaConfigurationMetaData**

> GetIotaConfigurationMetaDataOK getIotaConfigurationMetaData(projectId, configurationId)

### Parameters

| Name                | Type       | Description          | Notes             |
| ------------------- | ---------- | -------------------- | ----------------- |
| **projectId**       | **String** | project Id           | [default to null] |
| **configurationId** | **String** | iotaConfiguration Id | [default to null] |

### Return type

[**GetIotaConfigurationMetaDataOK**](../Models/GetIotaConfigurationMetaDataOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listIotaConfigurations"></a>

# **listIotaConfigurations**

> ListConfigurationOK listIotaConfigurations()

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListConfigurationOK**](../Models/ListConfigurationOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateIotaConfigurationById"></a>

# **updateIotaConfigurationById**

> IotaConfigurationDto updateIotaConfigurationById(configurationId, UpdateConfigurationByIdInput)

### Parameters

| Name                             | Type                                                                          | Description             | Notes             |
| -------------------------------- | ----------------------------------------------------------------------------- | ----------------------- | ----------------- |
| **configurationId**              | **String**                                                                    | iotaConfiguration Id    | [default to null] |
| **UpdateConfigurationByIdInput** | [**UpdateConfigurationByIdInput**](../Models/UpdateConfigurationByIdInput.md) | UpdateConfigurationById |                   |

### Return type

[**IotaConfigurationDto**](../Models/IotaConfigurationDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
