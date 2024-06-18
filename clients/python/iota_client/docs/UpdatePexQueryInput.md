# UpdatePexQueryInput

## Properties

| Name              | Type    | Description                            | Notes      |
| ----------------- | ------- | -------------------------------------- | ---------- |
| **vp_definition** | **str** | VP definition in JSON stringify format | [optional] |
| **description**   | **str** |                                        | [optional] |

## Example

```python
from affinidi_tdk_iota_client.models.update_pex_query_input import UpdatePexQueryInput

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePexQueryInput from a JSON string
update_pex_query_input_instance = UpdatePexQueryInput.from_json(json)
# print the JSON string representation of the object
print UpdatePexQueryInput.to_json()

# convert the object into a dict
update_pex_query_input_dict = update_pex_query_input_instance.to_dict()
# create an instance of UpdatePexQueryInput from a dict
update_pex_query_input_form_dict = update_pex_query_input.from_dict(update_pex_query_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
