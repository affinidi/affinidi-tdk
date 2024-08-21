# CredentialSubjectNotValidError

## Properties

| Name                 | Type                                                                              | Description | Notes      |
| -------------------- | --------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**             | **str**                                                                           |             |
| **message**          | **str**                                                                           |             |
| **http_status_code** | **float**                                                                         |             |
| **trace_id**         | **str**                                                                           |             |
| **details**          | [**List[ActionForbiddenErrorDetailsInner]**](ActionForbiddenErrorDetailsInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.credential_subject_not_valid_error import CredentialSubjectNotValidError

# TODO update the JSON string below
json = "{}"
# create an instance of CredentialSubjectNotValidError from a JSON string
credential_subject_not_valid_error_instance = CredentialSubjectNotValidError.from_json(json)
# print the JSON string representation of the object
print CredentialSubjectNotValidError.to_json()

# convert the object into a dict
credential_subject_not_valid_error_dict = credential_subject_not_valid_error_instance.to_dict()
# create an instance of CredentialSubjectNotValidError from a dict
credential_subject_not_valid_error_from_dict = CredentialSubjectNotValidError.from_dict(credential_subject_not_valid_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
