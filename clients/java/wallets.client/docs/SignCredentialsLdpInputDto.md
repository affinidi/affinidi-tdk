# SignCredentialsLdpInputDto

DTO contains params to sign credential

## Properties

| Name                   | Type                                            | Description                                                                                                                                                                                | Notes      |
| ---------------------- | ----------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------- |
| **unsignedCredential** | **Object**                                      | Unsigned Credential in Dm2 format                                                                                                                                                          |            |
| **revocable**          | **Boolean**                                     |                                                                                                                                                                                            | [optional] |
| **signatureScheme**    | [**SignatureSchemeEnum**](#SignatureSchemeEnum) |                                                                                                                                                                                            | [optional] |
| **signatureSuite**     | [**SignatureSuiteEnum**](#SignatureSuiteEnum)   | W3C signature suite for canonicalization. Defaults to rdfc variants for each algorithm (ecdsa-rdfc-2019 for P256, eddsa-rdfc-2022 for Ed25519, EcdsaSecp256k1Signature2019 for secp256k1). | [optional] |

## Enum: SignatureSchemeEnum

| Name                   | Value                              |
| ---------------------- | ---------------------------------- |
| ECDSA_SECP256K1_SHA256 | &quot;ecdsa_secp256k1_sha256&quot; |
| ECDSA_P256_SHA256      | &quot;ecdsa_p256_sha256&quot;      |
| ED25519                | &quot;ed25519&quot;                |

## Enum: SignatureSuiteEnum

| Name                          | Value                                   |
| ----------------------------- | --------------------------------------- |
| ECDSA_JCS_2019                | &quot;ecdsa-jcs-2019&quot;              |
| ECDSA_RDFC_2019               | &quot;ecdsa-rdfc-2019&quot;             |
| EDDSA_JCS_2022                | &quot;eddsa-jcs-2022&quot;              |
| EDDSA_RDFC_2022               | &quot;eddsa-rdfc-2022&quot;             |
| ECDSA_SECP256K1_SIGNATURE2019 | &quot;EcdsaSecp256k1Signature2019&quot; |
