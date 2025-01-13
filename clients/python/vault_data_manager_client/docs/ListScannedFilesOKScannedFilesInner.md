# ListScannedFilesOKScannedFilesInner

## Properties

| Name           | Type    | Description                             | Notes |
| -------------- | ------- | --------------------------------------- | ----- |
| **job_id**     | **str** | A unique, randomly generated identifier |
| **status**     | **str** | The Status of the listed files          |
| **profile_id** | **str** | A unique, randomly generated identifier |
| **node_id**    | **str** |                                         |
| **created_at** | **str** |                                         |
| **name**       | **str** |                                         |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.list_scanned_files_ok_scanned_files_inner import ListScannedFilesOKScannedFilesInner

# TODO update the JSON string below
json = "{}"
# create an instance of ListScannedFilesOKScannedFilesInner from a JSON string
list_scanned_files_ok_scanned_files_inner_instance = ListScannedFilesOKScannedFilesInner.from_json(json)
# print the JSON string representation of the object
print ListScannedFilesOKScannedFilesInner.to_json()

# convert the object into a dict
list_scanned_files_ok_scanned_files_inner_dict = list_scanned_files_ok_scanned_files_inner_instance.to_dict()
# create an instance of ListScannedFilesOKScannedFilesInner from a dict
list_scanned_files_ok_scanned_files_inner_from_dict = ListScannedFilesOKScannedFilesInner.from_dict(list_scanned_files_ok_scanned_files_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
