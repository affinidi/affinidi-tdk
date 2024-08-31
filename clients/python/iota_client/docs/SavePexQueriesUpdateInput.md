# SavePexQueriesUpdateInput

## Properties

| Name        | Type                                                                                        | Description | Notes      |
| ----------- | ------------------------------------------------------------------------------------------- | ----------- | ---------- |
| **queries** | [**List[SavePexQueriesUpdateInputQueriesInner]**](SavePexQueriesUpdateInputQueriesInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_iota_client.models.save_pex_queries_update_input import SavePexQueriesUpdateInput

# TODO update the JSON string below
json = "{}"
# create an instance of SavePexQueriesUpdateInput from a JSON string
save_pex_queries_update_input_instance = SavePexQueriesUpdateInput.from_json(json)
# print the JSON string representation of the object
print SavePexQueriesUpdateInput.to_json()

# convert the object into a dict
save_pex_queries_update_input_dict = save_pex_queries_update_input_instance.to_dict()
# create an instance of SavePexQueriesUpdateInput from a dict
save_pex_queries_update_input_from_dict = SavePexQueriesUpdateInput.from_dict(save_pex_queries_update_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
