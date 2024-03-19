# ServiceErrorResponseDetailsInner

## Properties

| Name         | Type    | Description | Notes      |
| ------------ | ------- | ----------- | ---------- |
| **issue**    | **str** |             |
| **field**    | **str** |             | [optional] |
| **value**    | **str** |             | [optional] |
| **location** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_client_iam.models.service_error_response_details_inner import ServiceErrorResponseDetailsInner

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceErrorResponseDetailsInner from a JSON string
service_error_response_details_inner_instance = ServiceErrorResponseDetailsInner.from_json(json)
# print the JSON string representation of the object
print ServiceErrorResponseDetailsInner.to_json()

# convert the object into a dict
service_error_response_details_inner_dict = service_error_response_details_inner_instance.to_dict()
# create an instance of ServiceErrorResponseDetailsInner from a dict
service_error_response_details_inner_form_dict = service_error_response_details_inner.from_dict(service_error_response_details_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
