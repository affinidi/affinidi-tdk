# GetScannedFileInfoOK

## Properties

| Name                    | Type       | Description                                                                                                                                                    | Notes      |
| ----------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **data**                | **object** |                                                                                                                                                                |
| **job_id**              | **str**    | A unique, randomly generated idetifier                                                                                                                         |
| **status**              | **str**    | Status of the file scanning once initiated                                                                                                                     |
| **profile_id**          | **str**    | A unique, randomly generated identifier                                                                                                                        |
| **exclusive_start_key** | **str**    | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |
| **node_id**             | **str**    | A unique, randomly generated identifier                                                                                                                        |
| **created_at**          | **str**    |                                                                                                                                                                |
| **name**                | **str**    |                                                                                                                                                                |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.get_scanned_file_info_ok import GetScannedFileInfoOK

# TODO update the JSON string below
json = "{}"
# create an instance of GetScannedFileInfoOK from a JSON string
get_scanned_file_info_ok_instance = GetScannedFileInfoOK.from_json(json)
# print the JSON string representation of the object
print GetScannedFileInfoOK.to_json()

# convert the object into a dict
get_scanned_file_info_ok_dict = get_scanned_file_info_ok_instance.to_dict()
# create an instance of GetScannedFileInfoOK from a dict
get_scanned_file_info_ok_from_dict = GetScannedFileInfoOK.from_dict(get_scanned_file_info_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
