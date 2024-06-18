# CreateIotaConfigurationInput

## Properties

| Name                          | Type                                                                            | Description                              | Notes      |
| ----------------------------- | ------------------------------------------------------------------------------- | ---------------------------------------- | ---------- |
| **name**                      | **str**                                                                         | The name of the configuration            |
| **description**               | **str**                                                                         | Description of the configuration         | [optional] |
| **wallet_ari**                | **str**                                                                         | The wallet Ari that will be used to sign |
| **iota_response_webhook_url** | **str**                                                                         | webhook to call when data is ready       | [optional] |
| **enable_verification**       | **bool**                                                                        |                                          |
| **enable_consent_audit_log**  | **bool**                                                                        |                                          |
| **token_max_age**             | **float**                                                                       | token time to live in seconds            | [optional] |
| **client_metadata**           | [**IotaConfigurationDtoClientMetadata**](IotaConfigurationDtoClientMetadata.md) |                                          |

## Example

```python
from affinidi_tdk_iota_client.models.create_iota_configuration_input import CreateIotaConfigurationInput

# TODO update the JSON string below
json = "{}"
# create an instance of CreateIotaConfigurationInput from a JSON string
create_iota_configuration_input_instance = CreateIotaConfigurationInput.from_json(json)
# print the JSON string representation of the object
print CreateIotaConfigurationInput.to_json()

# convert the object into a dict
create_iota_configuration_input_dict = create_iota_configuration_input_instance.to_dict()
# create an instance of CreateIotaConfigurationInput from a dict
create_iota_configuration_input_form_dict = create_iota_configuration_input.from_dict(create_iota_configuration_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
