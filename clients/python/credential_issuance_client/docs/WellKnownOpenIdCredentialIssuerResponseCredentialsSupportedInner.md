# WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner

## Properties

| Name                    | Type    | Description                                                                       | Notes |
| ----------------------- | ------- | --------------------------------------------------------------------------------- | ----- |
| **credential_type_id**  | **str** | It is a String that identifies a Credential that is being requested to be issued. |
| **json_schema_url**     | **str** | credential jsonLdContextUrl                                                       |
| **json_ld_context_url** | **str** | credential jsonSchemaUrl                                                          |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.well_known_open_id_credential_issuer_response_credentials_supported_inner import WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner

# TODO update the JSON string below
json = "{}"
# create an instance of WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner from a JSON string
well_known_open_id_credential_issuer_response_credentials_supported_inner_instance = WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner.from_json(json)
# print the JSON string representation of the object
print WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner.to_json()

# convert the object into a dict
well_known_open_id_credential_issuer_response_credentials_supported_inner_dict = well_known_open_id_credential_issuer_response_credentials_supported_inner_instance.to_dict()
# create an instance of WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner from a dict
well_known_open_id_credential_issuer_response_credentials_supported_inner_form_dict = well_known_open_id_credential_issuer_response_credentials_supported_inner.from_dict(well_known_open_id_credential_issuer_response_credentials_supported_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
