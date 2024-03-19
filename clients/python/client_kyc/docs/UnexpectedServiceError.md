# UnexpectedServiceError

Unexpected service error.

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
from affinidi_tdk_client_kyc.models.unexpected_service_error import UnexpectedServiceError

# TODO update the JSON string below
json = "{}"
# create an instance of UnexpectedServiceError from a JSON string
unexpected_service_error_instance = UnexpectedServiceError.from_json(json)
# print the JSON string representation of the object
print UnexpectedServiceError.to_json()

# convert the object into a dict
unexpected_service_error_dict = unexpected_service_error_instance.to_dict()
# create an instance of UnexpectedServiceError from a dict
unexpected_service_error_form_dict = unexpected_service_error.from_dict(unexpected_service_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
