# SavePexQueriesUpdateInputQueriesInner

## Properties

| Name              | Type    | Description                                                                                                                              | Notes      |
| ----------------- | ------- | ---------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **query_id**      | **str** | The ID of the query.                                                                                                                     |
| **vp_definition** | **str** | The presentation definition describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format. | [optional] |
| **description**   | **str** | An optional description of what the query is used for.                                                                                   | [optional] |

## Example

```python
from affinidi_tdk_iota_client.models.save_pex_queries_update_input_queries_inner import SavePexQueriesUpdateInputQueriesInner

# TODO update the JSON string below
json = "{}"
# create an instance of SavePexQueriesUpdateInputQueriesInner from a JSON string
save_pex_queries_update_input_queries_inner_instance = SavePexQueriesUpdateInputQueriesInner.from_json(json)
# print the JSON string representation of the object
print SavePexQueriesUpdateInputQueriesInner.to_json()

# convert the object into a dict
save_pex_queries_update_input_queries_inner_dict = save_pex_queries_update_input_queries_inner_instance.to_dict()
# create an instance of SavePexQueriesUpdateInputQueriesInner from a dict
save_pex_queries_update_input_queries_inner_from_dict = SavePexQueriesUpdateInputQueriesInner.from_dict(save_pex_queries_update_input_queries_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
