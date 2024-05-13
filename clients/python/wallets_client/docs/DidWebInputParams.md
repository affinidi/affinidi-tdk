# DidWebInputParams

Additional params for did method web

## Properties

| Name            | Type    | Description                                          | Notes      |
| --------------- | ------- | ---------------------------------------------------- | ---------- |
| **name**        | **str** | The name of the wallet                               | [optional] |
| **description** | **str** | The description of the wallet                        | [optional] |
| **did_method**  | **str** |                                                      |
| **did_web_url** | **str** | If the did method is web, this is the URL of the did |

## Example

```python
from affinidi_tdk_wallets_client.models.did_web_input_params import DidWebInputParams

# TODO update the JSON string below
json = "{}"
# create an instance of DidWebInputParams from a JSON string
did_web_input_params_instance = DidWebInputParams.from_json(json)
# print the JSON string representation of the object
print DidWebInputParams.to_json()

# convert the object into a dict
did_web_input_params_dict = did_web_input_params_instance.to_dict()
# create an instance of DidWebInputParams from a dict
did_web_input_params_form_dict = did_web_input_params.from_dict(did_web_input_params_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
