# ServiceEndpointInput

Input for adding a service endpoint

## Properties

| Name            | Type    | Description                         | Notes |
| --------------- | ------- | ----------------------------------- | ----- |
| **name**        | **str** | Name of the service endpoint        |
| **description** | **str** | Description of the service endpoint |
| **url**         | **str** | service endpoint URL                |

## Example

```python
from affinidi_tdk_wallets_client.models.service_endpoint_input import ServiceEndpointInput

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceEndpointInput from a JSON string
service_endpoint_input_instance = ServiceEndpointInput.from_json(json)
# print the JSON string representation of the object
print ServiceEndpointInput.to_json()

# convert the object into a dict
service_endpoint_input_dict = service_endpoint_input_instance.to_dict()
# create an instance of ServiceEndpointInput from a dict
service_endpoint_input_from_dict = ServiceEndpointInput.from_dict(service_endpoint_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
