# ListDcqlQueriesOK

## Properties

| Name                   | Type                                      | Description | Notes      |
| ---------------------- | ----------------------------------------- | ----------- | ---------- |
| **dcql_queries**       | [**List[DcqlQueryDto]**](DcqlQueryDto.md) |             |
| **last_evaluated_key** | **str**                                   |             | [optional] |

## Example

```python
from affinidi_tdk_iota_client.models.list_dcql_queries_ok import ListDcqlQueriesOK

# TODO update the JSON string below
json = "{}"
# create an instance of ListDcqlQueriesOK from a JSON string
list_dcql_queries_ok_instance = ListDcqlQueriesOK.from_json(json)
# print the JSON string representation of the object
print ListDcqlQueriesOK.to_json()

# convert the object into a dict
list_dcql_queries_ok_dict = list_dcql_queries_ok_instance.to_dict()
# create an instance of ListDcqlQueriesOK from a dict
list_dcql_queries_ok_from_dict = ListDcqlQueriesOK.from_dict(list_dcql_queries_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
