# IssuanceConfigDto

## Properties

| Name                        | Type                                                                       | Description                                                                                                                                                             | Notes                             |
| --------------------------- | -------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **id**                      | **string**                                                                 |                                                                                                                                                                         | [optional] [default to undefined] |
| **name**                    | **string**                                                                 |                                                                                                                                                                         | [optional] [default to undefined] |
| **description**             | **string**                                                                 |                                                                                                                                                                         | [optional] [default to undefined] |
| **issuerDid**               | **string**                                                                 | Issuer DID                                                                                                                                                              | [optional] [default to undefined] |
| **issuerWalletId**          | **string**                                                                 | Issuer Wallet id                                                                                                                                                        | [optional] [default to undefined] |
| **credentialOfferDuration** | **number**                                                                 | credential offer duration in second                                                                                                                                     | [optional] [default to undefined] |
| **cNonceDuration**          | **number**                                                                 | c_nonce duration in second                                                                                                                                              | [optional] [default to undefined] |
| **format**                  | **string**                                                                 | String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type | [optional] [default to undefined] |
| **issuerUri**               | **string**                                                                 | Issuer URI                                                                                                                                                              | [optional] [default to undefined] |
| **credentialSupported**     | [**Array&lt;CredentialSupportedObject&gt;**](CredentialSupportedObject.md) |                                                                                                                                                                         | [optional] [default to undefined] |
| **issuerMetadata**          | **{ [key: string]: any; }**                                                | Issuer public information wallet may want to show to user during consent confirmation                                                                                   | [optional] [default to undefined] |
| **version**                 | **number**                                                                 |                                                                                                                                                                         | [optional] [default to undefined] |
| **returnUris**              | **Array&lt;string&gt;**                                                    | List of allowed URIs to be returned to after issuance                                                                                                                   | [optional] [default to undefined] |
| **webhook**                 | [**CisConfigurationWebhookSetting**](CisConfigurationWebhookSetting.md)    |                                                                                                                                                                         | [optional] [default to undefined] |

## Example

```typescript
import { IssuanceConfigDto } from '@affinidi-tdk/credential-issuance-client'

const instance: IssuanceConfigDto = {
  id,
  name,
  description,
  issuerDid,
  issuerWalletId,
  credentialOfferDuration,
  cNonceDuration,
  format,
  issuerUri,
  credentialSupported,
  issuerMetadata,
  version,
  returnUris,
  webhook,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
