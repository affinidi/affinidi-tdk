# OfferApi

All URIs are relative to _http://localhost_

| Method                                                   | HTTP request                               | Description |
| -------------------------------------------------------- | ------------------------------------------ | ----------- |
| [**getCredentialOffer**](OfferApi.md#getCredentialOffer) | **GET** /v1/{projectId}/offer/{issuanceId} |             |

<a name="getCredentialOffer"></a>

# **getCredentialOffer**

> CredentialOfferResponse getCredentialOffer(issuanceId)

    Endpoint used to return Credential Offer details, used with &#x60;credential_offer_uri&#x60; response

### Parameters

| Name           | Type       | Description                          | Notes             |
| -------------- | ---------- | ------------------------------------ | ----------------- |
| **issuanceId** | **String** | issuanceId from credential_offer_uri | [default to null] |

### Return type

[**CredentialOfferResponse**](../Models/CredentialOfferResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
