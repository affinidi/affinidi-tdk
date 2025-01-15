# affinidi_tdk_credential_issuance_client.api.CredentialsApi

## Load the API package

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                           | HTTP request                        | Description |
| ---------------------------------------------------------------- | ----------------------------------- | ----------- |
| [**generateCredentials**](CredentialsApi.md#generatecredentials) | **POST** /v1/{projectId}/credential |

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
