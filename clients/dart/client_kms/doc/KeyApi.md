# openapi.api.KeyApi

## Load the API package

```dart
import 'package:openapi/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                   | HTTP request                                  | Description |
| -------------------------------------------------------- | --------------------------------------------- | ----------- |
| [**createKey**](KeyApi.md#createkey)                     | **POST** /v1/seeds/{id}/keys                  |
| [**decryptByPrivateKey**](KeyApi.md#decryptbyprivatekey) | **POST** /v1/keys/{id}/decrypt-by-private-key |
| [**kmssignCredential**](KeyApi.md#kmssigncredential)     | **POST** /v1/keys/{id}/sign-credential        |
| [**sign**](KeyApi.md#sign)                               | **POST** /v1/keys/{id}/sign                   |
| [**signJwt**](KeyApi.md#signjwt)                         | **POST** /v1/keys/{id}/sign-jwt               |

# **createKey**

> CreateKeysConfigResultDto createKey(id, createKeysConfigInputDto)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = KeyApi();
final id = id_example; // String | id of seed record
final createKeysConfigInputDto = CreateKeysConfigInputDto(); // CreateKeysConfigInputDto | CreateKey

try {
    final result = api_instance.createKey(id, createKeysConfigInputDto);
    print(result);
} catch (e) {
    print('Exception when calling KeyApi->createKey: $e\n');
}
```

### Parameters

| Name                         | Type                                                        | Description       | Notes |
| ---------------------------- | ----------------------------------------------------------- | ----------------- | ----- |
| **id**                       | **String**                                                  | id of seed record |
| **createKeysConfigInputDto** | [**CreateKeysConfigInputDto**](CreateKeysConfigInputDto.md) | CreateKey         |

### Return type

[**CreateKeysConfigResultDto**](CreateKeysConfigResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **decryptByPrivateKey**

> DecryptByPrivateKeyResultDto decryptByPrivateKey(id, decryptByPrivateKeyInputDto)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = KeyApi();
final id = id_example; // String | id of seed
final decryptByPrivateKeyInputDto = DecryptByPrivateKeyInputDto(); // DecryptByPrivateKeyInputDto | DecryptByPrivateKey

try {
    final result = api_instance.decryptByPrivateKey(id, decryptByPrivateKeyInputDto);
    print(result);
} catch (e) {
    print('Exception when calling KeyApi->decryptByPrivateKey: $e\n');
}
```

### Parameters

| Name                            | Type                                                              | Description         | Notes |
| ------------------------------- | ----------------------------------------------------------------- | ------------------- | ----- |
| **id**                          | **String**                                                        | id of seed          |
| **decryptByPrivateKeyInputDto** | [**DecryptByPrivateKeyInputDto**](DecryptByPrivateKeyInputDto.md) | DecryptByPrivateKey |

### Return type

[**DecryptByPrivateKeyResultDto**](DecryptByPrivateKeyResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **kmssignCredential**

> SignCredentialResultDto kmssignCredential(id, signCredentialInputDto)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = KeyApi();
final id = id_example; // String | id of key
final signCredentialInputDto = SignCredentialInputDto(); // SignCredentialInputDto | SignCredential

try {
    final result = api_instance.kmssignCredential(id, signCredentialInputDto);
    print(result);
} catch (e) {
    print('Exception when calling KeyApi->kmssignCredential: $e\n');
}
```

### Parameters

| Name                       | Type                                                    | Description    | Notes |
| -------------------------- | ------------------------------------------------------- | -------------- | ----- |
| **id**                     | **String**                                              | id of key      |
| **signCredentialInputDto** | [**SignCredentialInputDto**](SignCredentialInputDto.md) | SignCredential |

### Return type

[**SignCredentialResultDto**](SignCredentialResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sign**

> SignResultDto sign(id, signInputDto)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = KeyApi();
final id = id_example; // String | id of signing key configuration
final signInputDto = SignInputDto(); // SignInputDto | Sign

try {
    final result = api_instance.sign(id, signInputDto);
    print(result);
} catch (e) {
    print('Exception when calling KeyApi->sign: $e\n');
}
```

### Parameters

| Name             | Type                                | Description                     | Notes |
| ---------------- | ----------------------------------- | ------------------------------- | ----- |
| **id**           | **String**                          | id of signing key configuration |
| **signInputDto** | [**SignInputDto**](SignInputDto.md) | Sign                            |

### Return type

[**SignResultDto**](SignResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signJwt**

> SignJwtResultDto signJwt(id, signJwtInputDto)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = KeyApi();
final id = id_example; // String | id of seed
final signJwtInputDto = SignJwtInputDto(); // SignJwtInputDto | SignJwt

try {
    final result = api_instance.signJwt(id, signJwtInputDto);
    print(result);
} catch (e) {
    print('Exception when calling KeyApi->signJwt: $e\n');
}
```

### Parameters

| Name                | Type                                      | Description | Notes |
| ------------------- | ----------------------------------------- | ----------- | ----- |
| **id**              | **String**                                | id of seed  |
| **signJwtInputDto** | [**SignJwtInputDto**](SignJwtInputDto.md) | SignJwt     |

### Return type

[**SignJwtResultDto**](SignJwtResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
