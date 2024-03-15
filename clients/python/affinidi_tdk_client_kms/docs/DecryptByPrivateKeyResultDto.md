# DecryptByPrivateKeyResultDto

DTO contains decrypted data

## Properties

| Name               | Type    | Description | Notes |
| ------------------ | ------- | ----------- | ----- |
| **decrypted_data** | **str** |             |

## Example

```python
from affinidi_tdk_client_kms.models.decrypt_by_private_key_result_dto import DecryptByPrivateKeyResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of DecryptByPrivateKeyResultDto from a JSON string
decrypt_by_private_key_result_dto_instance = DecryptByPrivateKeyResultDto.from_json(json)
# print the JSON string representation of the object
print DecryptByPrivateKeyResultDto.to_json()

# convert the object into a dict
decrypt_by_private_key_result_dto_dict = decrypt_by_private_key_result_dto_instance.to_dict()
# create an instance of DecryptByPrivateKeyResultDto from a dict
decrypt_by_private_key_result_dto_form_dict = decrypt_by_private_key_result_dto.from_dict(decrypt_by_private_key_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
