# SignPresentationLdpInputDto

DTO contains params to sign presentation

## Properties

| Name                     | Type                                            | Description                                      | Notes      |
| ------------------------ | ----------------------------------------------- | ------------------------------------------------ | ---------- |
| **unsignedPresentation** | **Object**                                      | Unsigned presentation in Dm1 format              |            |
| **signatureScheme**      | [**SignatureSchemeEnum**](#SignatureSchemeEnum) |                                                  | [optional] |
| **domain**               | **List&lt;String&gt;**                          | Domain(s) for which the presentation is intended | [optional] |
| **challenge**            | **String**                                      | Challenge string                                 | [optional] |

## Enum: SignatureSchemeEnum

| Name                   | Value                              |
| ---------------------- | ---------------------------------- |
| ECDSA_SECP256K1_SHA256 | &quot;ecdsa_secp256k1_sha256&quot; |
| ECDSA_P256_SHA256      | &quot;ecdsa_p256_sha256&quot;      |
| ED25519                | &quot;ed25519&quot;                |
