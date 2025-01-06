# TokenPrivateKeyAuthenticationMethodDto

Private Key JWT Authentication of Client with `private_key_jwt` oAuth Method

## Properties

| Name                 | Type                                                                                                              | Description | Notes |
| -------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------- | ----- |
| **type**             | [**TypeEnum**](#TypeEnum)                                                                                         |             |       |
| **signingAlgorithm** | [**SigningAlgorithmEnum**](#SigningAlgorithmEnum)                                                                 |             |       |
| **publicKeyInfo**    | [**TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo**](TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.md) |             |       |

## Enum: TypeEnum

| Name        | Value                   |
| ----------- | ----------------------- |
| PRIVATE_KEY | &quot;PRIVATE_KEY&quot; |

## Enum: SigningAlgorithmEnum

| Name  | Value             |
| ----- | ----------------- |
| RS256 | &quot;RS256&quot; |
| RS512 | &quot;RS512&quot; |
| ES256 | &quot;ES256&quot; |
| ES512 | &quot;ES512&quot; |
