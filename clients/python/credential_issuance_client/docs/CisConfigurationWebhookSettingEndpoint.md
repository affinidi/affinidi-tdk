# CisConfigurationWebhookSettingEndpoint

## Properties

| Name    | Type    | Description                                                                                                      | Notes      |
| ------- | ------- | ---------------------------------------------------------------------------------------------------------------- | ---------- |
| **url** | **str** | url endpoint where notification will be sent with issuanceId after user has claimed the VC related to issuanceId | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.cis_configuration_webhook_setting_endpoint import CisConfigurationWebhookSettingEndpoint

# TODO update the JSON string below
json = "{}"
# create an instance of CisConfigurationWebhookSettingEndpoint from a JSON string
cis_configuration_webhook_setting_endpoint_instance = CisConfigurationWebhookSettingEndpoint.from_json(json)
# print the JSON string representation of the object
print CisConfigurationWebhookSettingEndpoint.to_json()

# convert the object into a dict
cis_configuration_webhook_setting_endpoint_dict = cis_configuration_webhook_setting_endpoint_instance.to_dict()
# create an instance of CisConfigurationWebhookSettingEndpoint from a dict
cis_configuration_webhook_setting_endpoint_from_dict = CisConfigurationWebhookSettingEndpoint.from_dict(cis_configuration_webhook_setting_endpoint_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
