# UpdateWalletKeyInput

Input for updating an existing wallet key. Only supported for did:web wallets.

## Properties

| Name              | Type                                                              | Description                            | Notes      |
| ----------------- | ----------------------------------------------------------------- | -------------------------------------- | ---------- |
| **relationships** | [**List[VerificationRelationship]**](VerificationRelationship.md) | verification relationships for the key | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.update_wallet_key_input import UpdateWalletKeyInput

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateWalletKeyInput from a JSON string
update_wallet_key_input_instance = UpdateWalletKeyInput.from_json(json)
# print the JSON string representation of the object
print UpdateWalletKeyInput.to_json()

# convert the object into a dict
update_wallet_key_input_dict = update_wallet_key_input_instance.to_dict()
# create an instance of UpdateWalletKeyInput from a dict
update_wallet_key_input_from_dict = UpdateWalletKeyInput.from_dict(update_wallet_key_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
