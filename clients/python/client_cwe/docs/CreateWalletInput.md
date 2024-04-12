# CreateWalletInput

## Properties

| Name            | Type    | Description                                          | Notes |
| --------------- | ------- | ---------------------------------------------------- | ----- |
| **did_method**  | **str** |                                                      |
| **did_web_url** | **str** | If the did method is web, this is the URL of the did |

## Example

```python
from affinidi_tdk_client_cwe.models.create_wallet_input import CreateWalletInput

# TODO update the JSON string below
json = "{}"
# create an instance of CreateWalletInput from a JSON string
create_wallet_input_instance = CreateWalletInput.from_json(json)
# print the JSON string representation of the object
print CreateWalletInput.to_json()

# convert the object into a dict
create_wallet_input_dict = create_wallet_input_instance.to_dict()
# create an instance of CreateWalletInput from a dict
create_wallet_input_form_dict = create_wallet_input.from_dict(create_wallet_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
