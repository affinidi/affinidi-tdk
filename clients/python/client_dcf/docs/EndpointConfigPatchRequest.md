# EndpointConfigPatchRequest

Defines the executable operations provided by the data connector in order to retrieve data.

## Properties

| Name           | Type                                                                                                | Description                                                               | Notes      |
| -------------- | --------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ---------- |
| **options**    | **Dict[str, object]**                                                                               | Defines all request and auth headers which are common for each operation. | [optional] |
| **operations** | [**List[EndpointConfigPatchRequestOperationsInner]**](EndpointConfigPatchRequestOperationsInner.md) |                                                                           | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.endpoint_config_patch_request import EndpointConfigPatchRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EndpointConfigPatchRequest from a JSON string
endpoint_config_patch_request_instance = EndpointConfigPatchRequest.from_json(json)
# print the JSON string representation of the object
print EndpointConfigPatchRequest.to_json()

# convert the object into a dict
endpoint_config_patch_request_dict = endpoint_config_patch_request_instance.to_dict()
# create an instance of EndpointConfigPatchRequest from a dict
endpoint_config_patch_request_form_dict = endpoint_config_patch_request.from_dict(endpoint_config_patch_request_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
