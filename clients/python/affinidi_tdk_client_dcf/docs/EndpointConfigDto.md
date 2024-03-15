# EndpointConfigDto

Defines the executable operations provided by the data connector in order to retrieve data.

## Properties

| Name           | Type                                                                              | Description                                                               | Notes |
| -------------- | --------------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ----- |
| **options**    | **Dict[str, object]**                                                             | Defines all request and auth headers which are common for each operation. |
| **operations** | [**List[EndpointConfigDtoOperationsInner]**](EndpointConfigDtoOperationsInner.md) | A list of REST operations to retrieve data from the data connector.       |

## Example

```python
from affinidi_tdk_client_dcf.models.endpoint_config_dto import EndpointConfigDto

# TODO update the JSON string below
json = "{}"
# create an instance of EndpointConfigDto from a JSON string
endpoint_config_dto_instance = EndpointConfigDto.from_json(json)
# print the JSON string representation of the object
print EndpointConfigDto.to_json()

# convert the object into a dict
endpoint_config_dto_dict = endpoint_config_dto_instance.to_dict()
# create an instance of EndpointConfigDto from a dict
endpoint_config_dto_form_dict = endpoint_config_dto.from_dict(endpoint_config_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
