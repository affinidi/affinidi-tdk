# openapi.api.DefaultApi

## Load the API package

```dart
import 'package:openapi/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                   | HTTP request                 | Description |
| -------------------------------------------------------- | ---------------------------- | ----------- |
| [**v1AuthProxyDelete**](DefaultApi.md#v1authproxydelete) | **DELETE** /v1/auth/{proxy+} |
| [**v1AuthProxyGet**](DefaultApi.md#v1authproxyget)       | **GET** /v1/auth/{proxy+}    |
| [**v1AuthProxyPatch**](DefaultApi.md#v1authproxypatch)   | **PATCH** /v1/auth/{proxy+}  |
| [**v1AuthProxyPost**](DefaultApi.md#v1authproxypost)     | **POST** /v1/auth/{proxy+}   |
| [**v1AuthProxyPut**](DefaultApi.md#v1authproxyput)       | **PUT** /v1/auth/{proxy+}    |
| [**v1IdpProxyDelete**](DefaultApi.md#v1idpproxydelete)   | **DELETE** /v1/idp/{proxy+}  |
| [**v1IdpProxyGet**](DefaultApi.md#v1idpproxyget)         | **GET** /v1/idp/{proxy+}     |
| [**v1IdpProxyPatch**](DefaultApi.md#v1idpproxypatch)     | **PATCH** /v1/idp/{proxy+}   |
| [**v1IdpProxyPost**](DefaultApi.md#v1idpproxypost)       | **POST** /v1/idp/{proxy+}    |
| [**v1IdpProxyPut**](DefaultApi.md#v1idpproxyput)         | **PUT** /v1/idp/{proxy+}     |

# **v1AuthProxyDelete**

> v1AuthProxyDelete(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1AuthProxyDelete(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1AuthProxyDelete: $e\n');
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

# **v1AuthProxyGet**

> v1AuthProxyGet(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1AuthProxyGet(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1AuthProxyGet: $e\n');
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

# **v1AuthProxyPatch**

> v1AuthProxyPatch(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1AuthProxyPatch(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1AuthProxyPatch: $e\n');
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

# **v1AuthProxyPost**

> v1AuthProxyPost(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1AuthProxyPost(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1AuthProxyPost: $e\n');
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

# **v1AuthProxyPut**

> v1AuthProxyPut(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1AuthProxyPut(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1AuthProxyPut: $e\n');
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

# **v1IdpProxyDelete**

> v1IdpProxyDelete(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1IdpProxyDelete(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1IdpProxyDelete: $e\n');
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

# **v1IdpProxyGet**

> v1IdpProxyGet(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1IdpProxyGet(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1IdpProxyGet: $e\n');
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

# **v1IdpProxyPatch**

> v1IdpProxyPatch(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1IdpProxyPatch(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1IdpProxyPatch: $e\n');
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

# **v1IdpProxyPost**

> v1IdpProxyPost(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1IdpProxyPost(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1IdpProxyPost: $e\n');
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

# **v1IdpProxyPut**

> v1IdpProxyPut(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1IdpProxyPut(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1IdpProxyPut: $e\n');
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
