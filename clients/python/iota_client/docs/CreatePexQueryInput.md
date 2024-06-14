# CreatePexQueryInput

## Properties

| Name              | Type    | Description                            | Notes      |
| ----------------- | ------- | -------------------------------------- | ---------- |
| **name**          | **str** |                                        |
| **vp_definition** | **str** | VP definition in JSON stringify format |
| **description**   | **str** | Description of query                   | [optional] |

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
create_pex_query_input_form_dict = create_pex_query_input.from_dict(create_pex_query_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
