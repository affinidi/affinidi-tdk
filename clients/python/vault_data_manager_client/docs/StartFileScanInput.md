# StartFileScanInput

## Properties

| Name    | Type    | Description                                                                                                                                                                 | Notes |
| ------- | ------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| **dek** | **str** | A base64 encoded data encryption key, encrypted using VFS public key. This is important as this is used when starting document scan and also while uploading the file to s3 |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.start_file_scan_input import StartFileScanInput

# TODO update the JSON string below
json = "{}"
# create an instance of StartFileScanInput from a JSON string
start_file_scan_input_instance = StartFileScanInput.from_json(json)
# print the JSON string representation of the object
print StartFileScanInput.to_json()

# convert the object into a dict
start_file_scan_input_dict = start_file_scan_input_instance.to_dict()
# create an instance of StartFileScanInput from a dict
start_file_scan_input_from_dict = StartFileScanInput.from_dict(start_file_scan_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
