# CreateWalletResponse

wallet dto

## Properties

| Name       | Type                          | Description | Notes      |
| ---------- | ----------------------------- | ----------- | ---------- |
| **wallet** | [**WalletDto**](WalletDto.md) |             | [optional] |

## Example

```python
from affinidi_tdk_client_cwe.models.create_wallet_response import CreateWalletResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CreateWalletResponse from a JSON string
create_wallet_response_instance = CreateWalletResponse.from_json(json)
# print the JSON string representation of the object
print CreateWalletResponse.to_json()

# convert the object into a dict
create_wallet_response_dict = create_wallet_response_instance.to_dict()
# create an instance of CreateWalletResponse from a dict
create_wallet_response_form_dict = create_wallet_response.from_dict(create_wallet_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
