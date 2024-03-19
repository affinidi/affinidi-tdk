# GetRevocationListCredentialResultDto

DTO contains revocation list credential

## Properties

| Name                           | Type       | Description | Notes |
| ------------------------------ | ---------- | ----------- | ----- |
| **revocation_list_credential** | **object** |             |

## Example

```python
from affinidi_tdk_client_cwe.models.get_revocation_list_credential_result_dto import GetRevocationListCredentialResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of GetRevocationListCredentialResultDto from a JSON string
get_revocation_list_credential_result_dto_instance = GetRevocationListCredentialResultDto.from_json(json)
# print the JSON string representation of the object
print GetRevocationListCredentialResultDto.to_json()

# convert the object into a dict
get_revocation_list_credential_result_dto_dict = get_revocation_list_credential_result_dto_instance.to_dict()
# create an instance of GetRevocationListCredentialResultDto from a dict
get_revocation_list_credential_result_dto_form_dict = get_revocation_list_credential_result_dto.from_dict(get_revocation_list_credential_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
