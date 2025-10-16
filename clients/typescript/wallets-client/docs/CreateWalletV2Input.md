# CreateWalletV2Input

## Properties

| Name            | Type       | Description                                           | Notes                                           |
| --------------- | ---------- | ----------------------------------------------------- | ----------------------------------------------- |
| **name**        | **string** | The name of the wallet                                | [optional] [default to undefined]               |
| **description** | **string** | The description of the wallet                         | [optional] [default to undefined]               |
| **didMethod**   | **string** | Define how DID of your wallet is created and resolved | [optional] [default to DidMethodEnum_Key]       |
| **didWebUrl**   | **string** | URL of the DID. Required if the did method is web     | [optional] [default to undefined]               |
| **algorithm**   | **string** | algorithm to generate key for the wallet              | [optional] [default to AlgorithmEnum_Secp256k1] |

## Example

```typescript
import { CreateWalletV2Input } from '@affinidi-tdk/wallets-client'

const instance: CreateWalletV2Input = {
  name,
  description,
  didMethod,
  didWebUrl,
  algorithm,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
