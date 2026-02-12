# UnexpectedErrorDetailsInner

## Properties

| Name         | Type    | Description | Notes      |
| ------------ | ------- | ----------- | ---------- |
| **issue**    | **str** |             |
| **field**    | **str** |             | [optional] |
| **value**    | **str** |             | [optional] |
| **location** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_iam_client.models.unexpected_error_details_inner import UnexpectedErrorDetailsInner

# TODO update the JSON string below
json = "{}"
# create an instance of UnexpectedErrorDetailsInner from a JSON string
unexpected_error_details_inner_instance = UnexpectedErrorDetailsInner.from_json(json)
# print the JSON string representation of the object
print UnexpectedErrorDetailsInner.to_json()

# convert the object into a dict
unexpected_error_details_inner_dict = unexpected_error_details_inner_instance.to_dict()
# create an instance of UnexpectedErrorDetailsInner from a dict
unexpected_error_details_inner_from_dict = UnexpectedErrorDetailsInner.from_dict(unexpected_error_details_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
