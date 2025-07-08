# GetIotaConfigurationMetaDataOK

## Properties

| Name       | Type       | Description                                                                                                                              | Notes                  |
| ---------- | ---------- | ---------------------------------------------------------------------------------------------------------------------------------------- | ---------------------- |
| **name**   | **string** | The name displayed on the consent page indicates who is requesting data from the user. It can be the application or website\&#39;s name. | [default to undefined] |
| **origin** | **string** | The URL of the requester displayed on the consent page indicates the request\&#39;s origin.                                              | [default to undefined] |
| **logo**   | **string** | The logo of the requester displayed on the consent page, allowing users to easily recognise who requests the data.                       | [default to undefined] |

## Example

```typescript
import { GetIotaConfigurationMetaDataOK } from '@affinidi-tdk/iota-client'

const instance: GetIotaConfigurationMetaDataOK = {
  name,
  origin,
  logo,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
