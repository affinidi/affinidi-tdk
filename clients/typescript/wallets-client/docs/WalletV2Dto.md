# WalletV2Dto

wallet v2 dto

## Properties

| Name             | Type                                                             | Description                                                 | Notes                             |
| ---------------- | ---------------------------------------------------------------- | ----------------------------------------------------------- | --------------------------------- |
| **id**           | **string**                                                       | id of the wallet in uuidV4 format                           | [optional] [default to undefined] |
| **did**          | **string**                                                       | did of the wallet                                           | [optional] [default to undefined] |
| **name**         | **string**                                                       | The name of the wallet                                      | [optional] [default to undefined] |
| **description**  | **string**                                                       | The description of the wallet                               | [optional] [default to undefined] |
| **didDocument**  | **object**                                                       | did document of the wallet                                  | [optional] [default to undefined] |
| **ari**          | **string**                                                       | ARI of the wallet                                           | [optional] [default to undefined] |
| **algorithm**    | **string**                                                       | algorithm used to generate key for the wallet               | [optional] [default to undefined] |
| **keys**         | [**Array&lt;WalletV2DtoKeysInner&gt;**](WalletV2DtoKeysInner.md) |                                                             | [optional] [default to undefined] |
| **defaultKeyId** | **string**                                                       | default key for signing operations when keyId not specified | [optional] [default to undefined] |
| **services**     | [**Array&lt;ServiceEndpointDto&gt;**](ServiceEndpointDto.md)     | service endpoints in DID document                           | [optional] [default to undefined] |
| **createdAt**    | **string**                                                       |                                                             | [optional] [default to undefined] |
| **modifiedAt**   | **string**                                                       |                                                             | [optional] [default to undefined] |

## Example

```typescript
import { WalletV2Dto } from '@affinidi-tdk/wallets-client'

const instance: WalletV2Dto = {
  id,
  did,
  name,
  description,
  didDocument,
  ari,
  algorithm,
  keys,
  defaultKeyId,
  services,
  createdAt,
  modifiedAt,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
