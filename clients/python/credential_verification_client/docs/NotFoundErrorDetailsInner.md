# NotFoundErrorDetailsInner

## Properties

| Name         | Type    | Description | Notes      |
| ------------ | ------- | ----------- | ---------- |
| **issue**    | **str** |             |
| **field**    | **str** |             | [optional] |
| **value**    | **str** |             | [optional] |
| **location** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_credential_verification_client.models.not_found_error_details_inner import NotFoundErrorDetailsInner

# TODO update the JSON string below
json = "{}"
# create an instance of NotFoundErrorDetailsInner from a JSON string
not_found_error_details_inner_instance = NotFoundErrorDetailsInner.from_json(json)
# print the JSON string representation of the object
print NotFoundErrorDetailsInner.to_json()

# convert the object into a dict
not_found_error_details_inner_dict = not_found_error_details_inner_instance.to_dict()
# create an instance of NotFoundErrorDetailsInner from a dict
not_found_error_details_inner_from_dict = NotFoundErrorDetailsInner.from_dict(not_found_error_details_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
