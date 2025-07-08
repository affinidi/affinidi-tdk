# WalletDto

wallet dto

## Properties

| Name            | Type                                                         | Description                       | Notes                             |
| --------------- | ------------------------------------------------------------ | --------------------------------- | --------------------------------- |
| **id**          | **string**                                                   | id of the wallet in uuidV4 format | [optional] [default to undefined] |
| **did**         | **string**                                                   | did of the wallet                 | [optional] [default to undefined] |
| **name**        | **string**                                                   | The name of the wallet            | [optional] [default to undefined] |
| **description** | **string**                                                   | The description of the wallet     | [optional] [default to undefined] |
| **didDocument** | **object**                                                   | did document of the wallet        | [optional] [default to undefined] |
| **ari**         | **string**                                                   | ARI of the wallet                 | [optional] [default to undefined] |
| **keys**        | [**Array&lt;WalletDtoKeysInner&gt;**](WalletDtoKeysInner.md) |                                   | [optional] [default to undefined] |
| **createdAt**   | **string**                                                   |                                   | [optional] [default to undefined] |
| **modifiedAt**  | **string**                                                   |                                   | [optional] [default to undefined] |

## Example

```typescript
import { WalletDto } from '@affinidi-tdk/wallets-client'

const instance: WalletDto = {
  id,
  did,
  name,
  description,
  didDocument,
  ari,
  keys,
  createdAt,
  modifiedAt,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
