# ServiceErrorResponse

Service Error Response

## Properties

| Name         | Type                                                                              | Description                                           | Notes      |
| ------------ | --------------------------------------------------------------------------------- | ----------------------------------------------------- | ---------- |
| **debug_id** | **str**                                                                           | unique id for correlating this specific error to logs |
| **name**     | **str**                                                                           | name of the error                                     |
| **code**     | **str**                                                                           | backwards compatible Affinidi error code              |
| **details**  | [**List[ServiceErrorResponseDetailsInner]**](ServiceErrorResponseDetailsInner.md) | error details                                         | [optional] |

## Example

```python
from affinidi_tdk_login_configuration_client.models.service_error_response import ServiceErrorResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceErrorResponse from a JSON string
service_error_response_instance = ServiceErrorResponse.from_json(json)
# print the JSON string representation of the object
print ServiceErrorResponse.to_json()

# convert the object into a dict
service_error_response_dict = service_error_response_instance.to_dict()
# create an instance of ServiceErrorResponse from a dict
service_error_response_form_dict = service_error_response.from_dict(service_error_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
