# InitiateDataSharingRequestOKData

## Properties

| Name               | Type    | Description | Notes |
| ------------------ | ------- | ----------- | ----- |
| **jwt**            | **str** |             |
| **correlation_id** | **str** |             |
| **transaction_id** | **str** |             |

## Example

```python
from affinidi_tdk_iota_client.models.initiate_data_sharing_request_ok_data import InitiateDataSharingRequestOKData

# TODO update the JSON string below
json = "{}"
# create an instance of InitiateDataSharingRequestOKData from a JSON string
initiate_data_sharing_request_ok_data_instance = InitiateDataSharingRequestOKData.from_json(json)
# print the JSON string representation of the object
print InitiateDataSharingRequestOKData.to_json()

# convert the object into a dict
initiate_data_sharing_request_ok_data_dict = initiate_data_sharing_request_ok_data_instance.to_dict()
# create an instance of InitiateDataSharingRequestOKData from a dict
initiate_data_sharing_request_ok_data_from_dict = InitiateDataSharingRequestOKData.from_dict(initiate_data_sharing_request_ok_data_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
