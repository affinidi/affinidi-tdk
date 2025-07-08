# ConfigurationApi

All URIs are relative to *https://apse1.api.affinidi.io/vpa*

| Method                                                              | HTTP request                                          | Description                                |
| ------------------------------------------------------------------- | ----------------------------------------------------- | ------------------------------------------ |
| [**createLoginConfigurations**](#createloginconfigurations)         | **POST** /v1/login/configurations                     | Create a new login configuration           |
| [**deleteLoginConfigurationsById**](#deleteloginconfigurationsbyid) | **DELETE** /v1/login/configurations/{configurationId} | Delete login configurations by ID          |
| [**getClientMetadataByClientId**](#getclientmetadatabyclientid)     | **GET** /v1/login/configurations/metadata/{clientId}  | Get Client Metadata By OAuth 2.0 Client ID |
| [**getLoginConfigurationsById**](#getloginconfigurationsbyid)       | **GET** /v1/login/configurations/{configurationId}    | Get login configuration by ID              |
| [**listLoginConfigurations**](#listloginconfigurations)             | **GET** /v1/login/configurations                      | List login configurations                  |
| [**updateLoginConfigurationsById**](#updateloginconfigurationsbyid) | **PATCH** /v1/login/configurations/{configurationId}  | Update login configurations by ID          |

# **createLoginConfigurations**

> CreateLoginConfigurationOutput createLoginConfigurations()

Create a new login configuration `vpDefinition` and `idTokenMapping` have default settings that provide user email VP presentation definitions. An essential default definition is in place when it comes to the login process for end users using the Chrome extension. This definition requires users to input their email address as OIDCVP compliant, which is then verified by the Affinidi verification service.

### Example

```typescript
import {
  ConfigurationApi,
  Configuration,
  CreateLoginConfigurationInput,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new ConfigurationApi(configuration)

let createLoginConfigurationInput: CreateLoginConfigurationInput //CreateLoginConfigurations (optional)

const { status, data } = await apiInstance.createLoginConfigurations(
  createLoginConfigurationInput,
)
```

### Parameters

| Name                              | Type                              | Description               | Notes |
| --------------------------------- | --------------------------------- | ------------------------- | ----- |
| **createLoginConfigurationInput** | **CreateLoginConfigurationInput** | CreateLoginConfigurations |       |

### Return type

**CreateLoginConfigurationOutput**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description           | Response headers |
| ----------- | --------------------- | ---------------- |
| **201**     | Created               | -                |
| **400**     | BadRequestError       | -                |
| **403**     | ForbiddenError        | -                |
| **424**     | FailedDependencyError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLoginConfigurationsById**

> deleteLoginConfigurationsById()

Delete login configurations by ID

### Example

```typescript
import {
  ConfigurationApi,
  Configuration,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new ConfigurationApi(configuration)

let configurationId: string //The id of the login configuration (default to undefined)

const { status, data } =
  await apiInstance.deleteLoginConfigurationsById(configurationId)
```

### Parameters

| Name                | Type         | Description                       | Notes                 |
| ------------------- | ------------ | --------------------------------- | --------------------- |
| **configurationId** | [**string**] | The id of the login configuration | defaults to undefined |

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

# **getClientMetadataByClientId**

> LoginConfigurationClientMetadataOutput getClientMetadataByClientId()

Get Client Metadata By OAuth 2.0 Client ID

### Example

```typescript
import {
  ConfigurationApi,
  Configuration,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new ConfigurationApi(configuration)

let clientId: string //OAuth 2.0 Client ID (default to undefined)

const { status, data } = await apiInstance.getClientMetadataByClientId(clientId)
```

### Parameters

| Name         | Type         | Description         | Notes                 |
| ------------ | ------------ | ------------------- | --------------------- |
| **clientId** | [**string**] | OAuth 2.0 Client ID | defaults to undefined |

### Return type

**LoginConfigurationClientMetadataOutput**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | OK              | -                |
| **400**     | BadRequestError | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLoginConfigurationsById**

> LoginConfigurationObject getLoginConfigurationsById()

Get login configuration by ID

### Example

```typescript
import {
  ConfigurationApi,
  Configuration,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new ConfigurationApi(configuration)

let configurationId: string //The id of the login configuration (default to undefined)

const { status, data } =
  await apiInstance.getLoginConfigurationsById(configurationId)
```

### Parameters

| Name                | Type         | Description                       | Notes                 |
| ------------------- | ------------ | --------------------------------- | --------------------- |
| **configurationId** | [**string**] | The id of the login configuration | defaults to undefined |

### Return type

**LoginConfigurationObject**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                 | Response headers |
| ----------- | --------------------------- | ---------------- |
| **200**     | GetLoginConfigurationOutput | -                |
| **400**     | BadRequestError             | -                |
| **403**     | ForbiddenError              | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listLoginConfigurations**

> ListLoginConfigurationOutput listLoginConfigurations()

Endpoint to retrieve list of login configurations

### Example

```typescript
import {
  ConfigurationApi,
  Configuration,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new ConfigurationApi(configuration)

let limit: number //Maximum number of records to fetch in a list (optional) (default to undefined)
let exclusiveStartKey: string //The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. (optional) (default to undefined)

const { status, data } = await apiInstance.listLoginConfigurations(
  limit,
  exclusiveStartKey,
)
```

### Parameters

| Name                  | Type         | Description                                                                                                                                                    | Notes                            |
| --------------------- | ------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------- |
| **limit**             | [**number**] | Maximum number of records to fetch in a list                                                                                                                   | (optional) defaults to undefined |
| **exclusiveStartKey** | [**string**] | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | (optional) defaults to undefined |

### Return type

**ListLoginConfigurationOutput**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                  | Response headers |
| ----------- | ---------------------------- | ---------------- |
| **200**     | ListLoginConfigurationOutput | -                |
| **400**     | BadRequestError              | -                |
| **403**     | ForbiddenError               | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLoginConfigurationsById**

> LoginConfigurationObject updateLoginConfigurationsById()

Update login configurations by ID

### Example

```typescript
import {
  ConfigurationApi,
  Configuration,
  UpdateLoginConfigurationInput,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new ConfigurationApi(configuration)

let configurationId: string //The id of the login configuration (default to undefined)
let updateLoginConfigurationInput: UpdateLoginConfigurationInput //UpdateLoginConfigurationsById (optional)

const { status, data } = await apiInstance.updateLoginConfigurationsById(
  configurationId,
  updateLoginConfigurationInput,
)
```

### Parameters

| Name                              | Type                              | Description                       | Notes                 |
| --------------------------------- | --------------------------------- | --------------------------------- | --------------------- |
| **updateLoginConfigurationInput** | **UpdateLoginConfigurationInput** | UpdateLoginConfigurationsById     |                       |
| **configurationId**               | [**string**]                      | The id of the login configuration | defaults to undefined |

### Return type

**LoginConfigurationObject**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description                    | Response headers |
| ----------- | ------------------------------ | ---------------- |
| **200**     | UpdateLoginConfigurationOutput | -                |
| **400**     | BadRequestError                | -                |
| **403**     | ForbiddenError                 | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
