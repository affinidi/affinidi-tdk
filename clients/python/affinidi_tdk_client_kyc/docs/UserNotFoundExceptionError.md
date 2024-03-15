# UserNotFoundExceptionError

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
from affinidi_tdk_client_kyc.models.user_not_found_exception_error import UserNotFoundExceptionError

# TODO update the JSON string below
json = "{}"
# create an instance of UserNotFoundExceptionError from a JSON string
user_not_found_exception_error_instance = UserNotFoundExceptionError.from_json(json)
# print the JSON string representation of the object
print UserNotFoundExceptionError.to_json()

# convert the object into a dict
user_not_found_exception_error_dict = user_not_found_exception_error_instance.to_dict()
# create an instance of UserNotFoundExceptionError from a dict
user_not_found_exception_error_form_dict = user_not_found_exception_error.from_dict(user_not_found_exception_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
