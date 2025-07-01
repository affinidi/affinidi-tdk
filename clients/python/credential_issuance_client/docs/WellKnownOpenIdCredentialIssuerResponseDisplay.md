# WellKnownOpenIdCredentialIssuerResponseDisplay

## Properties

| Name       | Type                                                                                                            | Description | Notes      |
| ---------- | --------------------------------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**   | **str**                                                                                                         |             | [optional] |
| **locale** | **str**                                                                                                         |             | [optional] |
| **logo**   | [**WellKnownOpenIdCredentialIssuerResponseDisplayLogo**](WellKnownOpenIdCredentialIssuerResponseDisplayLogo.md) |             | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.well_known_open_id_credential_issuer_response_display import WellKnownOpenIdCredentialIssuerResponseDisplay

# TODO update the JSON string below
json = "{}"
# create an instance of WellKnownOpenIdCredentialIssuerResponseDisplay from a JSON string
well_known_open_id_credential_issuer_response_display_instance = WellKnownOpenIdCredentialIssuerResponseDisplay.from_json(json)
# print the JSON string representation of the object
print WellKnownOpenIdCredentialIssuerResponseDisplay.to_json()

# convert the object into a dict
well_known_open_id_credential_issuer_response_display_dict = well_known_open_id_credential_issuer_response_display_instance.to_dict()
# create an instance of WellKnownOpenIdCredentialIssuerResponseDisplay from a dict
well_known_open_id_credential_issuer_response_display_from_dict = WellKnownOpenIdCredentialIssuerResponseDisplay.from_dict(well_known_open_id_credential_issuer_response_display_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
