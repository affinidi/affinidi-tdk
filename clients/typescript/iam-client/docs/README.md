# Documentation for Iam

<a name="documentation-for-api-endpoints"></a>

## Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Class             | Method                                                                             | HTTP request                                     | Description                             |
| ----------------- | ---------------------------------------------------------------------------------- | ------------------------------------------------ | --------------------------------------- |
| _AuthzApi_        | [**deleteAccessVfs**](Apis/AuthzApi.md#deleteaccessvfs)                            | **DELETE** /v1/authz/vfs/access/{granteeDid}     | delete access of granteeDid             |
| _AuthzApi_        | [**grantAccessVfs**](Apis/AuthzApi.md#grantaccessvfs)                              | **POST** /v1/authz/vfs/access                    | Grant access to the virtual file system |
| _AuthzApi_        | [**updateAccessVfs**](Apis/AuthzApi.md#updateaccessvfs)                            | **PUT** /v1/authz/vfs/access/{granteeDid}        | Update access of granteeDid             |
| _ConsumerAuthApi_ | [**consumerAuthTokenEndpoint**](Apis/ConsumerAuthApi.md#consumerauthtokenendpoint) | **POST** /v1/consumer/oauth2/token               | The Consumer OAuth 2.0 Token Endpoint   |
| _DefaultApi_      | [**v1AuthProxyDelete**](Apis/DefaultApi.md#v1authproxydelete)                      | **DELETE** /v1/auth/{proxy+}                     |                                         |
| _DefaultApi_      | [**v1AuthProxyGet**](Apis/DefaultApi.md#v1authproxyget)                            | **GET** /v1/auth/{proxy+}                        |                                         |
| _DefaultApi_      | [**v1AuthProxyPatch**](Apis/DefaultApi.md#v1authproxypatch)                        | **PATCH** /v1/auth/{proxy+}                      |                                         |
| _DefaultApi_      | [**v1AuthProxyPost**](Apis/DefaultApi.md#v1authproxypost)                          | **POST** /v1/auth/{proxy+}                       |                                         |
| _DefaultApi_      | [**v1AuthProxyPut**](Apis/DefaultApi.md#v1authproxyput)                            | **PUT** /v1/auth/{proxy+}                        |                                         |
| _DefaultApi_      | [**v1IdpProxyDelete**](Apis/DefaultApi.md#v1idpproxydelete)                        | **DELETE** /v1/idp/{proxy+}                      |                                         |
| _DefaultApi_      | [**v1IdpProxyGet**](Apis/DefaultApi.md#v1idpproxyget)                              | **GET** /v1/idp/{proxy+}                         |                                         |
| _DefaultApi_      | [**v1IdpProxyPatch**](Apis/DefaultApi.md#v1idpproxypatch)                          | **PATCH** /v1/idp/{proxy+}                       |                                         |
| _DefaultApi_      | [**v1IdpProxyPost**](Apis/DefaultApi.md#v1idpproxypost)                            | **POST** /v1/idp/{proxy+}                        |                                         |
| _DefaultApi_      | [**v1IdpProxyPut**](Apis/DefaultApi.md#v1idpproxyput)                              | **PUT** /v1/idp/{proxy+}                         |                                         |
| _PoliciesApi_     | [**getPolicies**](Apis/PoliciesApi.md#getpolicies)                                 | **GET** /v1/policies/principals/{principalId}    |                                         |
| _PoliciesApi_     | [**updatePolicies**](Apis/PoliciesApi.md#updatepolicies)                           | **PUT** /v1/policies/principals/{principalId}    |                                         |
| _ProjectsApi_     | [**addPrincipalToProject**](Apis/ProjectsApi.md#addprincipaltoproject)             | **POST** /v1/projects/principals                 |                                         |
| _ProjectsApi_     | [**createProject**](Apis/ProjectsApi.md#createproject)                             | **POST** /v1/projects                            |                                         |
| _ProjectsApi_     | [**deletePrincipalFromProject**](Apis/ProjectsApi.md#deleteprincipalfromproject)   | **DELETE** /v1/projects/principals/{principalId} |                                         |
| _ProjectsApi_     | [**listPrincipalsOfProject**](Apis/ProjectsApi.md#listprincipalsofproject)         | **GET** /v1/projects/principals                  |                                         |
| _ProjectsApi_     | [**listProject**](Apis/ProjectsApi.md#listproject)                                 | **GET** /v1/projects                             |                                         |
| _ProjectsApi_     | [**updateProject**](Apis/ProjectsApi.md#updateproject)                             | **PATCH** /v1/projects/{projectId}               |                                         |
| _StsApi_          | [**createProjectScopedToken**](Apis/StsApi.md#createprojectscopedtoken)            | **POST** /v1/sts/create-project-scoped-token     |                                         |
| _StsApi_          | [**whoami**](Apis/StsApi.md#whoami)                                                | **GET** /v1/sts/whoami                           |                                         |
| _TokensApi_       | [**createToken**](Apis/TokensApi.md#createtoken)                                   | **POST** /v1/tokens                              |                                         |
| _TokensApi_       | [**deleteToken**](Apis/TokensApi.md#deletetoken)                                   | **DELETE** /v1/tokens/{tokenId}                  |                                         |
| _TokensApi_       | [**getToken**](Apis/TokensApi.md#gettoken)                                         | **GET** /v1/tokens/{tokenId}                     |                                         |
| _TokensApi_       | [**listProjectsOfToken**](Apis/TokensApi.md#listprojectsoftoken)                   | **GET** /v1/tokens/{tokenId}/projects            |                                         |
| _TokensApi_       | [**listToken**](Apis/TokensApi.md#listtoken)                                       | **GET** /v1/tokens                               |                                         |
| _TokensApi_       | [**updateToken**](Apis/TokensApi.md#updatetoken)                                   | **PATCH** /v1/tokens/{tokenId}                   |                                         |
| _WellKnownApi_    | [**getWellKnownDid**](Apis/WellKnownApi.md#getwellknowndid)                        | **GET** /.well-known/did.json                    |                                         |
| _WellKnownApi_    | [**getWellKnownJwks**](Apis/WellKnownApi.md#getwellknownjwks)                      | **GET** /.well-known/jwks.json                   |                                         |

<a name="documentation-for-models"></a>

## Documentation for Models

- [ActionForbiddenError](./Models/ActionForbiddenError.md)
- [AddUserToProjectInput](./Models/AddUserToProjectInput.md)
- [ConsumerAuthTokenEndpointInput](./Models/ConsumerAuthTokenEndpointInput.md)
- [ConsumerAuthTokenEndpointOutput](./Models/ConsumerAuthTokenEndpointOutput.md)
- [CorsConsumerAuthTokenEndpointOK](./Models/CorsConsumerAuthTokenEndpointOK.md)
- [CreateProjectInput](./Models/CreateProjectInput.md)
- [CreateProjectScopedTokenInput](./Models/CreateProjectScopedTokenInput.md)
- [CreateProjectScopedTokenOutput](./Models/CreateProjectScopedTokenOutput.md)
- [CreateTokenInput](./Models/CreateTokenInput.md)
- [DeleteAccessOutput](./Models/DeleteAccessOutput.md)
- [GrantAccessInput](./Models/GrantAccessInput.md)
- [GrantAccessOutput](./Models/GrantAccessOutput.md)
- [InvalidDIDError](./Models/InvalidDIDError.md)
- [InvalidJwtTokenError](./Models/InvalidJwtTokenError.md)
- [InvalidParameterError](./Models/InvalidParameterError.md)
- [JsonWebKeyDto](./Models/JsonWebKeyDto.md)
- [JsonWebKeySetDto](./Models/JsonWebKeySetDto.md)
- [NotFoundError](./Models/NotFoundError.md)
- [PolicyDto](./Models/PolicyDto.md)
- [PolicyStatementDto](./Models/PolicyStatementDto.md)
- [PrincipalCannotBeDeletedError](./Models/PrincipalCannotBeDeletedError.md)
- [PrincipalDoesNotBelongToProjectError](./Models/PrincipalDoesNotBelongToProjectError.md)
- [ProjectDto](./Models/ProjectDto.md)
- [ProjectList](./Models/ProjectList.md)
- [ProjectWithPolicyDto](./Models/ProjectWithPolicyDto.md)
- [ProjectWithPolicyList](./Models/ProjectWithPolicyList.md)
- [PublicKeyCannotBeResolvedFromDidError](./Models/PublicKeyCannotBeResolvedFromDidError.md)
- [RightsEnum](./Models/RightsEnum.md)
- [ServiceErrorResponse](./Models/ServiceErrorResponse.md)
- [ServiceErrorResponse_details_inner](./Models/ServiceErrorResponse_details_inner.md)
- [TokenAuthenticationMethodDto](./Models/TokenAuthenticationMethodDto.md)
- [TokenDto](./Models/TokenDto.md)
- [TokenList](./Models/TokenList.md)
- [TokenPrivateKeyAuthenticationMethodDto](./Models/TokenPrivateKeyAuthenticationMethodDto.md)
- [TokenPrivateKeyAuthenticationMethodDto_publicKeyInfo](./Models/TokenPrivateKeyAuthenticationMethodDto_publicKeyInfo.md)
- [TokenPrivateKeyAuthenticationMethodDto_publicKeyInfo_oneOf](./Models/TokenPrivateKeyAuthenticationMethodDto_publicKeyInfo_oneOf.md)
- [TokenPrivateKeyAuthenticationMethodDto_publicKeyInfo_oneOf_1](./Models/TokenPrivateKeyAuthenticationMethodDto_publicKeyInfo_oneOf_1.md)
- [TypedPrincipalId](./Models/TypedPrincipalId.md)
- [UnauthorizedError](./Models/UnauthorizedError.md)
- [UnexpectedError](./Models/UnexpectedError.md)
- [UpdateAccessInput](./Models/UpdateAccessInput.md)
- [UpdateAccessOutput](./Models/UpdateAccessOutput.md)
- [UpdateProjectInput](./Models/UpdateProjectInput.md)
- [UpdateTokenInput](./Models/UpdateTokenInput.md)
- [UpdateTokenPrivateKeyAuthenticationMethodDto](./Models/UpdateTokenPrivateKeyAuthenticationMethodDto.md)
- [UserDto](./Models/UserDto.md)
- [UserList](./Models/UserList.md)
- [WhoamiDto](./Models/WhoamiDto.md)

<a name="documentation-for-authorization"></a>

## Documentation for Authorization

<a name="HeritageTokenAuth"></a>

### HeritageTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

<a name="UserTokenAuth"></a>

### UserTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

<a name="ProjectTokenAuth"></a>

### ProjectTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

<a name="ConsumerTokenAuth"></a>

### ConsumerTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header
