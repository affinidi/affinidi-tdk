# InvalidCredentialRequestError

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
from affinidi_tdk_credential_issuance_client.models.invalid_credential_request_error import InvalidCredentialRequestError

# TODO update the JSON string below
json = "{}"
# create an instance of InvalidCredentialRequestError from a JSON string
invalid_credential_request_error_instance = InvalidCredentialRequestError.from_json(json)
# print the JSON string representation of the object
print InvalidCredentialRequestError.to_json()

# convert the object into a dict
invalid_credential_request_error_dict = invalid_credential_request_error_instance.to_dict()
# create an instance of InvalidCredentialRequestError from a dict
invalid_credential_request_error_from_dict = InvalidCredentialRequestError.from_dict(invalid_credential_request_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
