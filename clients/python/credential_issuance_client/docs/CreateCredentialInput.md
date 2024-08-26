# CreateCredentialInput

## Properties

| Name                      | Type                                      | Description                                                                       | Notes      |
| ------------------------- | ----------------------------------------- | --------------------------------------------------------------------------------- | ---------- |
| **credential_identifier** | **str**                                   | It is a String that identifies a Credential that is being requested to be issued. | [optional] |
| **proof**                 | [**CredentialProof**](CredentialProof.md) |                                                                                   |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.create_credential_input import CreateCredentialInput

# TODO update the JSON string below
json = "{}"
# create an instance of CreateCredentialInput from a JSON string
create_credential_input_instance = CreateCredentialInput.from_json(json)
# print the JSON string representation of the object
print CreateCredentialInput.to_json()

# convert the object into a dict
create_credential_input_dict = create_credential_input_instance.to_dict()
# create an instance of CreateCredentialInput from a dict
create_credential_input_from_dict = CreateCredentialInput.from_dict(create_credential_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
