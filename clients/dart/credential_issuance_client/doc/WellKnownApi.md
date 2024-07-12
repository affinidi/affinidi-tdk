# affinidi_tdk_credential_issuance_client.api.WellKnownApi

## Load the API package

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                                                       | HTTP request                                                 | Description |
| -------------------------------------------------------------------------------------------- | ------------------------------------------------------------ | ----------- |
| [**getWellKnownOpenIdCredentialIssuer**](WellKnownApi.md#getwellknownopenidcredentialissuer) | **GET** /v1/{projectId}/.well-known/openid-credential-issuer |

# **getWellKnownOpenIdCredentialIssuer**

> WellKnownOpenIdCredentialIssuerResponse getWellKnownOpenIdCredentialIssuer(projectId)

### Example

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';

final api_instance = WellKnownApi();
final projectId = projectId_example; // String | Affinidi project id

try {
    final result = api_instance.getWellKnownOpenIdCredentialIssuer(projectId);
    print(result);
} catch (e) {
    print('Exception when calling WellKnownApi->getWellKnownOpenIdCredentialIssuer: $e\n');
}
```

### Parameters

| Name          | Type       | Description         | Notes |
| ------------- | ---------- | ------------------- | ----- |
| **projectId** | **String** | Affinidi project id |

### Return type

[**WellKnownOpenIdCredentialIssuerResponse**](WellKnownOpenIdCredentialIssuerResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
