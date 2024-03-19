# EndpointConfigDtoOperationsInner

Describes the configuration for a single REST operation for the data connector.

## Properties

| Name              | Type                  | Description                                                                                                                                                          | Notes      |
| ----------------- | --------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **template**      | **Dict[str, object]** | An object which defines the REST operation as well as the URL to issue the request.                                                                                  |
| **functions**     | **Dict[str, object]** | An object defining functions which process the received data from the defined operation.                                                                             |
| **pagination**    | **Dict[str, object]** | An optional object defining how paginated results will be collected.                                                                                                 | [optional] |
| **source_schema** | **Dict[str, object]** | Schema of the response returned by the chosen API endpoint. It serves as a reference to understand the structure and format of data returned by the data source API. |

## Example

```python
from affinidi_tdk_client_dcf.models.endpoint_config_dto_operations_inner import EndpointConfigDtoOperationsInner

# TODO update the JSON string below
json = "{}"
# create an instance of EndpointConfigDtoOperationsInner from a JSON string
endpoint_config_dto_operations_inner_instance = EndpointConfigDtoOperationsInner.from_json(json)
# print the JSON string representation of the object
print EndpointConfigDtoOperationsInner.to_json()

# convert the object into a dict
endpoint_config_dto_operations_inner_dict = endpoint_config_dto_operations_inner_instance.to_dict()
# create an instance of EndpointConfigDtoOperationsInner from a dict
endpoint_config_dto_operations_inner_form_dict = endpoint_config_dto_operations_inner.from_dict(endpoint_config_dto_operations_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
