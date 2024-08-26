# CredentialSupportedObject

## Properties

| Name                    | Type                                                              | Description                                                                       | Notes      |
| ----------------------- | ----------------------------------------------------------------- | --------------------------------------------------------------------------------- | ---------- |
| **credential_type_id**  | **str**                                                           | It is a String that identifies a Credential that is being requested to be issued. |
| **json_schema_url**     | **str**                                                           | credential jsonLdContextUrl                                                       |
| **json_ld_context_url** | **str**                                                           | credential jsonSchemaUrl                                                          |
| **metadata**            | [**SupportedCredentialMetadata**](SupportedCredentialMetadata.md) |                                                                                   | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.credential_supported_object import CredentialSupportedObject

# TODO update the JSON string below
json = "{}"
# create an instance of CredentialSupportedObject from a JSON string
credential_supported_object_instance = CredentialSupportedObject.from_json(json)
# print the JSON string representation of the object
print CredentialSupportedObject.to_json()

# convert the object into a dict
credential_supported_object_dict = credential_supported_object_instance.to_dict()
# create an instance of CredentialSupportedObject from a dict
credential_supported_object_from_dict = CredentialSupportedObject.from_dict(credential_supported_object_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
