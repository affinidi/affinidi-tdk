# ListServiceEndpointsOK

Response containing service endpoints

## Properties

| Name         | Type                                                  | Description               | Notes |
| ------------ | ----------------------------------------------------- | ------------------------- | ----- |
| **services** | [**List[ServiceEndpointDto]**](ServiceEndpointDto.md) | list of service endpoints |

## Example

```python
from affinidi_tdk_wallets_client.models.list_service_endpoints_ok import ListServiceEndpointsOK

# TODO update the JSON string below
json = "{}"
# create an instance of ListServiceEndpointsOK from a JSON string
list_service_endpoints_ok_instance = ListServiceEndpointsOK.from_json(json)
# print the JSON string representation of the object
print ListServiceEndpointsOK.to_json()

# convert the object into a dict
list_service_endpoints_ok_dict = list_service_endpoints_ok_instance.to_dict()
# create an instance of ListServiceEndpointsOK from a dict
list_service_endpoints_ok_from_dict = ListServiceEndpointsOK.from_dict(list_service_endpoints_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
