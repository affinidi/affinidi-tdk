# CreateWalletInput

## Properties

| Name            | Type                                | Description                                           | Notes      |
| --------------- | ----------------------------------- | ----------------------------------------------------- | ---------- |
| **name**        | **String**                          | The name of the wallet                                | [optional] |
| **description** | **String**                          | The description of the wallet                         | [optional] |
| **didMethod**   | [**DidMethodEnum**](#DidMethodEnum) | Define how DID of your wallet is created and resolved | [optional] |
| **didWebUrl**   | **String**                          | URL of the DID. Required if the did method is web     | [optional] |

## Enum: DidMethodEnum

| Name | Value           |
| ---- | --------------- |
| KEY  | &quot;key&quot; |
| WEB  | &quot;web&quot; |
