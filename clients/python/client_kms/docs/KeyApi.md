# affinidi_tdk_client_kms.KeyApi

All URIs are relative to _http://localhost_

| Method                                                         | HTTP request                                  | Description |
| -------------------------------------------------------------- | --------------------------------------------- | ----------- |
| [**create_key**](KeyApi.md#create_key)                         | **POST** /v1/seeds/{id}/keys                  |
| [**decrypt_by_private_key**](KeyApi.md#decrypt_by_private_key) | **POST** /v1/keys/{id}/decrypt-by-private-key |
| [**kmssign_credential**](KeyApi.md#kmssign_credential)         | **POST** /v1/keys/{id}/sign-credential        |
| [**sign**](KeyApi.md#sign)                                     | **POST** /v1/keys/{id}/sign                   |
| [**sign_jwt**](KeyApi.md#sign_jwt)                             | **POST** /v1/keys/{id}/sign-jwt               |

# **create_key**

> CreateKeysConfigResultDto create_key(id, create_keys_config_input_dto)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_kms
from affinidi_tdk_client_kms.models.create_keys_config_input_dto import CreateKeysConfigInputDto
from affinidi_tdk_client_kms.models.create_keys_config_result_dto import CreateKeysConfigResultDto
from affinidi_tdk_client_kms.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_kms.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_client_kms.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_kms.KeyApi(api_client)
    id = 'id_example' # str | id of seed record
    create_keys_config_input_dto = affinidi_tdk_client_kms.CreateKeysConfigInputDto() # CreateKeysConfigInputDto | CreateKey

    try:
        api_response = api_instance.create_key(id, create_keys_config_input_dto)
        print("The response of KeyApi->create_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling KeyApi->create_key: %s\n" % e)
```

### Parameters

| Name                             | Type                                                        | Description       | Notes |
| -------------------------------- | ----------------------------------------------------------- | ----------------- | ----- |
| **id**                           | **str**                                                     | id of seed record |
| **create_keys_config_input_dto** | [**CreateKeysConfigInputDto**](CreateKeysConfigInputDto.md) | CreateKey         |

### Return type

[**CreateKeysConfigResultDto**](CreateKeysConfigResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **201**     | Created     | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **decrypt_by_private_key**

> DecryptByPrivateKeyResultDto decrypt_by_private_key(id, decrypt_by_private_key_input_dto)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_kms
from affinidi_tdk_client_kms.models.decrypt_by_private_key_input_dto import DecryptByPrivateKeyInputDto
from affinidi_tdk_client_kms.models.decrypt_by_private_key_result_dto import DecryptByPrivateKeyResultDto
from affinidi_tdk_client_kms.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_kms.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_client_kms.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_kms.KeyApi(api_client)
    id = 'id_example' # str | id of seed
    decrypt_by_private_key_input_dto = affinidi_tdk_client_kms.DecryptByPrivateKeyInputDto() # DecryptByPrivateKeyInputDto | DecryptByPrivateKey

    try:
        api_response = api_instance.decrypt_by_private_key(id, decrypt_by_private_key_input_dto)
        print("The response of KeyApi->decrypt_by_private_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling KeyApi->decrypt_by_private_key: %s\n" % e)
```

### Parameters

| Name                                 | Type                                                              | Description         | Notes |
| ------------------------------------ | ----------------------------------------------------------------- | ------------------- | ----- |
| **id**                               | **str**                                                           | id of seed          |
| **decrypt_by_private_key_input_dto** | [**DecryptByPrivateKeyInputDto**](DecryptByPrivateKeyInputDto.md) | DecryptByPrivateKey |

### Return type

[**DecryptByPrivateKeyResultDto**](DecryptByPrivateKeyResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **kmssign_credential**

> SignCredentialResultDto kmssign_credential(id, sign_credential_input_dto)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_kms
from affinidi_tdk_client_kms.models.sign_credential_input_dto import SignCredentialInputDto
from affinidi_tdk_client_kms.models.sign_credential_result_dto import SignCredentialResultDto
from affinidi_tdk_client_kms.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_kms.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_client_kms.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_kms.KeyApi(api_client)
    id = 'id_example' # str | id of key
    sign_credential_input_dto = affinidi_tdk_client_kms.SignCredentialInputDto() # SignCredentialInputDto | SignCredential

    try:
        api_response = api_instance.kmssign_credential(id, sign_credential_input_dto)
        print("The response of KeyApi->kmssign_credential:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling KeyApi->kmssign_credential: %s\n" % e)
```

### Parameters

| Name                          | Type                                                    | Description    | Notes |
| ----------------------------- | ------------------------------------------------------- | -------------- | ----- |
| **id**                        | **str**                                                 | id of key      |
| **sign_credential_input_dto** | [**SignCredentialInputDto**](SignCredentialInputDto.md) | SignCredential |

### Return type

[**SignCredentialResultDto**](SignCredentialResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sign**

> SignResultDto sign(id, sign_input_dto)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_kms
from affinidi_tdk_client_kms.models.sign_input_dto import SignInputDto
from affinidi_tdk_client_kms.models.sign_result_dto import SignResultDto
from affinidi_tdk_client_kms.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_kms.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_client_kms.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_kms.KeyApi(api_client)
    id = 'id_example' # str | id of signing key configuration
    sign_input_dto = affinidi_tdk_client_kms.SignInputDto() # SignInputDto | Sign

    try:
        api_response = api_instance.sign(id, sign_input_dto)
        print("The response of KeyApi->sign:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling KeyApi->sign: %s\n" % e)
```

### Parameters

| Name               | Type                                | Description                     | Notes |
| ------------------ | ----------------------------------- | ------------------------------- | ----- |
| **id**             | **str**                             | id of signing key configuration |
| **sign_input_dto** | [**SignInputDto**](SignInputDto.md) | Sign                            |

### Return type

[**SignResultDto**](SignResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sign_jwt**

> SignJwtResultDto sign_jwt(id, sign_jwt_input_dto)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_kms
from affinidi_tdk_client_kms.models.sign_jwt_input_dto import SignJwtInputDto
from affinidi_tdk_client_kms.models.sign_jwt_result_dto import SignJwtResultDto
from affinidi_tdk_client_kms.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_kms.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_client_kms.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_kms.KeyApi(api_client)
    id = 'id_example' # str | id of seed
    sign_jwt_input_dto = affinidi_tdk_client_kms.SignJwtInputDto() # SignJwtInputDto | SignJwt

    try:
        api_response = api_instance.sign_jwt(id, sign_jwt_input_dto)
        print("The response of KeyApi->sign_jwt:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling KeyApi->sign_jwt: %s\n" % e)
```

### Parameters

| Name                   | Type                                      | Description | Notes |
| ---------------------- | ----------------------------------------- | ----------- | ----- |
| **id**                 | **str**                                   | id of seed  |
| **sign_jwt_input_dto** | [**SignJwtInputDto**](SignJwtInputDto.md) | SignJwt     |

### Return type

[**SignJwtResultDto**](SignJwtResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
