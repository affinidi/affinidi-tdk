# PatchAccountInput

## Properties

| Name                  | Type    | Description                                                                                                   | Notes |
| --------------------- | ------- | ------------------------------------------------------------------------------------------------------------- | ----- |
| **did_proof**         | **str** | JWT that proves ownership of profile DID by requester                                                         |
| **encrypted_dekek**   | **str** | A base64 encoded data encryption key, encrypted using VFS public key, required for PATCH operation on account |
| **owner_profile_id**  | **str** | A unique identifier of profile, required for PATCH operation on account                                       |
| **owner_profile_did** | **str** | DID that is associated with the profile, required for PATCH operation on account                              |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.patch_account_input import PatchAccountInput

# TODO update the JSON string below
json = "{}"
# create an instance of PatchAccountInput from a JSON string
patch_account_input_instance = PatchAccountInput.from_json(json)
# print the JSON string representation of the object
print PatchAccountInput.to_json()

# convert the object into a dict
patch_account_input_dict = patch_account_input_instance.to_dict()
# create an instance of PatchAccountInput from a dict
patch_account_input_from_dict = PatchAccountInput.from_dict(patch_account_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
