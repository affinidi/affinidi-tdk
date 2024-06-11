# GetRevocationCredentialStatusOK

DTO contains revocation list credential

## Properties

| Name                           | Type       | Description | Notes |
| ------------------------------ | ---------- | ----------- | ----- |
| **revocation_list_credential** | **object** |             |

## Example

```python
from affinidi_tdk_wallets_client.models.get_revocation_credential_status_ok import GetRevocationCredentialStatusOK

# TODO update the JSON string below
json = "{}"
# create an instance of GetRevocationCredentialStatusOK from a JSON string
get_revocation_credential_status_ok_instance = GetRevocationCredentialStatusOK.from_json(json)
# print the JSON string representation of the object
print GetRevocationCredentialStatusOK.to_json()

# convert the object into a dict
get_revocation_credential_status_ok_dict = get_revocation_credential_status_ok_instance.to_dict()
# create an instance of GetRevocationCredentialStatusOK from a dict
get_revocation_credential_status_ok_form_dict = get_revocation_credential_status_ok.from_dict(get_revocation_credential_status_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
