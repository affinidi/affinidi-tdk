# SupportedCredentialMetadata

## Properties

| Name        | Type                                                                                            | Description | Notes      |
| ----------- | ----------------------------------------------------------------------------------------------- | ----------- | ---------- |
| **display** | [**List[SupportedCredentialMetadataDisplayInner]**](SupportedCredentialMetadataDisplayInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.supported_credential_metadata import SupportedCredentialMetadata

# TODO update the JSON string below
json = "{}"
# create an instance of SupportedCredentialMetadata from a JSON string
supported_credential_metadata_instance = SupportedCredentialMetadata.from_json(json)
# print the JSON string representation of the object
print SupportedCredentialMetadata.to_json()

# convert the object into a dict
supported_credential_metadata_dict = supported_credential_metadata_instance.to_dict()
# create an instance of SupportedCredentialMetadata from a dict
supported_credential_metadata_form_dict = supported_credential_metadata.from_dict(supported_credential_metadata_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
