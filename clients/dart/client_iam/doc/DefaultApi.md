# openapi.api.DefaultApi

## Load the API package

```dart
import 'package:openapi/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                             | HTTP request                       | Description |
| ------------------------------------------------------------------ | ---------------------------------- | ----------- |
| [**v1AuthAdminProxyDelete**](DefaultApi.md#v1authadminproxydelete) | **DELETE** /v1/auth/admin/{proxy+} |
| [**v1AuthAdminProxyGet**](DefaultApi.md#v1authadminproxyget)       | **GET** /v1/auth/admin/{proxy+}    |
| [**v1AuthAdminProxyPatch**](DefaultApi.md#v1authadminproxypatch)   | **PATCH** /v1/auth/admin/{proxy+}  |
| [**v1AuthAdminProxyPost**](DefaultApi.md#v1authadminproxypost)     | **POST** /v1/auth/admin/{proxy+}   |
| [**v1AuthAdminProxyPut**](DefaultApi.md#v1authadminproxyput)       | **PUT** /v1/auth/admin/{proxy+}    |
| [**v1IdpUiProxyDelete**](DefaultApi.md#v1idpuiproxydelete)         | **DELETE** /v1/idp/ui/{proxy+}     |
| [**v1IdpUiProxyGet**](DefaultApi.md#v1idpuiproxyget)               | **GET** /v1/idp/ui/{proxy+}        |
| [**v1IdpUiProxyPatch**](DefaultApi.md#v1idpuiproxypatch)           | **PATCH** /v1/idp/ui/{proxy+}      |
| [**v1IdpUiProxyPost**](DefaultApi.md#v1idpuiproxypost)             | **POST** /v1/idp/ui/{proxy+}       |
| [**v1IdpUiProxyPut**](DefaultApi.md#v1idpuiproxyput)               | **PUT** /v1/idp/ui/{proxy+}        |

# **v1AuthAdminProxyDelete**

> v1AuthAdminProxyDelete(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1AuthAdminProxyDelete(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1AuthAdminProxyDelete: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthAdminProxyGet**

> v1AuthAdminProxyGet(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1AuthAdminProxyGet(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1AuthAdminProxyGet: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthAdminProxyPatch**

> v1AuthAdminProxyPatch(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1AuthAdminProxyPatch(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1AuthAdminProxyPatch: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthAdminProxyPost**

> v1AuthAdminProxyPost(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1AuthAdminProxyPost(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1AuthAdminProxyPost: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthAdminProxyPut**

> v1AuthAdminProxyPut(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1AuthAdminProxyPut(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1AuthAdminProxyPut: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IdpUiProxyDelete**

> v1IdpUiProxyDelete(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1IdpUiProxyDelete(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1IdpUiProxyDelete: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IdpUiProxyGet**

> v1IdpUiProxyGet(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1IdpUiProxyGet(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1IdpUiProxyGet: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IdpUiProxyPatch**

> v1IdpUiProxyPatch(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1IdpUiProxyPatch(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1IdpUiProxyPatch: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IdpUiProxyPost**

> v1IdpUiProxyPost(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1IdpUiProxyPost(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1IdpUiProxyPost: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IdpUiProxyPut**

> v1IdpUiProxyPut(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1IdpUiProxyPut(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1IdpUiProxyPut: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
