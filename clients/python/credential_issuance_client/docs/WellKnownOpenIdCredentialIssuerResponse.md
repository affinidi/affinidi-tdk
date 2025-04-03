# WellKnownOpenIdCredentialIssuerResponse

## Properties

| Name                                      | Type                                                                                                                                              | Description | Notes      |
| ----------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ---------- |
| **authorization_endpoint**                | **str**                                                                                                                                           |             | [optional] |
| **credential_endpoint**                   | **str**                                                                                                                                           |             | [optional] |
| **credential_issuer**                     | **str**                                                                                                                                           |             | [optional] |
| **batch_credential_endpoint**             | **str**                                                                                                                                           |             | [optional] |
| **credentials_supported**                 | [**List[WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner]**](WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner.md) |             | [optional] |
| **deferred_credential_endpoint**          | **str**                                                                                                                                           |             | [optional] |
| **grant_types_supported**                 | **List[str]**                                                                                                                                     |             | [optional] |
| **jwks_uri**                              | **str**                                                                                                                                           |             | [optional] |
| **scopes_supported**                      | **List[str]**                                                                                                                                     |             | [optional] |
| **token_endpoint**                        | **str**                                                                                                                                           |             | [optional] |
| **token_endpoint_auth_methods_supported** | **List[str]**                                                                                                                                     |             | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.well_known_open_id_credential_issuer_response import WellKnownOpenIdCredentialIssuerResponse

# TODO update the JSON string below
json = "{}"
# create an instance of WellKnownOpenIdCredentialIssuerResponse from a JSON string
well_known_open_id_credential_issuer_response_instance = WellKnownOpenIdCredentialIssuerResponse.from_json(json)
# print the JSON string representation of the object
print WellKnownOpenIdCredentialIssuerResponse.to_json()

# convert the object into a dict
well_known_open_id_credential_issuer_response_dict = well_known_open_id_credential_issuer_response_instance.to_dict()
# create an instance of WellKnownOpenIdCredentialIssuerResponse from a dict
well_known_open_id_credential_issuer_response_from_dict = WellKnownOpenIdCredentialIssuerResponse.from_dict(well_known_open_id_credential_issuer_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
