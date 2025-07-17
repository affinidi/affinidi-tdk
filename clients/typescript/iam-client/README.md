## @affinidi-tdk/iam-client@1.33.0

This generator creates TypeScript/JavaScript client that utilizes [axios](https://github.com/axios/axios). The generated Node module can be used in the following environments:

Environment

- Node.js
- Webpack
- Browserify

Language level

- ES5 - you must have a Promises/A+ library installed
- ES6

Module system

- CommonJS
- ES6 module system

It can be used in both TypeScript and JavaScript. In TypeScript, the definition will be automatically resolved via `package.json`. ([Reference](https://www.typescriptlang.org/docs/handbook/declaration-files/consumption.html))

### Building

To build and compile the typescript sources to javascript use:

```
npm install
npm run build
```

### Publishing

First build the package then run `npm publish`

### Consuming

navigate to the folder of your consuming project and run one of the following commands.

_published:_

```
npm install @affinidi-tdk/iam-client@1.33.0 --save
```

_unPublished (not recommended):_

```
npm install PATH_TO_GENERATED_PACKAGE --save
```

### Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Class             | Method                                                                             | HTTP request                                     | Description                             |
| ----------------- | ---------------------------------------------------------------------------------- | ------------------------------------------------ | --------------------------------------- |
| _AuthzApi_        | [**deleteAccessVfs**](docs/AuthzApi.md#deleteaccessvfs)                            | **DELETE** /v1/authz/vfs/access/{granteeDid}     | delete access of granteeDid             |
| _AuthzApi_        | [**grantAccessVfs**](docs/AuthzApi.md#grantaccessvfs)                              | **POST** /v1/authz/vfs/access                    | Grant access to the virtual file system |
| _AuthzApi_        | [**updateAccessVfs**](docs/AuthzApi.md#updateaccessvfs)                            | **PUT** /v1/authz/vfs/access/{granteeDid}        | Update access of granteeDid             |
| _ConsumerAuthApi_ | [**consumerAuthTokenEndpoint**](docs/ConsumerAuthApi.md#consumerauthtokenendpoint) | **POST** /v1/consumer/oauth2/token               | The Consumer OAuth 2.0 Token Endpoint   |
| _DefaultApi_      | [**v1AuthProxyDelete**](docs/DefaultApi.md#v1authproxydelete)                      | **DELETE** /v1/auth/{proxy+}                     |
| _DefaultApi_      | [**v1AuthProxyGet**](docs/DefaultApi.md#v1authproxyget)                            | **GET** /v1/auth/{proxy+}                        |
| _DefaultApi_      | [**v1AuthProxyPatch**](docs/DefaultApi.md#v1authproxypatch)                        | **PATCH** /v1/auth/{proxy+}                      |
| _DefaultApi_      | [**v1AuthProxyPost**](docs/DefaultApi.md#v1authproxypost)                          | **POST** /v1/auth/{proxy+}                       |
| _DefaultApi_      | [**v1AuthProxyPut**](docs/DefaultApi.md#v1authproxyput)                            | **PUT** /v1/auth/{proxy+}                        |
| _DefaultApi_      | [**v1IdpProxyDelete**](docs/DefaultApi.md#v1idpproxydelete)                        | **DELETE** /v1/idp/{proxy+}                      |
| _DefaultApi_      | [**v1IdpProxyGet**](docs/DefaultApi.md#v1idpproxyget)                              | **GET** /v1/idp/{proxy+}                         |
| _DefaultApi_      | [**v1IdpProxyPatch**](docs/DefaultApi.md#v1idpproxypatch)                          | **PATCH** /v1/idp/{proxy+}                       |
| _DefaultApi_      | [**v1IdpProxyPost**](docs/DefaultApi.md#v1idpproxypost)                            | **POST** /v1/idp/{proxy+}                        |
| _DefaultApi_      | [**v1IdpProxyPut**](docs/DefaultApi.md#v1idpproxyput)                              | **PUT** /v1/idp/{proxy+}                         |
| _PoliciesApi_     | [**getPolicies**](docs/PoliciesApi.md#getpolicies)                                 | **GET** /v1/policies/principals/{principalId}    |
| _PoliciesApi_     | [**updatePolicies**](docs/PoliciesApi.md#updatepolicies)                           | **PUT** /v1/policies/principals/{principalId}    |
| _ProjectsApi_     | [**addPrincipalToProject**](docs/ProjectsApi.md#addprincipaltoproject)             | **POST** /v1/projects/principals                 |
| _ProjectsApi_     | [**createProject**](docs/ProjectsApi.md#createproject)                             | **POST** /v1/projects                            |
| _ProjectsApi_     | [**deletePrincipalFromProject**](docs/ProjectsApi.md#deleteprincipalfromproject)   | **DELETE** /v1/projects/principals/{principalId} |
| _ProjectsApi_     | [**listPrincipalsOfProject**](docs/ProjectsApi.md#listprincipalsofproject)         | **GET** /v1/projects/principals                  |
| _ProjectsApi_     | [**listProject**](docs/ProjectsApi.md#listproject)                                 | **GET** /v1/projects                             |
| _ProjectsApi_     | [**updateProject**](docs/ProjectsApi.md#updateproject)                             | **PATCH** /v1/projects/{projectId}               |
| _StsApi_          | [**createProjectScopedToken**](docs/StsApi.md#createprojectscopedtoken)            | **POST** /v1/sts/create-project-scoped-token     |
| _StsApi_          | [**whoami**](docs/StsApi.md#whoami)                                                | **GET** /v1/sts/whoami                           |
| _TokensApi_       | [**createToken**](docs/TokensApi.md#createtoken)                                   | **POST** /v1/tokens                              |
| _TokensApi_       | [**deleteToken**](docs/TokensApi.md#deletetoken)                                   | **DELETE** /v1/tokens/{tokenId}                  |
| _TokensApi_       | [**getToken**](docs/TokensApi.md#gettoken)                                         | **GET** /v1/tokens/{tokenId}                     |
| _TokensApi_       | [**listProjectsOfToken**](docs/TokensApi.md#listprojectsoftoken)                   | **GET** /v1/tokens/{tokenId}/projects            |
| _TokensApi_       | [**listToken**](docs/TokensApi.md#listtoken)                                       | **GET** /v1/tokens                               |
| _TokensApi_       | [**updateToken**](docs/TokensApi.md#updatetoken)                                   | **PATCH** /v1/tokens/{tokenId}                   |
| _WellKnownApi_    | [**getWellKnownDid**](docs/WellKnownApi.md#getwellknowndid)                        | **GET** /.well-known/did.json                    |
| _WellKnownApi_    | [**getWellKnownJwks**](docs/WellKnownApi.md#getwellknownjwks)                      | **GET** /.well-known/jwks.json                   |

### Documentation For Models

- [ActionForbiddenError](docs/ActionForbiddenError.md)
- [AddUserToProjectInput](docs/AddUserToProjectInput.md)
- [ConsumerAuthTokenEndpointInput](docs/ConsumerAuthTokenEndpointInput.md)
- [ConsumerAuthTokenEndpointOutput](docs/ConsumerAuthTokenEndpointOutput.md)
- [CorsConsumerAuthTokenEndpointOK](docs/CorsConsumerAuthTokenEndpointOK.md)
- [CorsGrantAccessVfsOK](docs/CorsGrantAccessVfsOK.md)
- [CorsUpdateAccessVfsOK](docs/CorsUpdateAccessVfsOK.md)
- [CreateProjectInput](docs/CreateProjectInput.md)
- [CreateProjectScopedTokenInput](docs/CreateProjectScopedTokenInput.md)
- [CreateProjectScopedTokenOutput](docs/CreateProjectScopedTokenOutput.md)
- [CreateTokenInput](docs/CreateTokenInput.md)
- [DeleteAccessOutput](docs/DeleteAccessOutput.md)
- [GrantAccessInput](docs/GrantAccessInput.md)
- [GrantAccessOutput](docs/GrantAccessOutput.md)
- [InvalidDIDError](docs/InvalidDIDError.md)
- [InvalidJwtTokenError](docs/InvalidJwtTokenError.md)
- [InvalidParameterError](docs/InvalidParameterError.md)
- [JsonWebKeyDto](docs/JsonWebKeyDto.md)
- [JsonWebKeySetDto](docs/JsonWebKeySetDto.md)
- [NotFoundError](docs/NotFoundError.md)
- [PolicyDto](docs/PolicyDto.md)
- [PolicyStatementDto](docs/PolicyStatementDto.md)
- [PrincipalCannotBeDeletedError](docs/PrincipalCannotBeDeletedError.md)
- [PrincipalDoesNotBelongToProjectError](docs/PrincipalDoesNotBelongToProjectError.md)
- [ProjectDto](docs/ProjectDto.md)
- [ProjectList](docs/ProjectList.md)
- [ProjectWithPolicyDto](docs/ProjectWithPolicyDto.md)
- [ProjectWithPolicyList](docs/ProjectWithPolicyList.md)
- [PublicKeyCannotBeResolvedFromDidError](docs/PublicKeyCannotBeResolvedFromDidError.md)
- [RightsEnum](docs/RightsEnum.md)
- [ServiceErrorResponse](docs/ServiceErrorResponse.md)
- [ServiceErrorResponseDetailsInner](docs/ServiceErrorResponseDetailsInner.md)
- [TokenDto](docs/TokenDto.md)
- [TokenList](docs/TokenList.md)
- [TokenPrivateKeyAuthenticationMethodDto](docs/TokenPrivateKeyAuthenticationMethodDto.md)
- [TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo](docs/TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.md)
- [TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf](docs/TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf.md)
- [TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1](docs/TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1.md)
- [TypedPrincipalId](docs/TypedPrincipalId.md)
- [UnauthorizedError](docs/UnauthorizedError.md)
- [UnexpectedError](docs/UnexpectedError.md)
- [UpdateAccessInput](docs/UpdateAccessInput.md)
- [UpdateAccessOutput](docs/UpdateAccessOutput.md)
- [UpdateProjectInput](docs/UpdateProjectInput.md)
- [UpdateTokenInput](docs/UpdateTokenInput.md)
- [UpdateTokenPrivateKeyAuthenticationMethodDto](docs/UpdateTokenPrivateKeyAuthenticationMethodDto.md)
- [UserDto](docs/UserDto.md)
- [UserList](docs/UserList.md)
- [WhoamiDto](docs/WhoamiDto.md)

<a id="documentation-for-authorization"></a>

## Documentation For Authorization

Authentication schemes defined for the API:
<a id="HeritageTokenAuth"></a>

### HeritageTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

<a id="UserTokenAuth"></a>

### UserTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

<a id="ProjectTokenAuth"></a>

### ProjectTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

<a id="ConsumerTokenAuth"></a>

### ConsumerTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

#### Obtaining auth token

💡 To create personal access token (PAT), use Affinidi CLI's [create-token](https://github.com/affinidi/affinidi-cli/blob/main/docs/token.md#affinidi-token-create-token) command.

Login to your Affinidi Vault.

```bash
affinidi login
```

Check for command details if you want to set optional passphrase and keyId:

```bash
affinidi token --help
```

Create PAT:

```bash
affinidi token create-token -n YourTokenName -g -w --no-input
```

This command will return you variables to initialize AuthProvider as required below.

```ts
import { SomeClassApi, Configuration } from '@affinidi-tdk/iam-client'
import { AuthProvider } from '@affinidi-tdk/auth-provider'

const authProvider = new AuthProvider({ tokenId, privateKey, projectId })

const api = new SomeClassApi(
  new Configuration({
    apiKey: authProvider.fetchProjectScopedToken.bind(authProvider),
  }),
)

await api.oneOfMethods()
```
