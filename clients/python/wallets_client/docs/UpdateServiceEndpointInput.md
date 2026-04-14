# UpdateServiceEndpointInput

Input for updating a service endpoint

## Properties

| Name            | Type    | Description                                                      | Notes      |
| --------------- | ------- | ---------------------------------------------------------------- | ---------- |
| **name**        | **str** | Alphanumeric string with common punctuation (max 100 characters) | [optional] |
| **description** | **str** | Alphanumeric string with common punctuation (max 500 characters) | [optional] |
| **url**         | **str** | HTTP or HTTPS URL                                                | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.update_service_endpoint_input import UpdateServiceEndpointInput

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateServiceEndpointInput from a JSON string
update_service_endpoint_input_instance = UpdateServiceEndpointInput.from_json(json)
# print the JSON string representation of the object
print UpdateServiceEndpointInput.to_json()

# convert the object into a dict
update_service_endpoint_input_dict = update_service_endpoint_input_instance.to_dict()
# create an instance of UpdateServiceEndpointInput from a dict
update_service_endpoint_input_from_dict = UpdateServiceEndpointInput.from_dict(update_service_endpoint_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
