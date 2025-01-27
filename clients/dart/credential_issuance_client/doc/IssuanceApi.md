# affinidi_tdk_credential_issuance_client.api.IssuanceApi

## Load the API package

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                  | HTTP request                                        | Description |
| ------------------------------------------------------- | --------------------------------------------------- | ----------- |
| [**issuanceState**](IssuanceApi.md#issuancestate)       | **GET** /v1/{projectId}/issuance/state/{issuanceId} |
| [**issueCredentials**](IssuanceApi.md#issuecredentials) | **POST** /v1/{projectId}/credential/issue           |
| [**listIssuance**](IssuanceApi.md#listissuance)         | **GET** /v1/{projectId}/issuance                    |
| [**startIssuance**](IssuanceApi.md#startissuance)       | **POST** /v1/{projectId}/issuance/start             |

# **issuanceState**

> IssuanceStateResponse issuanceState(issuanceId, projectId)

Get issuance status

### Example

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkCredentialIssuanceClient().getIssuanceApi();
final String issuanceId = issuanceId_example; // String |
final String projectId = projectId_example; // String | Affinidi project id

try {
    final response = api.issuanceState(issuanceId, projectId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IssuanceApi->issuanceState: $e\n');
}
```

### Parameters

| Name           | Type       | Description         | Notes |
| -------------- | ---------- | ------------------- | ----- |
| **issuanceId** | **String** |                     |
| **projectId**  | **String** | Affinidi project id |

### Return type

[**IssuanceStateResponse**](IssuanceStateResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueCredentials**

> CredentialResponse issueCredentials(projectId, startIssuanceInput)

Endpoint to issue credentials directly without following OID4VCI flow

### Example

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkCredentialIssuanceClient().getIssuanceApi();
final String projectId = projectId_example; // String | Affinidi project id
final StartIssuanceInput startIssuanceInput = ; // StartIssuanceInput | Request body to start issuance

try {
    final response = api.issueCredentials(projectId, startIssuanceInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IssuanceApi->issueCredentials: $e\n');
}
```

### Parameters

| Name                   | Type                                            | Description                    | Notes |
| ---------------------- | ----------------------------------------------- | ------------------------------ | ----- |
| **projectId**          | **String**                                      | Affinidi project id            |
| **startIssuanceInput** | [**StartIssuanceInput**](StartIssuanceInput.md) | Request body to start issuance |

### Return type

[**CredentialResponse**](CredentialResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIssuance**

> ListIssuanceResponse listIssuance(projectId)

List all issuances for Project

### Example

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkCredentialIssuanceClient().getIssuanceApi();
final String projectId = projectId_example; // String | Affinidi project id

try {
    final response = api.listIssuance(projectId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IssuanceApi->listIssuance: $e\n');
}
```

### Parameters

| Name          | Type       | Description         | Notes |
| ------------- | ---------- | ------------------- | ----- |
| **projectId** | **String** | Affinidi project id |

### Return type

[**ListIssuanceResponse**](ListIssuanceResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startIssuance**

> StartIssuanceResponse startIssuance(projectId, startIssuanceInput)

Endpoint used b websites to start the issuance process

### Example

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkCredentialIssuanceClient().getIssuanceApi();
final String projectId = projectId_example; // String | Affinidi project id
final StartIssuanceInput startIssuanceInput = ; // StartIssuanceInput | Request body to start issuance

try {
    final response = api.startIssuance(projectId, startIssuanceInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IssuanceApi->startIssuance: $e\n');
}
```

### Parameters

| Name                   | Type                                            | Description                    | Notes |
| ---------------------- | ----------------------------------------------- | ------------------------------ | ----- |
| **projectId**          | **String**                                      | Affinidi project id            |
| **startIssuanceInput** | [**StartIssuanceInput**](StartIssuanceInput.md) | Request body to start issuance |

### Return type

[**StartIssuanceResponse**](StartIssuanceResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
