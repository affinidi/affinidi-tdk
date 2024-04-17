# ActionForbiddenErrorDetailsInner

## Properties

| Name         | Type    | Description | Notes      |
| ------------ | ------- | ----------- | ---------- |
| **issue**    | **str** |             |
| **field**    | **str** |             | [optional] |
| **value**    | **str** |             | [optional] |
| **location** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_client_cis.models.action_forbidden_error_details_inner import ActionForbiddenErrorDetailsInner

# TODO update the JSON string below
json = "{}"
# create an instance of ActionForbiddenErrorDetailsInner from a JSON string
action_forbidden_error_details_inner_instance = ActionForbiddenErrorDetailsInner.from_json(json)
# print the JSON string representation of the object
print ActionForbiddenErrorDetailsInner.to_json()

# convert the object into a dict
action_forbidden_error_details_inner_dict = action_forbidden_error_details_inner_instance.to_dict()
# create an instance of ActionForbiddenErrorDetailsInner from a dict
action_forbidden_error_details_inner_form_dict = action_forbidden_error_details_inner.from_dict(action_forbidden_error_details_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
