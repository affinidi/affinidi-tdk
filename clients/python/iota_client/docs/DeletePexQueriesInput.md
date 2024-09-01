# DeletePexQueriesInput

## Properties

| Name          | Type          | Description | Notes |
| ------------- | ------------- | ----------- | ----- |
| **query_ids** | **List[str]** |             |

## Example

```python
from affinidi_tdk_iota_client.models.delete_pex_queries_input import DeletePexQueriesInput

# TODO update the JSON string below
json = "{}"
# create an instance of DeletePexQueriesInput from a JSON string
delete_pex_queries_input_instance = DeletePexQueriesInput.from_json(json)
# print the JSON string representation of the object
print DeletePexQueriesInput.to_json()

# convert the object into a dict
delete_pex_queries_input_dict = delete_pex_queries_input_instance.to_dict()
# create an instance of DeletePexQueriesInput from a dict
delete_pex_queries_input_from_dict = DeletePexQueriesInput.from_dict(delete_pex_queries_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
