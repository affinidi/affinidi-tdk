# SignCredentialsJwtInputDto

DTO contains params to sign credential

## Properties

| Name                   | Type                                            | Description                       | Notes      |
| ---------------------- | ----------------------------------------------- | --------------------------------- | ---------- |
| **unsignedCredential** | **Object**                                      | Unsigned Credential in Dm1 format |            |
| **revocable**          | **Boolean**                                     |                                   | [optional] |
| **signatureScheme**    | [**SignatureSchemeEnum**](#SignatureSchemeEnum) |                                   | [optional] |

## Enum: SignatureSchemeEnum

| Name                   | Value                              |
| ---------------------- | ---------------------------------- |
| ECDSA_SECP256K1_SHA256 | &quot;ecdsa_secp256k1_sha256&quot; |
| ECDSA_P256_SHA256      | &quot;ecdsa_p256_sha256&quot;      |
| ED25519                | &quot;ed25519&quot;                |
