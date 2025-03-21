# CreatePexQueryInput

## Properties

| Name              | Type    | Description                                                                                                                              | Notes      |
| ----------------- | ------- | ---------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **name**          | **str** | The name of the presentation definition to quickly identify the query.                                                                   |
| **vp_definition** | **str** | The presentation definition describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format. |
| **description**   | **str** | An optional description of what the query is used for.                                                                                   | [optional] |

## Example

```python
from affinidi_tdk_iota_client.models.create_pex_query_input import CreatePexQueryInput

# TODO update the JSON string below
json = "{}"
# create an instance of CreatePexQueryInput from a JSON string
create_pex_query_input_instance = CreatePexQueryInput.from_json(json)
# print the JSON string representation of the object
print CreatePexQueryInput.to_json()

# convert the object into a dict
create_pex_query_input_dict = create_pex_query_input_instance.to_dict()
# create an instance of CreatePexQueryInput from a dict
create_pex_query_input_from_dict = CreatePexQueryInput.from_dict(create_pex_query_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
