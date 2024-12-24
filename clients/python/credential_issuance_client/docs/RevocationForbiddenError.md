# RevocationForbiddenError

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
from affinidi_tdk_credential_issuance_client.models.revocation_forbidden_error import RevocationForbiddenError

# TODO update the JSON string below
json = "{}"
# create an instance of RevocationForbiddenError from a JSON string
revocation_forbidden_error_instance = RevocationForbiddenError.from_json(json)
# print the JSON string representation of the object
print RevocationForbiddenError.to_json()

# convert the object into a dict
revocation_forbidden_error_dict = revocation_forbidden_error_instance.to_dict()
# create an instance of RevocationForbiddenError from a dict
revocation_forbidden_error_from_dict = RevocationForbiddenError.from_dict(revocation_forbidden_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
