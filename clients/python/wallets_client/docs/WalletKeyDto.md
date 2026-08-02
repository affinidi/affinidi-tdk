# WalletKeyDto

Detailed information about a wallet key. Multiple keys are only supported for did:web wallets.

## Properties

| Name              | Type                                                              | Description                                                                                                               | Notes      |
| ----------------- | ----------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **key_id**        | **str**                                                           | wallet-scoped key identifier (e.g., \&quot;key-1\&quot;)                                                                  | [optional] |
| **algorithm**     | **str**                                                           | cryptographic algorithm used by this key                                                                                  | [optional] |
| **key_type**      | **str**                                                           | Deprecated alias of &#x60;algorithm&#x60;. Always equal to &#x60;algorithm&#x60; and included for backward compatibility. | [optional] |
| **key_ari**       | **str**                                                           | ARI identifier for the key (e.g., \&quot;ari:key:...\&quot;)                                                              | [optional] |
| **relationships** | [**List[VerificationRelationship]**](VerificationRelationship.md) | verification relationships this key supports                                                                              | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.wallet_key_dto import WalletKeyDto

# TODO update the JSON string below
json = "{}"
# create an instance of WalletKeyDto from a JSON string
wallet_key_dto_instance = WalletKeyDto.from_json(json)
# print the JSON string representation of the object
print WalletKeyDto.to_json()

# convert the object into a dict
wallet_key_dto_dict = wallet_key_dto_instance.to_dict()
# create an instance of WalletKeyDto from a dict
wallet_key_dto_from_dict = WalletKeyDto.from_dict(wallet_key_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
