# UpdateDcqlQueryInput

## Properties

| Name            | Type    | Description                                                                                                                 | Notes      |
| --------------- | ------- | --------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **dcql_query**  | **str** | The DCQL query describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format. | [optional] |
| **description** | **str** | An optional description of what the query is used for.                                                                      | [optional] |

## Example

```python
from affinidi_tdk_iota_client.models.update_dcql_query_input import UpdateDcqlQueryInput

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateDcqlQueryInput from a JSON string
update_dcql_query_input_instance = UpdateDcqlQueryInput.from_json(json)
# print the JSON string representation of the object
print UpdateDcqlQueryInput.to_json()

# convert the object into a dict
update_dcql_query_input_dict = update_dcql_query_input_instance.to_dict()
# create an instance of UpdateDcqlQueryInput from a dict
update_dcql_query_input_from_dict = UpdateDcqlQueryInput.from_dict(update_dcql_query_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
