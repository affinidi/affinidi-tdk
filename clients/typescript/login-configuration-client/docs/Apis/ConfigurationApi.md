# ConfigurationApi

All URIs are relative to _http://localhost_

| Method                                                                                 | HTTP request                                          | Description                                |
| -------------------------------------------------------------------------------------- | ----------------------------------------------------- | ------------------------------------------ |
| [**createLoginConfigurations**](ConfigurationApi.md#createLoginConfigurations)         | **POST** /v1/login/configurations                     | Create a new login configuration           |
| [**deleteLoginConfigurationsById**](ConfigurationApi.md#deleteLoginConfigurationsById) | **DELETE** /v1/login/configurations/{configurationId} | Delete login configurations by ID          |
| [**getClientMetadataByClientId**](ConfigurationApi.md#getClientMetadataByClientId)     | **GET** /v1/login/configurations/metadata/{clientId}  | Get Client Metadata By OAuth 2.0 Client ID |
| [**getLoginConfigurationsById**](ConfigurationApi.md#getLoginConfigurationsById)       | **GET** /v1/login/configurations/{configurationId}    | Get login configuration by ID              |
| [**listLoginConfigurations**](ConfigurationApi.md#listLoginConfigurations)             | **GET** /v1/login/configurations                      | List login configurations                  |
| [**updateLoginConfigurationsById**](ConfigurationApi.md#updateLoginConfigurationsById) | **PATCH** /v1/login/configurations/{configurationId}  | Update login configurations by ID          |

<a name="createLoginConfigurations"></a>

# **createLoginConfigurations**

> CreateLoginConfigurationOutput createLoginConfigurations(CreateLoginConfigurationInput)

Create a new login configuration

    Create a new login configuration  &#x60;vpDefinition&#x60; and &#x60;idTokenMapping&#x60; have default settings that provide user email VP presentation definitions.  An essential default definition is in place when it comes to the login process for end users using the Chrome extension.   This definition requires users to input their email address as OIDCVP compliant, which is then verified by the Affinidi verification service.

### Parameters

| Name                              | Type                                                                            | Description               | Notes      |
| --------------------------------- | ------------------------------------------------------------------------------- | ------------------------- | ---------- |
| **CreateLoginConfigurationInput** | [**CreateLoginConfigurationInput**](../Models/CreateLoginConfigurationInput.md) | CreateLoginConfigurations | [optional] |

### Return type

[**CreateLoginConfigurationOutput**](../Models/CreateLoginConfigurationOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteLoginConfigurationsById"></a>

# **deleteLoginConfigurationsById**

> deleteLoginConfigurationsById(configurationId)

Delete login configurations by ID

    Delete login configurations by ID

### Parameters

| Name                | Type       | Description                       | Notes             |
| ------------------- | ---------- | --------------------------------- | ----------------- |
| **configurationId** | **String** | The id of the login configuration | [default to null] |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getClientMetadataByClientId"></a>

# **getClientMetadataByClientId**

> LoginConfigurationClientMetadataOutput getClientMetadataByClientId(clientId)

Get Client Metadata By OAuth 2.0 Client ID

    Get Client Metadata By  OAuth 2.0 Client ID

### Parameters

| Name         | Type       | Description         | Notes             |
| ------------ | ---------- | ------------------- | ----------------- |
| **clientId** | **String** | OAuth 2.0 Client ID | [default to null] |

### Return type

[**LoginConfigurationClientMetadataOutput**](../Models/LoginConfigurationClientMetadataOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getLoginConfigurationsById"></a>

# **getLoginConfigurationsById**

> LoginConfigurationObject getLoginConfigurationsById(configurationId)

Get login configuration by ID

    Get login configuration by ID

### Parameters

| Name                | Type       | Description                       | Notes             |
| ------------------- | ---------- | --------------------------------- | ----------------- |
| **configurationId** | **String** | The id of the login configuration | [default to null] |

### Return type

[**LoginConfigurationObject**](../Models/LoginConfigurationObject.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listLoginConfigurations"></a>

# **listLoginConfigurations**

> ListLoginConfigurationOutput listLoginConfigurations(limit, exclusiveStartKey)

List login configurations

    Endpoint to retrieve list of login configurations

### Parameters

| Name                  | Type        | Description                                                                                                                                                    | Notes                        |
| --------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **limit**             | **Integer** | Maximum number of records to fetch in a list                                                                                                                   | [optional] [default to null] |
| **exclusiveStartKey** | **String**  | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] [default to null] |

### Return type

[**ListLoginConfigurationOutput**](../Models/ListLoginConfigurationOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateLoginConfigurationsById"></a>

# **updateLoginConfigurationsById**

> LoginConfigurationObject updateLoginConfigurationsById(configurationId, UpdateLoginConfigurationInput)

Update login configurations by ID

    Update login configurations by ID

### Parameters

| Name                              | Type                                                                            | Description                       | Notes             |
| --------------------------------- | ------------------------------------------------------------------------------- | --------------------------------- | ----------------- |
| **configurationId**               | **String**                                                                      | The id of the login configuration | [default to null] |
| **UpdateLoginConfigurationInput** | [**UpdateLoginConfigurationInput**](../Models/UpdateLoginConfigurationInput.md) | UpdateLoginConfigurationsById     | [optional]        |

### Return type

[**LoginConfigurationObject**](../Models/LoginConfigurationObject.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
