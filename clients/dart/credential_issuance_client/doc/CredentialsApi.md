# affinidi_tdk_credential_issuance_client.api.CredentialsApi

## Load the API package

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                           | HTTP request                        | Description |
| ---------------------------------------------------------------- | ----------------------------------- | ----------- |
| [**generateCredentials**](CredentialsApi.md#generatecredentials) | **POST** /v1/{projectId}/credential |

# **generateCredentials**

> CredentialResponse generateCredentials(projectId, createCredentialInput)

Issue credential for end user upon presentation a valid access token. Since we don't immediate issue credential It's expected to return `transaction_id` and use this `transaction_id` to get the deferred credentials

### Example

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CredentialsApi();
final projectId = projectId_example; // String | Affinidi project id
final createCredentialInput = CreateCredentialInput(); // CreateCredentialInput | Request body to issue credentials

try {
    final result = api_instance.generateCredentials(projectId, createCredentialInput);
    print(result);
} catch (e) {
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
