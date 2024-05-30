# UpdateConfigurationByIdInput

## Properties

| Name                          | Type                                                                            | Description                              | Notes      |
| ----------------------------- | ------------------------------------------------------------------------------- | ---------------------------------------- | ---------- |
| **name**                      | **str**                                                                         | The name of the config                   | [optional] |
| **wallet_ari**                | **str**                                                                         | The wallet Ari that will be used to sign | [optional] |
| **iota_response_webhook_url** | **str**                                                                         | webhook to call when data is ready       | [optional] |
| **enable_verification**       | **bool**                                                                        |                                          | [optional] |
| **enable_consent_audit_log**  | **bool**                                                                        |                                          | [optional] |
| **token_max_age**             | **float**                                                                       | token time to live in seconds            | [optional] |
| **client_metadata**           | [**IotaConfigurationDtoClientMetadata**](IotaConfigurationDtoClientMetadata.md) |                                          | [optional] |

## Example

```python
from affinidi_tdk_iota_client.models.update_configuration_by_id_input import UpdateConfigurationByIdInput

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateConfigurationByIdInput from a JSON string
update_configuration_by_id_input_instance = UpdateConfigurationByIdInput.from_json(json)
# print the JSON string representation of the object
print UpdateConfigurationByIdInput.to_json()

# convert the object into a dict
update_configuration_by_id_input_dict = update_configuration_by_id_input_instance.to_dict()
# create an instance of UpdateConfigurationByIdInput from a dict
update_configuration_by_id_input_form_dict = update_configuration_by_id_input.from_dict(update_configuration_by_id_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
