# affinidi_tdk_iam_client.api.StsApi

## Load the API package

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                             | HTTP request                                 | Description |
| ------------------------------------------------------------------ | -------------------------------------------- | ----------- |
| [**createProjectScopedToken**](StsApi.md#createprojectscopedtoken) | **POST** /v1/sts/create-project-scoped-token |
| [**whoami**](StsApi.md#whoami)                                     | **GET** /v1/sts/whoami                       |

# **createProjectScopedToken**

> CreateProjectScopedTokenOutput createProjectScopedToken(createProjectScopedTokenInput)

### Example

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
// TODO Configure API key authorization: UserTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = StsApi();
final createProjectScopedTokenInput = CreateProjectScopedTokenInput(); // CreateProjectScopedTokenInput | CreateProjectScopedToken

try {
    final result = api_instance.createProjectScopedToken(createProjectScopedTokenInput);
    print(result);
} catch (e) {
    print('Exception when calling StsApi->createProjectScopedToken: $e\n');
}
```

### Parameters

| Name                              | Type                                                                  | Description              | Notes |
| --------------------------------- | --------------------------------------------------------------------- | ------------------------ | ----- |
| **createProjectScopedTokenInput** | [**CreateProjectScopedTokenInput**](CreateProjectScopedTokenInput.md) | CreateProjectScopedToken |

### Return type

[**CreateProjectScopedTokenOutput**](CreateProjectScopedTokenOutput.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **whoami**

> WhoamiDto whoami()

### Example

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
// TODO Configure API key authorization: UserTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = StsApi();

try {
    final result = api_instance.whoami();
    print(result);
} catch (e) {
    print('Exception when calling StsApi->whoami: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WhoamiDto**](WhoamiDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
