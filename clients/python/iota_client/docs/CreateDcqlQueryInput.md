# CreateDcqlQueryInput

## Properties

| Name            | Type    | Description                                                                                                                 | Notes      |
| --------------- | ------- | --------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **name**        | **str** | The name of the DCQL query to quickly identify the query.                                                                   |
| **dcql_query**  | **str** | The DCQL query describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format. |
| **description** | **str** | An optional description of what the query is used for.                                                                      | [optional] |

## Example

```python
from affinidi_tdk_iota_client.models.create_dcql_query_input import CreateDcqlQueryInput

# TODO update the JSON string below
json = "{}"
# create an instance of CreateDcqlQueryInput from a JSON string
create_dcql_query_input_instance = CreateDcqlQueryInput.from_json(json)
# print the JSON string representation of the object
print CreateDcqlQueryInput.to_json()

# convert the object into a dict
create_dcql_query_input_dict = create_dcql_query_input_instance.to_dict()
# create an instance of CreateDcqlQueryInput from a dict
create_dcql_query_input_from_dict = CreateDcqlQueryInput.from_dict(create_dcql_query_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
