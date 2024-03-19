# ServiceErrorResponseDetailsInner

Details about an input error informing about the location and the reason of the error.

## Properties

| Name         | Type    | Description                                               | Notes      |
| ------------ | ------- | --------------------------------------------------------- | ---------- |
| **issue**    | **str** | Information about what the error is about.                |
| **field**    | **str** | Indicates the field which contains or is the issue.       | [optional] |
| **value**    | **str** | Indicates the field value which contains or is the issue. | [optional] |
| **location** | **str** | Indicates where the error occurred.                       | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.service_error_response_details_inner import ServiceErrorResponseDetailsInner

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
