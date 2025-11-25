# AuthcryptMessageInput

DTO contains params to authcrypt plain text DIDComm message

## Properties

| Name                 | Type                                            | Description                         | Notes      |
| -------------------- | ----------------------------------------------- | ----------------------------------- | ---------- |
| **plainTextMessage** | **Object**                                      | Unsigned plain text DIDComm message |            |
| **signatureScheme**  | [**SignatureSchemeEnum**](#SignatureSchemeEnum) |                                     | [optional] |

## Enum: SignatureSchemeEnum

| Name                   | Value                              |
| ---------------------- | ---------------------------------- |
| ECDSA_SECP256K1_SHA256 | &quot;ecdsa_secp256k1_sha256&quot; |
| ECDSA_P256_SHA256      | &quot;ecdsa_p256_sha256&quot;      |
| ED25519                | &quot;ed25519&quot;                |
