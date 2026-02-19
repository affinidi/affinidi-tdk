# CreateWalletV2Input

## Properties

| Name            | Type                                                            | Description                                           | Notes      |
| --------------- | --------------------------------------------------------------- | ----------------------------------------------------- | ---------- |
| **name**        | **String**                                                      | The name of the wallet                                | [optional] |
| **description** | **String**                                                      | The description of the wallet                         | [optional] |
| **didMethod**   | [**DidMethodEnum**](#DidMethodEnum)                             | Define how DID of your wallet is created and resolved | [optional] |
| **didWebUrl**   | **String**                                                      | URL of the DID. Required if the did method is web     | [optional] |
| **algorithm**   | [**AlgorithmEnum**](#AlgorithmEnum)                             | algorithm to generate key for the wallet              | [optional] |
| **services**    | [**List&lt;ServiceEndpointInput&gt;**](ServiceEndpointInput.md) | Service endpoints to include in DID document          | [optional] |

## Enum: DidMethodEnum

| Name  | Value             |
| ----- | ----------------- |
| KEY   | &quot;key&quot;   |
| WEB   | &quot;web&quot;   |
| PEER0 | &quot;peer0&quot; |
| PEER2 | &quot;peer2&quot; |

## Enum: AlgorithmEnum

| Name      | Value                 |
| --------- | --------------------- |
| SECP256K1 | &quot;secp256k1&quot; |
| ED25519   | &quot;ed25519&quot;   |
| P256      | &quot;p256&quot;      |
