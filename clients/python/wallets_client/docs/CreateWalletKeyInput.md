# CreateWalletKeyInput

Input for adding a new key to a wallet. Only supported for did:web ATM.

## Properties

| Name              | Type                                                              | Description                             | Notes |
| ----------------- | ----------------------------------------------------------------- | --------------------------------------- | ----- |
| **key_type**      | **str**                                                           | cryptographic algorithm for the new key |
| **relationships** | [**List[VerificationRelationship]**](VerificationRelationship.md) | verification relationships for the key. |

## Example

```python
from affinidi_tdk_wallets_client.models.create_wallet_key_input import CreateWalletKeyInput

# TODO update the JSON string below
json = "{}"
# create an instance of CreateWalletKeyInput from a JSON string
create_wallet_key_input_instance = CreateWalletKeyInput.from_json(json)
# print the JSON string representation of the object
print CreateWalletKeyInput.to_json()

# convert the object into a dict
create_wallet_key_input_dict = create_wallet_key_input_instance.to_dict()
# create an instance of CreateWalletKeyInput from a dict
create_wallet_key_input_from_dict = CreateWalletKeyInput.from_dict(create_wallet_key_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
