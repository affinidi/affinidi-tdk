# DidKeyInputParams

Did key input params

## Properties

| Name            | Type    | Description                   | Notes      |
| --------------- | ------- | ----------------------------- | ---------- |
| **name**        | **str** | The name of the wallet        | [optional] |
| **description** | **str** | The description of the wallet | [optional] |
| **did_method**  | **str** |                               | [optional] |

## Example

```python
from affinidi_tdk_organizational_wallet_client.models.did_key_input_params import DidKeyInputParams

# TODO update the JSON string below
json = "{}"
# create an instance of DidKeyInputParams from a JSON string
did_key_input_params_instance = DidKeyInputParams.from_json(json)
# print the JSON string representation of the object
print DidKeyInputParams.to_json()

# convert the object into a dict
did_key_input_params_dict = did_key_input_params_instance.to_dict()
# create an instance of DidKeyInputParams from a dict
did_key_input_params_form_dict = did_key_input_params.from_dict(did_key_input_params_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
