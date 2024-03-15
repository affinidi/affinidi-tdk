# EndpointConfigPatchRequestOperationsInner

## Properties

| Name              | Type                  | Description                                                                                                                                                          | Notes      |
| ----------------- | --------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **template**      | **Dict[str, object]** |                                                                                                                                                                      | [optional] |
| **functions**     | **Dict[str, object]** |                                                                                                                                                                      | [optional] |
| **pagination**    | **Dict[str, object]** |                                                                                                                                                                      | [optional] |
| **source_schema** | **Dict[str, object]** | Schema of the response returned by the chosen API endpoint. It serves as a reference to understand the structure and format of data returned by the data source API. | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.endpoint_config_patch_request_operations_inner import EndpointConfigPatchRequestOperationsInner

# TODO update the JSON string below
json = "{}"
# create an instance of EndpointConfigPatchRequestOperationsInner from a JSON string
endpoint_config_patch_request_operations_inner_instance = EndpointConfigPatchRequestOperationsInner.from_json(json)
# print the JSON string representation of the object
print EndpointConfigPatchRequestOperationsInner.to_json()

# convert the object into a dict
endpoint_config_patch_request_operations_inner_dict = endpoint_config_patch_request_operations_inner_instance.to_dict()
# create an instance of EndpointConfigPatchRequestOperationsInner from a dict
endpoint_config_patch_request_operations_inner_form_dict = endpoint_config_patch_request_operations_inner.from_dict(endpoint_config_patch_request_operations_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
