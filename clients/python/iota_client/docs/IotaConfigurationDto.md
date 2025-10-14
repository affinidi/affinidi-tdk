# IotaConfigurationDto

## Properties

| Name                          | Type                                                                            | Description                                                                                                                                      | Notes                               |
| ----------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | ----------------------------------- |
| **ari**                       | **str**                                                                         | This is a unique resource identifier of the Affinidi Iota Framework configuration.                                                               |
| **configuration_id**          | **str**                                                                         | ID of the Affinidi Iota Framework configuration.                                                                                                 |
| **name**                      | **str**                                                                         | The name of the configuration to quickly identify the resource.                                                                                  |
| **project_id**                | **str**                                                                         | The ID of the project.                                                                                                                           |
| **wallet_ari**                | **str**                                                                         | The unique resource identifier of the Wallet used to sign the request token.                                                                     |
| **token_max_age**             | **float**                                                                       | This is the lifetime of the signed request token during the data-sharing flow.                                                                   |
| **iota_response_webhook_url** | **str**                                                                         | The webhook URL is used for callback when the data is ready.                                                                                     | [optional]                          |
| **enable_verification**       | **bool**                                                                        | Cryptographically verifies the data shared by the user when enabled.                                                                             |
| **enable_consent_audit_log**  | **bool**                                                                        | Records the consent the user gave when they shared their data, including the type of data shared.                                                |
| **client_metadata**           | [**IotaConfigurationDtoClientMetadata**](IotaConfigurationDtoClientMetadata.md) |                                                                                                                                                  |
| **mode**                      | **str**                                                                         | Determines whether to handle the data-sharing request using the WebSocket, Redirect or Didcomm messaging flow.                                   | [optional] [default to 'websocket'] |
| **redirect_uris**             | **List[str]**                                                                   | List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect. | [optional]                          |
| **enable_idv_providers**      | **bool**                                                                        | Enables identity verification from user with a 3rd-party provider when a verified identity document is not found.                                | [optional]                          |

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
iota_configuration_dto_from_dict = IotaConfigurationDto.from_dict(iota_configuration_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
