# AuthConfigInfoDto

The information needed to onboard and use a data source.

## Properties

| Name                        | Type                                                                                    | Description | Notes      |
| --------------------------- | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **auth_details**            | [**AuthConfigInfoDtoAuthDetails**](AuthConfigInfoDtoAuthDetails.md)                     |             |
| **exchange_token_template** | [**AuthConfigInfoDtoExchangeTokenTemplate**](AuthConfigInfoDtoExchangeTokenTemplate.md) |             |
| **refresh_token_template**  | [**AuthConfigInfoDtoRefreshTokenTemplate**](AuthConfigInfoDtoRefreshTokenTemplate.md)   |             | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.auth_config_info_dto import AuthConfigInfoDto

# TODO update the JSON string below
json = "{}"
# create an instance of AuthConfigInfoDto from a JSON string
auth_config_info_dto_instance = AuthConfigInfoDto.from_json(json)
# print the JSON string representation of the object
print AuthConfigInfoDto.to_json()

# convert the object into a dict
auth_config_info_dto_dict = auth_config_info_dto_instance.to_dict()
# create an instance of AuthConfigInfoDto from a dict
auth_config_info_dto_form_dict = auth_config_info_dto.from_dict(auth_config_info_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
