# UpdateWalletInput

Update wallet input params

## Properties

| Name            | Type    | Description                   | Notes      |
| --------------- | ------- | ----------------------------- | ---------- |
| **name**        | **str** | The name of the wallet        | [optional] |
| **description** | **str** | The description of the wallet | [optional] |

## Example

```python
from affinidi_tdk_organizational_wallet_client.models.update_wallet_input import UpdateWalletInput

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateWalletInput from a JSON string
update_wallet_input_instance = UpdateWalletInput.from_json(json)
# print the JSON string representation of the object
print UpdateWalletInput.to_json()

# convert the object into a dict
update_wallet_input_dict = update_wallet_input_instance.to_dict()
# create an instance of UpdateWalletInput from a dict
update_wallet_input_form_dict = update_wallet_input.from_dict(update_wallet_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
