# affinidi_tdk_client_cis.api.CredentialsApi

## Load the API package

```dart
import 'package:affinidi_tdk_client_cis/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                           | HTTP request                                 | Description |
| ---------------------------------------------------------------- | -------------------------------------------- | ----------- |
| [**deferredCredentials**](CredentialsApi.md#deferredcredentials) | **POST** /v1/{projectId}/deferred_credential |
| [**generateCredentials**](CredentialsApi.md#generatecredentials) | **POST** /v1/{projectId}/credential          |

# **deferredCredentials**

> CredentialResponseImmediate deferredCredentials(projectId, deferredCredentialInput, authorization)

Get deferred credential by `transaction_id`

### Example

```dart
import 'package:affinidi_tdk_client_cis/api.dart';

final api_instance = CredentialsApi();
final projectId = projectId_example; // String | Affinidi project id
final deferredCredentialInput = DeferredCredentialInput(); // DeferredCredentialInput | Request body of deferred credentials
final authorization = authorization_example; // String | Token from OID4VCI auth server

try {
    final result = api_instance.deferredCredentials(projectId, deferredCredentialInput, authorization);
    print(result);
} catch (e) {
    print('Exception when calling CredentialsApi->deferredCredentials: $e\n');
}
```

### Parameters

| Name                        | Type                                                      | Description                          | Notes      |
| --------------------------- | --------------------------------------------------------- | ------------------------------------ | ---------- |
| **projectId**               | **String**                                                | Affinidi project id                  |
| **deferredCredentialInput** | [**DeferredCredentialInput**](DeferredCredentialInput.md) | Request body of deferred credentials |
| **authorization**           | **String**                                                | Token from OID4VCI auth server       | [optional] |

### Return type

[**CredentialResponseImmediate**](CredentialResponseImmediate.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateCredentials**

> CredentialResponse generateCredentials(projectId, createCredentialInput, authorization)

Issue credential for end user upon presentation a valid access token. Since we don't immediate issue credential It's expected to return `transaction_id` and use this `transaction_id` to get the deferred credentials

### Example

```dart
import 'package:affinidi_tdk_client_cis/api.dart';

final api_instance = CredentialsApi();
final projectId = projectId_example; // String | Affinidi project id
final createCredentialInput = CreateCredentialInput(); // CreateCredentialInput | Request body to issue credentials
final authorization = authorization_example; // String | Token from OID4VCI auth server

try {
    final result = api_instance.generateCredentials(projectId, createCredentialInput, authorization);
    print(result);
} catch (e) {
    print('Exception when calling CredentialsApi->generateCredentials: $e\n');
}
```

### Parameters

| Name                      | Type                                                  | Description                       | Notes      |
| ------------------------- | ----------------------------------------------------- | --------------------------------- | ---------- |
| **projectId**             | **String**                                            | Affinidi project id               |
| **createCredentialInput** | [**CreateCredentialInput**](CreateCredentialInput.md) | Request body to issue credentials |
| **authorization**         | **String**                                            | Token from OID4VCI auth server    | [optional] |

### Return type

[**CredentialResponse**](CredentialResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
