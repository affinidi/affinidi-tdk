# RateLimitExceededError

Thrown if for the specified endpoint count of calls exceeds the limit

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
from affinidi_tdk_client_kyc.models.rate_limit_exceeded_error import RateLimitExceededError

# TODO update the JSON string below
json = "{}"
# create an instance of RateLimitExceededError from a JSON string
rate_limit_exceeded_error_instance = RateLimitExceededError.from_json(json)
# print the JSON string representation of the object
print RateLimitExceededError.to_json()

# convert the object into a dict
rate_limit_exceeded_error_dict = rate_limit_exceeded_error_instance.to_dict()
# create an instance of RateLimitExceededError from a dict
rate_limit_exceeded_error_form_dict = rate_limit_exceeded_error.from_dict(rate_limit_exceeded_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
