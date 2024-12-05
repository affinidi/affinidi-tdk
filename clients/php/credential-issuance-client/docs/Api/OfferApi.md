# OpenAPI\Client\OfferApi

All URIs are relative to https://apse1.api.affinidi.io/cis, except if the operation defines another base path.

| Method                                                     | HTTP request                                | Description |
| ---------------------------------------------------------- | ------------------------------------------- | ----------- |
| [**getCredentialOffer()**](OfferApi.md#getCredentialOffer) | **GET** /v1/{projectId}/offers/{issuanceId} |             |

## `getCredentialOffer()`

```php
getCredentialOffer($project_id, $issuance_id): \OpenAPI\Client\Model\CredentialOfferResponse
```

Endpoint used to return Credential Offer details, used with `credential_offer_uri` response

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\OfferApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$project_id = 'project_id_example'; // string | Affinidi project id
$issuance_id = 'issuance_id_example'; // string | issuanceId from credential_offer_uri

try {
    $result = $apiInstance->getCredentialOffer($project_id, $issuance_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OfferApi->getCredentialOffer: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name            | Type       | Description                          | Notes |
| --------------- | ---------- | ------------------------------------ | ----- |
| **project_id**  | **string** | Affinidi project id                  |       |
| **issuance_id** | **string** | issuanceId from credential_offer_uri |       |

### Return type

[**\OpenAPI\Client\Model\CredentialOfferResponse**](../Model/CredentialOfferResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
