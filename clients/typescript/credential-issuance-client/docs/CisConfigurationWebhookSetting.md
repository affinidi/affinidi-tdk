# CisConfigurationWebhookSetting

Webhook setting to notify developers for claimed VC

## Properties

| Name         | Type                                                                                    | Description                             | Notes                             |
| ------------ | --------------------------------------------------------------------------------------- | --------------------------------------- | --------------------------------- |
| **enabled**  | **boolean**                                                                             | flag to enabled or disabled the webhook | [default to false]                |
| **endpoint** | [**CisConfigurationWebhookSettingEndpoint**](CisConfigurationWebhookSettingEndpoint.md) |                                         | [optional] [default to undefined] |

## Example

```typescript
import { CisConfigurationWebhookSetting } from '@affinidi-tdk/credential-issuance-client'

const instance: CisConfigurationWebhookSetting = {
  enabled,
  endpoint,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
