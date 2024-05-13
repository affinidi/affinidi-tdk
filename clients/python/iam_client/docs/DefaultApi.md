# affinidi_tdk_iam_client.DefaultApi

All URIs are relative to _http://localhost_

| Method                                                         | HTTP request                 | Description |
| -------------------------------------------------------------- | ---------------------------- | ----------- |
| [**v1_auth_proxy_delete**](DefaultApi.md#v1_auth_proxy_delete) | **DELETE** /v1/auth/{proxy+} |
| [**v1_auth_proxy_get**](DefaultApi.md#v1_auth_proxy_get)       | **GET** /v1/auth/{proxy+}    |
| [**v1_auth_proxy_patch**](DefaultApi.md#v1_auth_proxy_patch)   | **PATCH** /v1/auth/{proxy+}  |
| [**v1_auth_proxy_post**](DefaultApi.md#v1_auth_proxy_post)     | **POST** /v1/auth/{proxy+}   |
| [**v1_auth_proxy_put**](DefaultApi.md#v1_auth_proxy_put)       | **PUT** /v1/auth/{proxy+}    |
| [**v1_idp_proxy_delete**](DefaultApi.md#v1_idp_proxy_delete)   | **DELETE** /v1/idp/{proxy+}  |
| [**v1_idp_proxy_get**](DefaultApi.md#v1_idp_proxy_get)         | **GET** /v1/idp/{proxy+}     |
| [**v1_idp_proxy_patch**](DefaultApi.md#v1_idp_proxy_patch)     | **PATCH** /v1/idp/{proxy+}   |
| [**v1_idp_proxy_post**](DefaultApi.md#v1_idp_proxy_post)       | **POST** /v1/idp/{proxy+}    |
| [**v1_idp_proxy_put**](DefaultApi.md#v1_idp_proxy_put)         | **PUT** /v1/idp/{proxy+}     |

# **v1_auth_proxy_delete**

> v1_auth_proxy_delete(proxy)

### Example

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.DefaultApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_auth_proxy_delete(proxy)
    except Exception as e:
        print("Exception when calling DefaultApi->v1_auth_proxy_delete: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_auth_proxy_get**

> v1_auth_proxy_get(proxy)

### Example

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.DefaultApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_auth_proxy_get(proxy)
    except Exception as e:
        print("Exception when calling DefaultApi->v1_auth_proxy_get: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_auth_proxy_patch**

> v1_auth_proxy_patch(proxy)

### Example

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.DefaultApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_auth_proxy_patch(proxy)
    except Exception as e:
        print("Exception when calling DefaultApi->v1_auth_proxy_patch: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_auth_proxy_post**

> v1_auth_proxy_post(proxy)

### Example

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.DefaultApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_auth_proxy_post(proxy)
    except Exception as e:
        print("Exception when calling DefaultApi->v1_auth_proxy_post: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_auth_proxy_put**

> v1_auth_proxy_put(proxy)

### Example

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.DefaultApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_auth_proxy_put(proxy)
    except Exception as e:
        print("Exception when calling DefaultApi->v1_auth_proxy_put: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_idp_proxy_delete**

> v1_idp_proxy_delete(proxy)

### Example

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.DefaultApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_idp_proxy_delete(proxy)
    except Exception as e:
        print("Exception when calling DefaultApi->v1_idp_proxy_delete: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_idp_proxy_get**

> v1_idp_proxy_get(proxy)

### Example

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.DefaultApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_idp_proxy_get(proxy)
    except Exception as e:
        print("Exception when calling DefaultApi->v1_idp_proxy_get: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_idp_proxy_patch**

> v1_idp_proxy_patch(proxy)

### Example

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.DefaultApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_idp_proxy_patch(proxy)
    except Exception as e:
        print("Exception when calling DefaultApi->v1_idp_proxy_patch: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_idp_proxy_post**

> v1_idp_proxy_post(proxy)

### Example

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.DefaultApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_idp_proxy_post(proxy)
    except Exception as e:
        print("Exception when calling DefaultApi->v1_idp_proxy_post: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_idp_proxy_put**

> v1_idp_proxy_put(proxy)

### Example

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.DefaultApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_idp_proxy_put(proxy)
    except Exception as e:
        print("Exception when calling DefaultApi->v1_idp_proxy_put: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
