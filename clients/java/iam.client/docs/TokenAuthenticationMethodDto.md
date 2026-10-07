# TokenAuthenticationMethodDto

How the Token will be authenticate against our Authorization Server

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
