# ListScannedFilesOK

## Properties

| Name              | Type                                                                                    | Description | Notes |
| ----------------- | --------------------------------------------------------------------------------------- | ----------- | ----- |
| **scanned_files** | [**List[ListScannedFilesOKScannedFilesInner]**](ListScannedFilesOKScannedFilesInner.md) |             |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.list_scanned_files_ok import ListScannedFilesOK

# TODO update the JSON string below
json = "{}"
# create an instance of ListScannedFilesOK from a JSON string
list_scanned_files_ok_instance = ListScannedFilesOK.from_json(json)
# print the JSON string representation of the object
print ListScannedFilesOK.to_json()

# convert the object into a dict
list_scanned_files_ok_dict = list_scanned_files_ok_instance.to_dict()
# create an instance of ListScannedFilesOK from a dict
list_scanned_files_ok_from_dict = ListScannedFilesOK.from_dict(list_scanned_files_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
