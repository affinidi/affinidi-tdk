# SignCredentialInputDto

DTO contains params to sign credential

## Properties

| Name                         | Type                                                                                                    | Description                                                                             | Notes      |
| ---------------------------- | ------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | ---------- |
| **unsignedCredential**       | **Object**                                                                                              | Unsigned Credential. If provided \&quot;unsignedCredentialParams\&quot; is not accepted | [optional] |
| **revocable**                | **Boolean**                                                                                             |                                                                                         | [optional] |
| **credentialFormat**         | [**CredentialFormatEnum**](#CredentialFormatEnum)                                                       |                                                                                         | [optional] |
| **unsignedCredentialParams** | [**SignCredentialInputDtoUnsignedCredentialParams**](SignCredentialInputDtoUnsignedCredentialParams.md) |                                                                                         | [optional] |

## Enum: CredentialFormatEnum

| Name              | Value                         |
| ----------------- | ----------------------------- |
| LDP_VC            | &quot;ldp_vc&quot;            |
| JWT_VC_JSON_LD    | &quot;jwt_vc_json-ld&quot;    |
| SD_JWT_VC_JSON_LD | &quot;sd_jwt_vc_json-ld&quot; |
