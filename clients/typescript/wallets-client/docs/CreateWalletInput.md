# CreateWalletInput

## Properties

| Name            | Type       | Description                                           | Notes                             |
| --------------- | ---------- | ----------------------------------------------------- | --------------------------------- |
| **name**        | **string** | The name of the wallet                                | [optional] [default to undefined] |
| **description** | **string** | The description of the wallet                         | [optional] [default to undefined] |
| **didMethod**   | **string** | Define how DID of your wallet is created and resolved | [optional] [default to undefined] |
| **didWebUrl**   | **string** | URL of the DID. Required if the did method is web     | [optional] [default to undefined] |

## Example

```typescript
import { CreateWalletInput } from '@affinidi-tdk/wallets-client'

const instance: CreateWalletInput = {
  name,
  description,
  didMethod,
  didWebUrl,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
