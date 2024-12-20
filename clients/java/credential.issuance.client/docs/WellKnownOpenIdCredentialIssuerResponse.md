# WellKnownOpenIdCredentialIssuerResponse

## Properties

| Name                                  | Type                                                                                                                                                    | Description | Notes      |
| ------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ---------- |
| **authorizationEndpoint**             | **String**                                                                                                                                              |             | [optional] |
| **credentialEndpoint**                | **String**                                                                                                                                              |             | [optional] |
| **credentialIssuer**                  | **String**                                                                                                                                              |             | [optional] |
| **credentialsSupported**              | [**List&lt;WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner&gt;**](WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner.md) |             | [optional] |
| **deferredCredentialEndpoint**        | **String**                                                                                                                                              |             | [optional] |
| **grantTypesSupported**               | [**List&lt;GrantTypesSupportedEnum&gt;**](#List<GrantTypesSupportedEnum>)                                                                               |             | [optional] |
| **jwksUri**                           | **String**                                                                                                                                              |             | [optional] |
| **scopesSupported**                   | [**List&lt;ScopesSupportedEnum&gt;**](#List<ScopesSupportedEnum>)                                                                                       |             | [optional] |
| **tokenEndpoint**                     | **String**                                                                                                                                              |             | [optional] |
| **tokenEndpointAuthMethodsSupported** | [**List&lt;TokenEndpointAuthMethodsSupportedEnum&gt;**](#List<TokenEndpointAuthMethodsSupportedEnum>)                                                   |             | [optional] |

## Enum: List&lt;GrantTypesSupportedEnum&gt;

| Name                                                 | Value                                                            |
| ---------------------------------------------------- | ---------------------------------------------------------------- |
| AUTHORIZATION_CODE                                   | &quot;authorization_code&quot;                                   |
| URN_IETF_PARAMS_OAUTH_GRANT_TYPE_PRE_AUTHORIZED_CODE | &quot;urn:ietf:params:oauth:grant-type:pre-authorized_code&quot; |

## Enum: List&lt;ScopesSupportedEnum&gt;

| Name   | Value              |
| ------ | ------------------ |
| OPENID | &quot;openid&quot; |

## Enum: List&lt;TokenEndpointAuthMethodsSupportedEnum&gt;

| Name                | Value                           |
| ------------------- | ------------------------------- |
| CLIENT_SECRET_POST  | &quot;client_secret_post&quot;  |
| CLIENT_SECRET_BASIC | &quot;client_secret_basic&quot; |
| NONE                | &quot;none&quot;                |
