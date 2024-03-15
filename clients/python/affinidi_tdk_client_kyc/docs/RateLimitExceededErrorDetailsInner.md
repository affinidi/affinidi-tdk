# RateLimitExceededErrorDetailsInner

## Properties

| Name         | Type    | Description | Notes      |
| ------------ | ------- | ----------- | ---------- |
| **issue**    | **str** |             |
| **field**    | **str** |             | [optional] |
| **value**    | **str** |             | [optional] |
| **location** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_client_kyc.models.rate_limit_exceeded_error_details_inner import RateLimitExceededErrorDetailsInner

# TODO update the JSON string below
json = "{}"
# create an instance of RateLimitExceededErrorDetailsInner from a JSON string
rate_limit_exceeded_error_details_inner_instance = RateLimitExceededErrorDetailsInner.from_json(json)
# print the JSON string representation of the object
print RateLimitExceededErrorDetailsInner.to_json()

# convert the object into a dict
rate_limit_exceeded_error_details_inner_dict = rate_limit_exceeded_error_details_inner_instance.to_dict()
# create an instance of RateLimitExceededErrorDetailsInner from a dict
rate_limit_exceeded_error_details_inner_form_dict = rate_limit_exceeded_error_details_inner.from_dict(rate_limit_exceeded_error_details_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
