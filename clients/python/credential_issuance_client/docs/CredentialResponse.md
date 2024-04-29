# CredentialResponse

## Properties

| Name                   | Type                  | Description                                                                                                                                                          | Notes |
| ---------------------- | --------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| **credential**         | **Dict[str, object]** | Issued Credential, It can be a string or an object, depending on the Credential format. default format is &#x60;ldp_vc&#x60;.                                        |
| **c_nonce**            | **str**               | String containing a nonce to be used when creating a proof of possession of the key proof                                                                            |
| **c_nonce_expires_in** | **float**             | Lifetime in seconds of the c_nonce                                                                                                                                   |
| **transaction_id**     | **str**               | String identifying a Deferred Issuance transaction. This claim is contained in the response if the Credential Issuer was unable to immediately issue the Credential. |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.credential_response import CredentialResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CredentialResponse from a JSON string
credential_response_instance = CredentialResponse.from_json(json)
# print the JSON string representation of the object
print CredentialResponse.to_json()

# convert the object into a dict
credential_response_dict = credential_response_instance.to_dict()
# create an instance of CredentialResponse from a dict
credential_response_form_dict = credential_response.from_dict(credential_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
