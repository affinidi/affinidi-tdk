# CodeMismatchExceptionError

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
from affinidi_tdk_client_kyc.models.code_mismatch_exception_error import CodeMismatchExceptionError

# TODO update the JSON string below
json = "{}"
# create an instance of CodeMismatchExceptionError from a JSON string
code_mismatch_exception_error_instance = CodeMismatchExceptionError.from_json(json)
# print the JSON string representation of the object
print CodeMismatchExceptionError.to_json()

# convert the object into a dict
code_mismatch_exception_error_dict = code_mismatch_exception_error_instance.to_dict()
# create an instance of CodeMismatchExceptionError from a dict
code_mismatch_exception_error_form_dict = code_mismatch_exception_error.from_dict(code_mismatch_exception_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
