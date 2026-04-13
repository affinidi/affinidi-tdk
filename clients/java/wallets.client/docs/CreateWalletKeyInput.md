# CreateWalletKeyInput

Input for adding a new key to a wallet. Only supported for did:web ATM.

## Properties

| Name              | Type                                     | Description                             | Notes |
| ----------------- | ---------------------------------------- | --------------------------------------- | ----- |
| **keyType**       | [**KeyTypeEnum**](#KeyTypeEnum)          | cryptographic algorithm for the new key |       |
| **relationships** | **List&lt;VerificationRelationship&gt;** | verification relationships for the key. |       |

## Enum: KeyTypeEnum

| Name      | Value                 |
| --------- | --------------------- |
| SECP256K1 | &quot;secp256k1&quot; |
| ED25519   | &quot;ed25519&quot;   |
| P256      | &quot;p256&quot;      |
