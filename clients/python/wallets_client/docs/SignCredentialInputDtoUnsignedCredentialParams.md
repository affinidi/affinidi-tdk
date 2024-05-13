# SignCredentialInputDtoUnsignedCredentialParams

unsignedCredentialParams. Used to build an unsigned credential before the signing. This param is not accepted when \"unsignedCredential\" is given

## Properties

| Name                    | Type                  | Description | Notes |
| ----------------------- | --------------------- | ----------- | ----- |
| **json_ld_context_url** | **str**               |             |
| **json_schema_url**     | **str**               |             |
| **type_name**           | **str**               |             |
| **credential_subject**  | **Dict[str, object]** |             |
| **holder_did**          | **str**               |             |
| **expires_at**          | **str**               |             |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_credential_input_dto_unsigned_credential_params import SignCredentialInputDtoUnsignedCredentialParams

# TODO update the JSON string below
json = "{}"
# create an instance of SignCredentialInputDtoUnsignedCredentialParams from a JSON string
sign_credential_input_dto_unsigned_credential_params_instance = SignCredentialInputDtoUnsignedCredentialParams.from_json(json)
# print the JSON string representation of the object
print SignCredentialInputDtoUnsignedCredentialParams.to_json()

# convert the object into a dict
sign_credential_input_dto_unsigned_credential_params_dict = sign_credential_input_dto_unsigned_credential_params_instance.to_dict()
# create an instance of SignCredentialInputDtoUnsignedCredentialParams from a dict
sign_credential_input_dto_unsigned_credential_params_form_dict = sign_credential_input_dto_unsigned_credential_params.from_dict(sign_credential_input_dto_unsigned_credential_params_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
