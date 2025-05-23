# affinidi_tdk_credential_issuance_client.api.CredentialsApi

## Load the API package

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                                                 | HTTP request                                                                                | Description                                           |
| -------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ----------------------------------------------------- |
| [**batchCredential**](CredentialsApi.md#batchcredential)                               | **POST** /v1/{projectId}/batch_credential                                                   | Allows wallets to claim multiple credentials at once. |
| [**generateCredentials**](CredentialsApi.md#generatecredentials)                       | **POST** /v1/{projectId}/credential                                                         |
| [**getClaimedCredentials**](CredentialsApi.md#getclaimedcredentials)                   | **GET** /v1/{projectId}/configurations/{configurationId}/credentials                        | Get claimed credential in the specified range         |
| [**getIssuanceIdClaimedCredential**](CredentialsApi.md#getissuanceidclaimedcredential) | **GET** /v1/{projectId}/configurations/{configurationId}/issuances/{issuanceId}/credentials | Get claimed VC linked to the issuanceId               |

# **batchCredential**

> BatchCredentialResponse batchCredential(projectId, batchCredentialInput)

Allows wallets to claim multiple credentials at once.

Allows wallets to claim multiple credentials at once. For authentication, it uses a token from the authorization server

### Example

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';

final api = AffinidiTdkCredentialIssuanceClient().getCredentialsApi();
final String projectId = projectId_example; // String | Affinidi project id
final BatchCredentialInput batchCredentialInput = ; // BatchCredentialInput | Request body for batch credential

try {
    final response = api.batchCredential(projectId, batchCredentialInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CredentialsApi->batchCredential: $e\n');
}
```

### Parameters

| Name                     | Type                                                | Description                       | Notes |
| ------------------------ | --------------------------------------------------- | --------------------------------- | ----- |
| **projectId**            | **String**                                          | Affinidi project id               |
| **batchCredentialInput** | [**BatchCredentialInput**](BatchCredentialInput.md) | Request body for batch credential |

### Return type

[**BatchCredentialResponse**](BatchCredentialResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateCredentials**

> CredentialResponse generateCredentials(projectId, createCredentialInput)

Issue credential for end user upon presentation a valid access token. Since we don't immediate issue credential It's expected to return `transaction_id` and use this `transaction_id` to get the deferred credentials

### Example

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';

final api = AffinidiTdkCredentialIssuanceClient().getCredentialsApi();
final String projectId = projectId_example; // String | Affinidi project id
final CreateCredentialInput createCredentialInput = ; // CreateCredentialInput | Request body to issue credentials

try {
    final response = api.generateCredentials(projectId, createCredentialInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CredentialsApi->generateCredentials: $e\n');
}
```

### Parameters

| Name                      | Type                                                  | Description                       | Notes |
| ------------------------- | ----------------------------------------------------- | --------------------------------- | ----- |
| **projectId**             | **String**                                            | Affinidi project id               |
| **createCredentialInput** | [**CreateCredentialInput**](CreateCredentialInput.md) | Request body to issue credentials |

### Return type

[**CredentialResponse**](CredentialResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClaimedCredentials**

> ClaimedCredentialListResponse getClaimedCredentials(projectId, configurationId, rangeStartTime, rangeEndTime, exclusiveStartKey, limit)

Get claimed credential in the specified range

Get claimed credential in the specified range

### Example

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkCredentialIssuanceClient().getCredentialsApi();
final String projectId = projectId_example; // String | project id
final String configurationId = configurationId_example; // String | configuration id
final String rangeStartTime = rangeStartTime_example; // String |
final String rangeEndTime = rangeEndTime_example; // String |
final String exclusiveStartKey = exclusiveStartKey_example; // String | exclusiveStartKey for retrieving the next batch of data.
final int limit = 56; // int |

try {
    final response = api.getClaimedCredentials(projectId, configurationId, rangeStartTime, rangeEndTime, exclusiveStartKey, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CredentialsApi->getClaimedCredentials: $e\n');
}
```

### Parameters

| Name                  | Type       | Description                                              | Notes                      |
| --------------------- | ---------- | -------------------------------------------------------- | -------------------------- |
| **projectId**         | **String** | project id                                               |
| **configurationId**   | **String** | configuration id                                         |
| **rangeStartTime**    | **String** |                                                          |
| **rangeEndTime**      | **String** |                                                          | [optional]                 |
| **exclusiveStartKey** | **String** | exclusiveStartKey for retrieving the next batch of data. | [optional]                 |
| **limit**             | **int**    |                                                          | [optional] [default to 20] |

### Return type

[**ClaimedCredentialListResponse**](ClaimedCredentialListResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssuanceIdClaimedCredential**

> ClaimedCredentialResponse getIssuanceIdClaimedCredential(projectId, configurationId, issuanceId)

Get claimed VC linked to the issuanceId

Get claimed VC linked to the issuanceId

### Example

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkCredentialIssuanceClient().getCredentialsApi();
final String projectId = projectId_example; // String | project id
final String configurationId = configurationId_example; // String | configuration id
final String issuanceId = issuanceId_example; // String | issuance id

try {
    final response = api.getIssuanceIdClaimedCredential(projectId, configurationId, issuanceId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CredentialsApi->getIssuanceIdClaimedCredential: $e\n');
}
```

### Parameters

| Name                | Type       | Description      | Notes |
| ------------------- | ---------- | ---------------- | ----- |
| **projectId**       | **String** | project id       |
| **configurationId** | **String** | configuration id |
| **issuanceId**      | **String** | issuance id      |

### Return type

[**ClaimedCredentialResponse**](ClaimedCredentialResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
