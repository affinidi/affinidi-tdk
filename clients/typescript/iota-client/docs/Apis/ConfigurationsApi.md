# ConfigurationsApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

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

    Creates a new Affinidi Iota Framework configuration.

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

    Deletes an Affinidi Iota Framework configuration by ID.

### Parameters

| Name                | Type       | Description                                      | Notes             |
| ------------------- | ---------- | ------------------------------------------------ | ----------------- |
| **configurationId** | **String** | ID of the Affinidi Iota Framework configuration. | [default to null] |

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

    Retrieves the details of an Affinidi Iota Framework configuration.

### Parameters

| Name                | Type       | Description                                      | Notes             |
| ------------------- | ---------- | ------------------------------------------------ | ----------------- |
| **configurationId** | **String** | ID of the Affinidi Iota Framework configuration. | [default to null] |

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

    Retrieves the client metadata of an Affinidi Iota Framework configuration.

### Parameters

| Name                | Type       | Description                                      | Notes             |
| ------------------- | ---------- | ------------------------------------------------ | ----------------- |
| **projectId**       | **String** | The ID of the project.                           | [default to null] |
| **configurationId** | **String** | ID of the Affinidi Iota Framework configuration. | [default to null] |

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

    List all Affinidi Iota Framework configurations.

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

    Updates the details of an Affinidi Iota Framework configuration by ID.

### Parameters

| Name                             | Type                                                                          | Description                                      | Notes             |
| -------------------------------- | ----------------------------------------------------------------------------- | ------------------------------------------------ | ----------------- |
| **configurationId**              | **String**                                                                    | ID of the Affinidi Iota Framework configuration. | [default to null] |
| **UpdateConfigurationByIdInput** | [**UpdateConfigurationByIdInput**](../Models/UpdateConfigurationByIdInput.md) | UpdateConfigurationById                          |                   |

### Return type

[**IotaConfigurationDto**](../Models/IotaConfigurationDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
