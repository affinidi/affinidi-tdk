# OfferApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                   | HTTP request                                | Description |
| -------------------------------------------------------- | ------------------------------------------- | ----------- |
| [**getCredentialOffer**](OfferApi.md#getCredentialOffer) | **GET** /v1/{projectId}/offers/{issuanceId} |             |

<a name="getCredentialOffer"></a>

# **getCredentialOffer**

> CredentialOfferResponse getCredentialOffer(projectId, issuanceId)

    Endpoint used to return Credential Offer details, used with &#x60;credential_offer_uri&#x60; response

### Parameters

| Name           | Type       | Description                          | Notes             |
| -------------- | ---------- | ------------------------------------ | ----------------- |
| **projectId**  | **String** | Affinidi project id                  | [default to null] |
| **issuanceId** | **String** | issuanceId from credential_offer_uri | [default to null] |

### Return type

[**CredentialOfferResponse**](../Models/CredentialOfferResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
