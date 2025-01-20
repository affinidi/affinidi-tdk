# affinidi_tdk_iam_client.api.PoliciesApi

## Load the API package

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                              | HTTP request                                  | Description |
| --------------------------------------------------- | --------------------------------------------- | ----------- |
| [**getPolicies**](PoliciesApi.md#getpolicies)       | **GET** /v1/policies/principals/{principalId} |
| [**updatePolicies**](PoliciesApi.md#updatepolicies) | **PUT** /v1/policies/principals/{principalId} |

# **getPolicies**

> PolicyDto getPolicies(principalId, principalType)

### Example

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIamClient().getPoliciesApi();
final String principalId = principalId_example; // String |
final String principalType = principalType_example; // String |

try {
    final response = api.getPolicies(principalId, principalType);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PoliciesApi->getPolicies: $e\n');
}
```

### Parameters

| Name              | Type       | Description | Notes |
| ----------------- | ---------- | ----------- | ----- |
| **principalId**   | **String** |             |
| **principalType** | **String** |             |

### Return type

[**PolicyDto**](PolicyDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePolicies**

> PolicyDto updatePolicies(principalId, principalType, policyDto)

### Example

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIamClient().getPoliciesApi();
final String principalId = principalId_example; // String |
final String principalType = principalType_example; // String |
final PolicyDto policyDto = ; // PolicyDto | UpdatePolicies

try {
    final response = api.updatePolicies(principalId, principalType, policyDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PoliciesApi->updatePolicies: $e\n');
}
```

### Parameters

| Name              | Type                          | Description    | Notes |
| ----------------- | ----------------------------- | -------------- | ----- |
| **principalId**   | **String**                    |                |
| **principalType** | **String**                    |                |
| **policyDto**     | [**PolicyDto**](PolicyDto.md) | UpdatePolicies |

### Return type

[**PolicyDto**](PolicyDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
