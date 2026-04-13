# WalletKeyDto

Detailed information about a wallet key. Multiple keys are only supported for did:web wallets.

## Properties

| Name              | Type                                     | Description                                                  | Notes      |
| ----------------- | ---------------------------------------- | ------------------------------------------------------------ | ---------- |
| **keyId**         | **String**                               | wallet-scoped key identifier (e.g., \&quot;key-1\&quot;)     | [optional] |
| **keyType**       | [**KeyTypeEnum**](#KeyTypeEnum)          | cryptographic algorithm used by this key                     | [optional] |
| **keyAri**        | **String**                               | ARI identifier for the key (e.g., \&quot;ari:key:...\&quot;) | [optional] |
| **relationships** | **List&lt;VerificationRelationship&gt;** | verification relationships this key supports                 | [optional] |

## Enum: KeyTypeEnum

| Name      | Value                 |
| --------- | --------------------- |
| SECP256K1 | &quot;secp256k1&quot; |
| ED25519   | &quot;ed25519&quot;   |
| P256      | &quot;p256&quot;      |
