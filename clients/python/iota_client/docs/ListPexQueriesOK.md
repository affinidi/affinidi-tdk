# ListPexQueriesOK

## Properties

| Name            | Type                                    | Description | Notes |
| --------------- | --------------------------------------- | ----------- | ----- |
| **pex_queries** | [**List[PexQueryDto]**](PexQueryDto.md) |             |

## Example

```python
from affinidi_tdk_iota_client.models.list_pex_queries_ok import ListPexQueriesOK

# TODO update the JSON string below
json = "{}"
# create an instance of ListPexQueriesOK from a JSON string
list_pex_queries_ok_instance = ListPexQueriesOK.from_json(json)
# print the JSON string representation of the object
print ListPexQueriesOK.to_json()

# convert the object into a dict
list_pex_queries_ok_dict = list_pex_queries_ok_instance.to_dict()
# create an instance of ListPexQueriesOK from a dict
list_pex_queries_ok_form_dict = list_pex_queries_ok.from_dict(list_pex_queries_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
