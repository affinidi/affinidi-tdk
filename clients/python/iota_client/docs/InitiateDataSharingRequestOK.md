# InitiateDataSharingRequestOK

## Properties

| Name     | Type                                                                        | Description | Notes      |
| -------- | --------------------------------------------------------------------------- | ----------- | ---------- |
| **data** | [**InitiateDataSharingRequestOKData**](InitiateDataSharingRequestOKData.md) |             | [optional] |

## Example

```python
from affinidi_tdk_iota_client.models.initiate_data_sharing_request_ok import InitiateDataSharingRequestOK

# TODO update the JSON string below
json = "{}"
# create an instance of InitiateDataSharingRequestOK from a JSON string
initiate_data_sharing_request_ok_instance = InitiateDataSharingRequestOK.from_json(json)
# print the JSON string representation of the object
print InitiateDataSharingRequestOK.to_json()

# convert the object into a dict
initiate_data_sharing_request_ok_dict = initiate_data_sharing_request_ok_instance.to_dict()
# create an instance of InitiateDataSharingRequestOK from a dict
initiate_data_sharing_request_ok_from_dict = InitiateDataSharingRequestOK.from_dict(initiate_data_sharing_request_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
