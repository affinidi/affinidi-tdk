# InvalidJwtTokenErrorDetailsInner

## Properties

| Name         | Type    | Description | Notes      |
| ------------ | ------- | ----------- | ---------- |
| **issue**    | **str** |             |
| **field**    | **str** |             | [optional] |
| **value**    | **str** |             | [optional] |
| **location** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_consumer_iam_client.models.invalid_jwt_token_error_details_inner import InvalidJwtTokenErrorDetailsInner

# TODO update the JSON string below
json = "{}"
# create an instance of InvalidJwtTokenErrorDetailsInner from a JSON string
invalid_jwt_token_error_details_inner_instance = InvalidJwtTokenErrorDetailsInner.from_json(json)
# print the JSON string representation of the object
print InvalidJwtTokenErrorDetailsInner.to_json()

# convert the object into a dict
invalid_jwt_token_error_details_inner_dict = invalid_jwt_token_error_details_inner_instance.to_dict()
# create an instance of InvalidJwtTokenErrorDetailsInner from a dict
invalid_jwt_token_error_details_inner_from_dict = InvalidJwtTokenErrorDetailsInner.from_dict(invalid_jwt_token_error_details_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
