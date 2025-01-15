# affinidi_tdk_credential_issuance_client.api.OfferApi

## Load the API package

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                   | HTTP request                                | Description |
| -------------------------------------------------------- | ------------------------------------------- | ----------- |
| [**getCredentialOffer**](OfferApi.md#getcredentialoffer) | **GET** /v1/{projectId}/offers/{issuanceId} |

# **getCredentialOffer**

> CredentialOfferResponse getCredentialOffer(projectId, issuanceId)

Endpoint used to return Credential Offer details, used with `credential_offer_uri` response

### Example

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';

final api = AffinidiTdkCredentialIssuanceClient().getOfferApi();
final String projectId = projectId_example; // String | Affinidi project id
final String issuanceId = issuanceId_example; // String | issuanceId from credential_offer_uri

try {
    final response = api.getCredentialOffer(projectId, issuanceId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OfferApi->getCredentialOffer: $e\n');
}
```

### Parameters

| Name           | Type       | Description                          | Notes |
| -------------- | ---------- | ------------------------------------ | ----- |
| **projectId**  | **String** | Affinidi project id                  |
| **issuanceId** | **String** | issuanceId from credential_offer_uri |

### Return type

[**CredentialOfferResponse**](CredentialOfferResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
