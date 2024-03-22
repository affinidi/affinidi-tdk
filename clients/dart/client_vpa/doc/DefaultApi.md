# openapi.api.DefaultApi

## Load the API package

```dart
import 'package:openapi/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                               | HTTP request                        | Description |
| -------------------------------------------------------------------- | ----------------------------------- | ----------- |
| [**v1LoginAdminProxyDelete**](DefaultApi.md#v1loginadminproxydelete) | **DELETE** /v1/login/admin/{proxy+} |
| [**v1LoginAdminProxyGet**](DefaultApi.md#v1loginadminproxyget)       | **GET** /v1/login/admin/{proxy+}    |
| [**v1LoginAdminProxyPatch**](DefaultApi.md#v1loginadminproxypatch)   | **PATCH** /v1/login/admin/{proxy+}  |
| [**v1LoginAdminProxyPost**](DefaultApi.md#v1loginadminproxypost)     | **POST** /v1/login/admin/{proxy+}   |
| [**v1LoginAdminProxyPut**](DefaultApi.md#v1loginadminproxyput)       | **PUT** /v1/login/admin/{proxy+}    |

# **v1LoginAdminProxyDelete**

> v1LoginAdminProxyDelete(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1LoginAdminProxyDelete(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1LoginAdminProxyDelete: $e\n');
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

# **v1LoginAdminProxyGet**

> v1LoginAdminProxyGet(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1LoginAdminProxyGet(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1LoginAdminProxyGet: $e\n');
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

# **v1LoginAdminProxyPatch**

> v1LoginAdminProxyPatch(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1LoginAdminProxyPatch(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1LoginAdminProxyPatch: $e\n');
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

# **v1LoginAdminProxyPost**

> v1LoginAdminProxyPost(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1LoginAdminProxyPost(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1LoginAdminProxyPost: $e\n');
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

# **v1LoginAdminProxyPut**

> v1LoginAdminProxyPut(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1LoginAdminProxyPut(proxy);
} catch (e) {
    print('Exception when calling DefaultApi->v1LoginAdminProxyPut: $e\n');
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
