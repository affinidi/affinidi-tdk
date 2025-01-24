# CisConfigurationWebhookSetting

Webhook setting to notify developers for claimed VC

## Properties

| Name         | Type                                                                                    | Description                             | Notes              |
| ------------ | --------------------------------------------------------------------------------------- | --------------------------------------- | ------------------ |
| **enabled**  | **bool**                                                                                | flag to enabled or disabled the webhook | [default to False] |
| **endpoint** | [**CisConfigurationWebhookSettingEndpoint**](CisConfigurationWebhookSettingEndpoint.md) |                                         | [optional]         |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.cis_configuration_webhook_setting import CisConfigurationWebhookSetting

# TODO update the JSON string below
json = "{}"
# create an instance of CisConfigurationWebhookSetting from a JSON string
cis_configuration_webhook_setting_instance = CisConfigurationWebhookSetting.from_json(json)
# print the JSON string representation of the object
print CisConfigurationWebhookSetting.to_json()

# convert the object into a dict
cis_configuration_webhook_setting_dict = cis_configuration_webhook_setting_instance.to_dict()
# create an instance of CisConfigurationWebhookSetting from a dict
cis_configuration_webhook_setting_from_dict = CisConfigurationWebhookSetting.from_dict(cis_configuration_webhook_setting_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
