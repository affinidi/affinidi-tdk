# UsernameExistsExceptionError

## Properties

| Name                 | Type                                                                                  | Description | Notes      |
| -------------------- | ------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**             | **str**                                                                               |             |
| **message**          | **str**                                                                               |             |
| **http_status_code** | **float**                                                                             |             |
| **trace_id**         | **str**                                                                               |             |
| **details**          | [**List[RateLimitExceededErrorDetailsInner]**](RateLimitExceededErrorDetailsInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_client_kyc.models.username_exists_exception_error import UsernameExistsExceptionError

# TODO update the JSON string below
json = "{}"
# create an instance of UsernameExistsExceptionError from a JSON string
username_exists_exception_error_instance = UsernameExistsExceptionError.from_json(json)
# print the JSON string representation of the object
print UsernameExistsExceptionError.to_json()

# convert the object into a dict
username_exists_exception_error_dict = username_exists_exception_error_instance.to_dict()
# create an instance of UsernameExistsExceptionError from a dict
username_exists_exception_error_form_dict = username_exists_exception_error.from_dict(username_exists_exception_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)