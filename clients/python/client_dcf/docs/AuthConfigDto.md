# AuthConfigDto

Object describing the information needed for a valid authentication configuration.

## Properties

| Name                        | Type                                          | Description                                                                               | Notes      |
| --------------------------- | --------------------------------------------- | ----------------------------------------------------------------------------------------- | ---------- |
| **id**                      | **str**                                       | The ID of the data source.                                                                | [optional] |
| **data_source_config_name** | **str**                                       | The name of the data source configuration connected to this authentication configuration. | [optional] |
| **status**                  | **str**                                       | The status of the data source config.                                                     | [optional] |
| **auth_config_info**        | [**AuthConfigInfoDto**](AuthConfigInfoDto.md) |                                                                                           | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.auth_config_dto import AuthConfigDto

# TODO update the JSON string below
json = "{}"
# create an instance of AuthConfigDto from a JSON string
auth_config_dto_instance = AuthConfigDto.from_json(json)
# print the JSON string representation of the object
print AuthConfigDto.to_json()

# convert the object into a dict
auth_config_dto_dict = auth_config_dto_instance.to_dict()
# create an instance of AuthConfigDto from a dict
auth_config_dto_form_dict = auth_config_dto.from_dict(auth_config_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
