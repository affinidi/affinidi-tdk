# SupportedCredentialMetadataDisplayInner

## Properties

| Name                 | Type                                                                                              | Description | Notes      |
| -------------------- | ------------------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**             | **str**                                                                                           |             |
| **locale**           | **str**                                                                                           |             | [optional] |
| **logo**             | [**SupportedCredentialMetadataDisplayInnerLogo**](SupportedCredentialMetadataDisplayInnerLogo.md) |             | [optional] |
| **background_color** | **str**                                                                                           |             | [optional] |
| **text_color**       | **str**                                                                                           |             | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.supported_credential_metadata_display_inner import SupportedCredentialMetadataDisplayInner

# TODO update the JSON string below
json = "{}"
# create an instance of SupportedCredentialMetadataDisplayInner from a JSON string
supported_credential_metadata_display_inner_instance = SupportedCredentialMetadataDisplayInner.from_json(json)
# print the JSON string representation of the object
print SupportedCredentialMetadataDisplayInner.to_json()

# convert the object into a dict
supported_credential_metadata_display_inner_dict = supported_credential_metadata_display_inner_instance.to_dict()
# create an instance of SupportedCredentialMetadataDisplayInner from a dict
supported_credential_metadata_display_inner_form_dict = supported_credential_metadata_display_inner.from_dict(supported_credential_metadata_display_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
