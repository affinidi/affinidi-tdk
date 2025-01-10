# StartFileScanOK

## Properties

| Name       | Type    | Description | Notes |
| ---------- | ------- | ----------- | ----- |
| **job_id** | **str** |             |
| **status** | **str** |             |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.start_file_scan_ok import StartFileScanOK

# TODO update the JSON string below
json = "{}"
# create an instance of StartFileScanOK from a JSON string
start_file_scan_ok_instance = StartFileScanOK.from_json(json)
# print the JSON string representation of the object
print StartFileScanOK.to_json()

# convert the object into a dict
start_file_scan_ok_dict = start_file_scan_ok_instance.to_dict()
# create an instance of StartFileScanOK from a dict
start_file_scan_ok_from_dict = StartFileScanOK.from_dict(start_file_scan_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
