# ConfigurationApi

All URIs are relative to _http://localhost_

| Method                                                               | HTTP request                 | Description |
| -------------------------------------------------------------------- | ---------------------------- | ----------- |
| [**createIssuanceConfig**](ConfigurationApi.md#createIssuanceConfig) | **POST** /v1/configuration   |             |
| [**deleteIssuanceConfig**](ConfigurationApi.md#deleteIssuanceConfig) | **DELETE** /v1/configuration |             |
| [**getIssuanceConfig**](ConfigurationApi.md#getIssuanceConfig)       | **GET** /v1/configuration    |             |
| [**updateIssuanceConfig**](ConfigurationApi.md#updateIssuanceConfig) | **PUT** /v1/configuration    |             |

<a name="createIssuanceConfig"></a>

# **createIssuanceConfig**

> IssuanceConfig createIssuanceConfig(CreateIssuanceConfigInput)

    Create issuance configuration, project have only one configuration

### Parameters

| Name                          | Type                                                                    | Description                          | Notes |
| ----------------------------- | ----------------------------------------------------------------------- | ------------------------------------ | ----- |
| **CreateIssuanceConfigInput** | [**CreateIssuanceConfigInput**](../Models/CreateIssuanceConfigInput.md) | Request body of create configuration |       |

### Return type

[**IssuanceConfig**](../Models/IssuanceConfig.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteIssuanceConfig"></a>

# **deleteIssuanceConfig**

> deleteIssuanceConfig()

    Delete project issuance configuration

### Parameters

This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="getIssuanceConfig"></a>

# **getIssuanceConfig**

> IssuanceConfig getIssuanceConfig()

    Get issuance configuration for my selected project

### Parameters

This endpoint does not need any parameter.

### Return type

[**IssuanceConfig**](../Models/IssuanceConfig.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateIssuanceConfig"></a>

# **updateIssuanceConfig**

> IssuanceConfig updateIssuanceConfig(UpdateIssuanceConfigInput)

    Update issuance configuration

### Parameters

| Name                          | Type                                                                    | Description                          | Notes |
| ----------------------------- | ----------------------------------------------------------------------- | ------------------------------------ | ----- |
| **UpdateIssuanceConfigInput** | [**UpdateIssuanceConfigInput**](../Models/UpdateIssuanceConfigInput.md) | Request body of update configuration |       |

### Return type

[**IssuanceConfig**](../Models/IssuanceConfig.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
