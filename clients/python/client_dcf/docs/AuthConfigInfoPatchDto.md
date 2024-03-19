# AuthConfigInfoPatchDto

The information needed to onboard and use a data source.

## Properties

| Name                        | Type                                                                                              | Description | Notes      |
| --------------------------- | ------------------------------------------------------------------------------------------------- | ----------- | ---------- |
| **auth_details**            | [**AuthConfigInfoPatchDtoAuthDetails**](AuthConfigInfoPatchDtoAuthDetails.md)                     |             | [optional] |
| **exchange_token_template** | [**AuthConfigInfoPatchDtoExchangeTokenTemplate**](AuthConfigInfoPatchDtoExchangeTokenTemplate.md) |             | [optional] |
| **refresh_token_template**  | [**AuthConfigInfoPatchDtoRefreshTokenTemplate**](AuthConfigInfoPatchDtoRefreshTokenTemplate.md)   |             | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.auth_config_info_patch_dto import AuthConfigInfoPatchDto

# TODO update the JSON string below
json = "{}"
# create an instance of AuthConfigInfoPatchDto from a JSON string
auth_config_info_patch_dto_instance = AuthConfigInfoPatchDto.from_json(json)
# print the JSON string representation of the object
print AuthConfigInfoPatchDto.to_json()

# convert the object into a dict
auth_config_info_patch_dto_dict = auth_config_info_patch_dto_instance.to_dict()
# create an instance of AuthConfigInfoPatchDto from a dict
auth_config_info_patch_dto_form_dict = auth_config_info_patch_dto.from_dict(auth_config_info_patch_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
