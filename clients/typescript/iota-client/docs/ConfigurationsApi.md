# ConfigurationsApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                            | HTTP request                                                               | Description |
| ----------------------------------------------------------------- | -------------------------------------------------------------------------- | ----------- |
| [**createIotaConfiguration**](#createiotaconfiguration)           | **POST** /v1/configurations                                                |             |
| [**deleteIotaConfigurationById**](#deleteiotaconfigurationbyid)   | **DELETE** /v1/configurations/{configurationId}                            |             |
| [**getIotaConfigurationById**](#getiotaconfigurationbyid)         | **GET** /v1/configurations/{configurationId}                               |             |
| [**getIotaConfigurationMetaData**](#getiotaconfigurationmetadata) | **GET** /v1/projects/{projectId}/configurations/{configurationId}/metadata |             |
| [**listIotaConfigurations**](#listiotaconfigurations)             | **GET** /v1/configurations                                                 |             |
| [**updateIotaConfigurationById**](#updateiotaconfigurationbyid)   | **PATCH** /v1/configurations/{configurationId}                             |             |

# **createIotaConfiguration**

> IotaConfigurationDto createIotaConfiguration(createIotaConfigurationInput)

Creates a new Affinidi Iota Framework configuration.

### Example

```typescript
import {
  ConfigurationsApi,
  Configuration,
  CreateIotaConfigurationInput,
} from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new ConfigurationsApi(configuration)

let createIotaConfigurationInput: CreateIotaConfigurationInput //CreateConfiguration

const { status, data } = await apiInstance.createIotaConfiguration(
  createIotaConfigurationInput,
)
```

### Parameters

| Name                             | Type                             | Description         | Notes |
| -------------------------------- | -------------------------------- | ------------------- | ----- |
| **createIotaConfigurationInput** | **CreateIotaConfigurationInput** | CreateConfiguration |       |

### Return type

**IotaConfigurationDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description           | Response headers |
| ----------- | --------------------- | ---------------- |
| **201**     | CreateConfigurationOK | -                |
| **400**     | BadRequestError       | -                |
| **403**     | ForbiddenError        | -                |
| **409**     | ConflictError         | -                |
| **422**     | UnprocessableEntity   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIotaConfigurationById**

> deleteIotaConfigurationById()

Deletes an Affinidi Iota Framework configuration by ID.

### Example

```typescript
import { ConfigurationsApi, Configuration } from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new ConfigurationsApi(configuration)

let configurationId: string //ID of the Affinidi Iota Framework configuration. (default to undefined)

const { status, data } =
  await apiInstance.deleteIotaConfigurationById(configurationId)
```

### Parameters

| Name                | Type         | Description                                      | Notes                 |
| ------------------- | ------------ | ------------------------------------------------ | --------------------- |
| **configurationId** | [**string**] | ID of the Affinidi Iota Framework configuration. | defaults to undefined |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **204**     | Deleted         | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIotaConfigurationById**

> IotaConfigurationDto getIotaConfigurationById()

Retrieves the details of an Affinidi Iota Framework configuration.

### Example

```typescript
import { ConfigurationsApi, Configuration } from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new ConfigurationsApi(configuration)

let configurationId: string //ID of the Affinidi Iota Framework configuration. (default to undefined)

const { status, data } =
  await apiInstance.getIotaConfigurationById(configurationId)
```

### Parameters

| Name                | Type         | Description                                      | Notes                 |
| ------------------- | ------------ | ------------------------------------------------ | --------------------- |
| **configurationId** | [**string**] | ID of the Affinidi Iota Framework configuration. | defaults to undefined |

### Return type

**IotaConfigurationDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description            | Response headers |
| ----------- | ---------------------- | ---------------- |
| **200**     | GetConfigurationByIdOK | -                |
| **400**     | BadRequestError        | -                |
| **403**     | ForbiddenError         | -                |
| **404**     | NotFoundError          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIotaConfigurationMetaData**

> GetIotaConfigurationMetaDataOK getIotaConfigurationMetaData()

Retrieves the client metadata of an Affinidi Iota Framework configuration.

### Example

```typescript
import { ConfigurationsApi, Configuration } from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new ConfigurationsApi(configuration)

let projectId: string //The ID of the project. (default to undefined)
let configurationId: string //ID of the Affinidi Iota Framework configuration. (default to undefined)

const { status, data } = await apiInstance.getIotaConfigurationMetaData(
  projectId,
  configurationId,
)
```

### Parameters

| Name                | Type         | Description                                      | Notes                 |
| ------------------- | ------------ | ------------------------------------------------ | --------------------- |
| **projectId**       | [**string**] | The ID of the project.                           | defaults to undefined |
| **configurationId** | [**string**] | ID of the Affinidi Iota Framework configuration. | defaults to undefined |

### Return type

**GetIotaConfigurationMetaDataOK**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                    | Response headers |
| ----------- | ------------------------------ | ---------------- |
| **200**     | GetIotaConfigurationMetaDataOK | -                |
| **400**     | BadRequestError                | -                |
| **403**     | ForbiddenError                 | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIotaConfigurations**

> ListConfigurationOK listIotaConfigurations()

List all Affinidi Iota Framework configurations.

### Example

```typescript
import { ConfigurationsApi, Configuration } from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new ConfigurationsApi(configuration)

const { status, data } = await apiInstance.listIotaConfigurations()
```

### Parameters

This endpoint does not have any parameters.

### Return type

**ListConfigurationOK**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description         | Response headers |
| ----------- | ------------------- | ---------------- |
| **200**     | ListConfigurationOK | -                |
| **400**     | BadRequestError     | -                |
| **403**     | ForbiddenError      | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateIotaConfigurationById**

> IotaConfigurationDto updateIotaConfigurationById(updateConfigurationByIdInput)

Updates the details of an Affinidi Iota Framework configuration by ID.

### Example

```typescript
import {
  ConfigurationsApi,
  Configuration,
  UpdateConfigurationByIdInput,
} from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new ConfigurationsApi(configuration)

let configurationId: string //ID of the Affinidi Iota Framework configuration. (default to undefined)
let updateConfigurationByIdInput: UpdateConfigurationByIdInput //UpdateConfigurationById

const { status, data } = await apiInstance.updateIotaConfigurationById(
  configurationId,
  updateConfigurationByIdInput,
)
```

### Parameters

| Name                             | Type                             | Description                                      | Notes                 |
| -------------------------------- | -------------------------------- | ------------------------------------------------ | --------------------- |
| **updateConfigurationByIdInput** | **UpdateConfigurationByIdInput** | UpdateConfigurationById                          |                       |
| **configurationId**              | [**string**]                     | ID of the Affinidi Iota Framework configuration. | defaults to undefined |

### Return type

**IotaConfigurationDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description               | Response headers |
| ----------- | ------------------------- | ---------------- |
| **200**     | UpdateConfigurationByIdOK | -                |
| **400**     | BadRequestError           | -                |
| **403**     | ForbiddenError            | -                |
| **404**     | NotFoundError             | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
