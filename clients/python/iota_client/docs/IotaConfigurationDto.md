# IotaConfigurationDto

## Properties

| Name                          | Type                                                                            | Description                              | Notes      |
| ----------------------------- | ------------------------------------------------------------------------------- | ---------------------------------------- | ---------- |
| **ari**                       | **str**                                                                         | The ARI of the config                    |
| **configuration_id**          | **str**                                                                         |                                          |
| **name**                      | **str**                                                                         | The name of the config                   |
| **project_id**                | **str**                                                                         |                                          |
| **wallet_ari**                | **str**                                                                         | The wallet Ari that will be used to sign |
| **token_max_age**             | **float**                                                                       | token time to live in seconds            |
| **iota_response_webhook_url** | **str**                                                                         | webhook to call when data is ready       | [optional] |
| **enable_verification**       | **bool**                                                                        |                                          |
| **enable_consent_audit_log**  | **bool**                                                                        |                                          |
| **client_metadata**           | [**IotaConfigurationDtoClientMetadata**](IotaConfigurationDtoClientMetadata.md) |                                          |

## Example

```python
from affinidi_tdk_iota_client.models.iota_configuration_dto import IotaConfigurationDto

# TODO update the JSON string below
json = "{}"
# create an instance of IotaConfigurationDto from a JSON string
iota_configuration_dto_instance = IotaConfigurationDto.from_json(json)
# print the JSON string representation of the object
print IotaConfigurationDto.to_json()

# convert the object into a dict
iota_configuration_dto_dict = iota_configuration_dto_instance.to_dict()
# create an instance of IotaConfigurationDto from a dict
iota_configuration_dto_form_dict = iota_configuration_dto.from_dict(iota_configuration_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
