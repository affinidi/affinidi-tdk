# CredentialResponseDeferred

## Properties

| Name                   | Type      | Description                                                                                                                                                          | Notes |
| ---------------------- | --------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| **transaction_id**     | **str**   | String identifying a Deferred Issuance transaction. This claim is contained in the response if the Credential Issuer was unable to immediately issue the Credential. |
| **c_nonce**            | **str**   | String containing a nonce to be used when creating a proof of possession of the key proof                                                                            |
| **c_nonce_expires_in** | **float** | Lifetime in seconds of the c_nonce                                                                                                                                   |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.credential_response_deferred import CredentialResponseDeferred

# TODO update the JSON string below
json = "{}"
# create an instance of CredentialResponseDeferred from a JSON string
credential_response_deferred_instance = CredentialResponseDeferred.from_json(json)
# print the JSON string representation of the object
print CredentialResponseDeferred.to_json()

# convert the object into a dict
credential_response_deferred_dict = credential_response_deferred_instance.to_dict()
# create an instance of CredentialResponseDeferred from a dict
credential_response_deferred_from_dict = CredentialResponseDeferred.from_dict(credential_response_deferred_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
