# SignCredentialsDm2SdJwtResultDto

DTO contains signed credential

## Properties

| Name           | Type    | Description                                  | Notes |
| -------------- | ------- | -------------------------------------------- | ----- |
| **credential** | **str** | Issued selective disclosure SD in jwt format |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_credentials_dm2_sd_jwt_result_dto import SignCredentialsDm2SdJwtResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignCredentialsDm2SdJwtResultDto from a JSON string
sign_credentials_dm2_sd_jwt_result_dto_instance = SignCredentialsDm2SdJwtResultDto.from_json(json)
# print the JSON string representation of the object
print SignCredentialsDm2SdJwtResultDto.to_json()

# convert the object into a dict
sign_credentials_dm2_sd_jwt_result_dto_dict = sign_credentials_dm2_sd_jwt_result_dto_instance.to_dict()
# create an instance of SignCredentialsDm2SdJwtResultDto from a dict
sign_credentials_dm2_sd_jwt_result_dto_from_dict = SignCredentialsDm2SdJwtResultDto.from_dict(sign_credentials_dm2_sd_jwt_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
