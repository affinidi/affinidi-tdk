# DefaultApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                      | HTTP request                 | Description |
| ------------------------------------------- | ---------------------------- | ----------- |
| [**v1AuthProxyDelete**](#v1authproxydelete) | **DELETE** /v1/auth/{proxy+} |             |
| [**v1AuthProxyGet**](#v1authproxyget)       | **GET** /v1/auth/{proxy+}    |             |
| [**v1AuthProxyPatch**](#v1authproxypatch)   | **PATCH** /v1/auth/{proxy+}  |             |
| [**v1AuthProxyPost**](#v1authproxypost)     | **POST** /v1/auth/{proxy+}   |             |
| [**v1AuthProxyPut**](#v1authproxyput)       | **PUT** /v1/auth/{proxy+}    |             |
| [**v1IdpProxyDelete**](#v1idpproxydelete)   | **DELETE** /v1/idp/{proxy+}  |             |
| [**v1IdpProxyGet**](#v1idpproxyget)         | **GET** /v1/idp/{proxy+}     |             |
| [**v1IdpProxyPatch**](#v1idpproxypatch)     | **PATCH** /v1/idp/{proxy+}   |             |
| [**v1IdpProxyPost**](#v1idpproxypost)       | **POST** /v1/idp/{proxy+}    |             |
| [**v1IdpProxyPut**](#v1idpproxyput)         | **PUT** /v1/idp/{proxy+}     |             |

# **v1AuthProxyDelete**

> v1AuthProxyDelete()

### Example

```typescript
import { DefaultApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new DefaultApi(configuration)

let proxy: string // (default to undefined)

const { status, data } = await apiInstance.v1AuthProxyDelete(proxy)
```

### Parameters

| Name      | Type         | Description | Notes                 |
| --------- | ------------ | ----------- | --------------------- |
| **proxy** | [**string**] |             | defaults to undefined |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthProxyGet**

> v1AuthProxyGet()

### Example

```typescript
import { DefaultApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new DefaultApi(configuration)

let proxy: string // (default to undefined)

const { status, data } = await apiInstance.v1AuthProxyGet(proxy)
```

### Parameters

| Name      | Type         | Description | Notes                 |
| --------- | ------------ | ----------- | --------------------- |
| **proxy** | [**string**] |             | defaults to undefined |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthProxyPatch**

> v1AuthProxyPatch()

### Example

```typescript
import { DefaultApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new DefaultApi(configuration)

let proxy: string // (default to undefined)

const { status, data } = await apiInstance.v1AuthProxyPatch(proxy)
```

### Parameters

| Name      | Type         | Description | Notes                 |
| --------- | ------------ | ----------- | --------------------- |
| **proxy** | [**string**] |             | defaults to undefined |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthProxyPost**

> v1AuthProxyPost()

### Example

```typescript
import { DefaultApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new DefaultApi(configuration)

let proxy: string // (default to undefined)

const { status, data } = await apiInstance.v1AuthProxyPost(proxy)
```

### Parameters

| Name      | Type         | Description | Notes                 |
| --------- | ------------ | ----------- | --------------------- |
| **proxy** | [**string**] |             | defaults to undefined |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthProxyPut**

> v1AuthProxyPut()

### Example

```typescript
import { DefaultApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new DefaultApi(configuration)

let proxy: string // (default to undefined)

const { status, data } = await apiInstance.v1AuthProxyPut(proxy)
```

### Parameters

| Name      | Type         | Description | Notes                 |
| --------- | ------------ | ----------- | --------------------- |
| **proxy** | [**string**] |             | defaults to undefined |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IdpProxyDelete**

> v1IdpProxyDelete()

### Example

```typescript
import { DefaultApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new DefaultApi(configuration)

let proxy: string // (default to undefined)

const { status, data } = await apiInstance.v1IdpProxyDelete(proxy)
```

### Parameters

| Name      | Type         | Description | Notes                 |
| --------- | ------------ | ----------- | --------------------- |
| **proxy** | [**string**] |             | defaults to undefined |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IdpProxyGet**

> v1IdpProxyGet()

### Example

```typescript
import { DefaultApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new DefaultApi(configuration)

let proxy: string // (default to undefined)

const { status, data } = await apiInstance.v1IdpProxyGet(proxy)
```

### Parameters

| Name      | Type         | Description | Notes                 |
| --------- | ------------ | ----------- | --------------------- |
| **proxy** | [**string**] |             | defaults to undefined |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IdpProxyPatch**

> v1IdpProxyPatch()

### Example

```typescript
import { DefaultApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new DefaultApi(configuration)

let proxy: string // (default to undefined)

const { status, data } = await apiInstance.v1IdpProxyPatch(proxy)
```

### Parameters

| Name      | Type         | Description | Notes                 |
| --------- | ------------ | ----------- | --------------------- |
| **proxy** | [**string**] |             | defaults to undefined |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IdpProxyPost**

> v1IdpProxyPost()

### Example

```typescript
import { DefaultApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new DefaultApi(configuration)

let proxy: string // (default to undefined)

const { status, data } = await apiInstance.v1IdpProxyPost(proxy)
```

### Parameters

| Name      | Type         | Description | Notes                 |
| --------- | ------------ | ----------- | --------------------- |
| **proxy** | [**string**] |             | defaults to undefined |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IdpProxyPut**

> v1IdpProxyPut()

### Example

```typescript
import { DefaultApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new DefaultApi(configuration)

let proxy: string // (default to undefined)

const { status, data } = await apiInstance.v1IdpProxyPut(proxy)
```

### Parameters

| Name      | Type         | Description | Notes                 |
| --------- | ------------ | ----------- | --------------------- |
| **proxy** | [**string**] |             | defaults to undefined |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
