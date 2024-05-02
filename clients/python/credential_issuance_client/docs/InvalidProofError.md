# InvalidProofError

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
from affinidi_tdk_credential_issuance_client.models.invalid_proof_error import InvalidProofError

# TODO update the JSON string below
json = "{}"
# create an instance of InvalidProofError from a JSON string
invalid_proof_error_instance = InvalidProofError.from_json(json)
# print the JSON string representation of the object
print InvalidProofError.to_json()

# convert the object into a dict
invalid_proof_error_dict = invalid_proof_error_instance.to_dict()
# create an instance of InvalidProofError from a dict
invalid_proof_error_form_dict = invalid_proof_error.from_dict(invalid_proof_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
