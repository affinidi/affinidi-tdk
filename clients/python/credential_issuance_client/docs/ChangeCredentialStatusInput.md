# ChangeCredentialStatusInput

## Properties

| Name                   | Type    | Description           | Notes      |
| ---------------------- | ------- | --------------------- | ---------- |
| **change_reason**      | **str** | reason for revocation | [optional] |
| **issuance_record_id** | **str** |                       | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.change_credential_status_input import ChangeCredentialStatusInput

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeCredentialStatusInput from a JSON string
change_credential_status_input_instance = ChangeCredentialStatusInput.from_json(json)
# print the JSON string representation of the object
print ChangeCredentialStatusInput.to_json()

# convert the object into a dict
change_credential_status_input_dict = change_credential_status_input_instance.to_dict()
# create an instance of ChangeCredentialStatusInput from a dict
change_credential_status_input_from_dict = ChangeCredentialStatusInput.from_dict(change_credential_status_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
