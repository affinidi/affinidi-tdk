# affinidi_tdk_client_cis.api.WellKnownApi

## Load the API package

```dart
import 'package:affinidi_tdk_client_cis/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                                                       | HTTP request                                                 | Description |
| -------------------------------------------------------------------------------------------- | ------------------------------------------------------------ | ----------- |
| [**getWellKnownOpenIdCredentialIssuer**](WellKnownApi.md#getwellknownopenidcredentialissuer) | **GET** /v1/{projectId}/.well-known/openid-credential-issuer |

# **getWellKnownOpenIdCredentialIssuer**

> WellKnownOpenIdCredentialIssuerResponse getWellKnownOpenIdCredentialIssuer()

### Example

```dart
import 'package:affinidi_tdk_client_cis/api.dart';

final api_instance = WellKnownApi();

try {
    final result = api_instance.getWellKnownOpenIdCredentialIssuer();
    print(result);
} catch (e) {
    print('Exception when calling WellKnownApi->getWellKnownOpenIdCredentialIssuer: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WellKnownOpenIdCredentialIssuerResponse**](WellKnownOpenIdCredentialIssuerResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
