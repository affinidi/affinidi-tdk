# ConfigurationApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                    | HTTP request                                    | Description |
| --------------------------------------------------------- | ----------------------------------------------- | ----------- |
| [**createIssuanceConfig**](#createissuanceconfig)         | **POST** /v1/configurations                     |             |
| [**deleteIssuanceConfigById**](#deleteissuanceconfigbyid) | **DELETE** /v1/configurations/{configurationId} |             |
| [**getIssuanceConfigById**](#getissuanceconfigbyid)       | **GET** /v1/configurations/{configurationId}    |             |
| [**getIssuanceConfigList**](#getissuanceconfiglist)       | **GET** /v1/configurations                      |             |
| [**updateIssuanceConfigById**](#updateissuanceconfigbyid) | **PUT** /v1/configurations/{configurationId}    |             |

# **createIssuanceConfig**

> IssuanceConfigDto createIssuanceConfig(createIssuanceConfigInput)

Create issuance configuration, project have only one configuration

### Example

```typescript
import {
  ConfigurationApi,
  Configuration,
  CreateIssuanceConfigInput,
} from '@affinidi-tdk/credential-issuance-client'

const configuration = new Configuration()
const apiInstance = new ConfigurationApi(configuration)

let createIssuanceConfigInput: CreateIssuanceConfigInput //Request body of create configuration

const { status, data } = await apiInstance.createIssuanceConfig(
  createIssuanceConfigInput,
)
```

### Parameters

| Name                          | Type                          | Description                          | Notes |
| ----------------------------- | ----------------------------- | ------------------------------------ | ----- |
| **createIssuanceConfigInput** | **CreateIssuanceConfigInput** | Request body of create configuration |       |

### Return type

**IssuanceConfigDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **201**     | Ok              | -                |
| **400**     | BadRequestError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIssuanceConfigById**

> deleteIssuanceConfigById()

Delete project issuance configuration

### Example

```typescript
import {
  ConfigurationApi,
  Configuration,
} from '@affinidi-tdk/credential-issuance-client'

const configuration = new Configuration()
const apiInstance = new ConfigurationApi(configuration)

let configurationId: string //The id of the issuance configuration (default to undefined)

const { status, data } =
  await apiInstance.deleteIssuanceConfigById(configurationId)
```

### Parameters

| Name                | Type         | Description                          | Notes                 |
| ------------------- | ------------ | ------------------------------------ | --------------------- |
| **configurationId** | [**string**] | The id of the issuance configuration | defaults to undefined |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                      | Response headers |
| ----------- | -------------------------------- | ---------------- |
| **204**     | Response for deleting the config | -                |
| **400**     | BadRequestError                  | -                |
| **404**     | NotFoundError                    | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssuanceConfigById**

> IssuanceConfigDto getIssuanceConfigById()

Get issuance configuration by id

### Example

```typescript
import {
  ConfigurationApi,
  Configuration,
} from '@affinidi-tdk/credential-issuance-client'

const configuration = new Configuration()
const apiInstance = new ConfigurationApi(configuration)

let configurationId: string //The id of the issuance configuration (default to undefined)

const { status, data } =
  await apiInstance.getIssuanceConfigById(configurationId)
```

### Parameters

| Name                | Type         | Description                          | Notes                 |
| ------------------- | ------------ | ------------------------------------ | --------------------- |
| **configurationId** | [**string**] | The id of the issuance configuration | defaults to undefined |

### Return type

**IssuanceConfigDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssuanceConfigList**

> IssuanceConfigListResponse getIssuanceConfigList()

Get issuance configuration for my selected project

### Example

```typescript
import {
  ConfigurationApi,
  Configuration,
} from '@affinidi-tdk/credential-issuance-client'

const configuration = new Configuration()
const apiInstance = new ConfigurationApi(configuration)

const { status, data } = await apiInstance.getIssuanceConfigList()
```

### Parameters

This endpoint does not have any parameters.

### Return type

**IssuanceConfigListResponse**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateIssuanceConfigById**

> IssuanceConfigDto updateIssuanceConfigById(updateIssuanceConfigInput)

Update issuance configuration

### Example

```typescript
import {
  ConfigurationApi,
  Configuration,
  UpdateIssuanceConfigInput,
} from '@affinidi-tdk/credential-issuance-client'

const configuration = new Configuration()
const apiInstance = new ConfigurationApi(configuration)

let configurationId: string //The id of the issuance configuration (default to undefined)
let updateIssuanceConfigInput: UpdateIssuanceConfigInput //Request body of update configuration

const { status, data } = await apiInstance.updateIssuanceConfigById(
  configurationId,
  updateIssuanceConfigInput,
)
```

### Parameters

| Name                          | Type                          | Description                          | Notes                 |
| ----------------------------- | ----------------------------- | ------------------------------------ | --------------------- |
| **updateIssuanceConfigInput** | **UpdateIssuanceConfigInput** | Request body of update configuration |                       |
| **configurationId**           | [**string**]                  | The id of the issuance configuration | defaults to undefined |

### Return type

**IssuanceConfigDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
