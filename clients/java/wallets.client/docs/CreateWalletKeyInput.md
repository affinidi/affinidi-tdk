# CreateWalletKeyInput

Input for adding a new key to a wallet. Only supported for did:web ATM.

## Properties

| Name              | Type                                     | Description                                                                                                                                                             | Notes      |
| ----------------- | ---------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **algorithm**     | [**AlgorithmEnum**](#AlgorithmEnum)      | cryptographic algorithm for the new key                                                                                                                                 | [optional] |
| **keyType**       | [**KeyTypeEnum**](#KeyTypeEnum)          | Deprecated alias of &#x60;algorithm&#x60;. Accepted for backward compatibility; prefer &#x60;algorithm&#x60;. If both are sent, &#x60;algorithm&#x60; takes precedence. | [optional] |
| **relationships** | **List&lt;VerificationRelationship&gt;** | verification relationships for the key.                                                                                                                                 |            |

## Enum: AlgorithmEnum

| Name      | Value                 |
| --------- | --------------------- |
| SECP256K1 | &quot;secp256k1&quot; |
| ED25519   | &quot;ed25519&quot;   |
| P256      | &quot;p256&quot;      |

## Enum: KeyTypeEnum

| Name      | Value                 |
| --------- | --------------------- |
| SECP256K1 | &quot;secp256k1&quot; |
| ED25519   | &quot;ed25519&quot;   |
| P256      | &quot;p256&quot;      |
