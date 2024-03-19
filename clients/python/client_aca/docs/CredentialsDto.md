# CredentialsDto

missing data that could not be found in the vault

## Properties

| Name                  | Type       | Description | Notes      |
| --------------------- | ---------- | ----------- | ---------- |
| **signed_credential** | **object** | signed VCs  | [optional] |

## Example

```python
from affinidi_tdk_client_aca.models.credentials_dto import CredentialsDto

# TODO update the JSON string below
json = "{}"
# create an instance of CredentialsDto from a JSON string
credentials_dto_instance = CredentialsDto.from_json(json)
# print the JSON string representation of the object
print CredentialsDto.to_json()

# convert the object into a dict
credentials_dto_dict = credentials_dto_instance.to_dict()
# create an instance of CredentialsDto from a dict
credentials_dto_form_dict = credentials_dto.from_dict(credentials_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
