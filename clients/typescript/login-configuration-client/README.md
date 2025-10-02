## @affinidi-tdk/login-configuration-client@1.36.0

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
npm install @affinidi-tdk/login-configuration-client@1.36.0 --save
```

_unPublished (not recommended):_

```
npm install PATH_TO_GENERATED_PACKAGE --save
```

### Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/vpa*

| Class              | Method                                                                                                                              | HTTP request                                                           | Description                                           |
| ------------------ | ----------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- | ----------------------------------------------------- |
| _AllowListApi_     | [**allowGroups**](docs/AllowListApi.md#allowgroups)                                                                                 | **POST** /v1/allow-list/groups/add                                     |
| _AllowListApi_     | [**disallowGroups**](docs/AllowListApi.md#disallowgroups)                                                                           | **POST** /v1/allow-list/groups/remove                                  |
| _AllowListApi_     | [**listAllowedGroups**](docs/AllowListApi.md#listallowedgroups)                                                                     | **GET** /v1/allow-list/groups                                          |
| _ConfigurationApi_ | [**createLoginConfigurations**](docs/ConfigurationApi.md#createloginconfigurations)                                                 | **POST** /v1/login/configurations                                      | Create a new login configuration                      |
| _ConfigurationApi_ | [**deleteLoginConfigurationsById**](docs/ConfigurationApi.md#deleteloginconfigurationsbyid)                                         | **DELETE** /v1/login/configurations/{configurationId}                  | Delete login configurations by ID                     |
| _ConfigurationApi_ | [**getClientMetadataByClientId**](docs/ConfigurationApi.md#getclientmetadatabyclientid)                                             | **GET** /v1/login/configurations/metadata/{clientId}                   | Get Client Metadata By OAuth 2.0 Client ID            |
| _ConfigurationApi_ | [**getLoginConfigurationsById**](docs/ConfigurationApi.md#getloginconfigurationsbyid)                                               | **GET** /v1/login/configurations/{configurationId}                     | Get login configuration by ID                         |
| _ConfigurationApi_ | [**listLoginConfigurations**](docs/ConfigurationApi.md#listloginconfigurations)                                                     | **GET** /v1/login/configurations                                       | List login configurations                             |
| _ConfigurationApi_ | [**updateLoginConfigurationsById**](docs/ConfigurationApi.md#updateloginconfigurationsbyid)                                         | **PATCH** /v1/login/configurations/{configurationId}                   | Update login configurations by ID                     |
| _DenyListApi_      | [**blockGroups**](docs/DenyListApi.md#blockgroups)                                                                                  | **POST** /v1/deny-list/groups/add                                      |
| _DenyListApi_      | [**blockUsers**](docs/DenyListApi.md#blockusers)                                                                                    | **POST** /v1/deny-list/users/add                                       |
| _DenyListApi_      | [**listBlockedGroups**](docs/DenyListApi.md#listblockedgroups)                                                                      | **GET** /v1/deny-list/groups                                           |
| _DenyListApi_      | [**listBlockedUsers**](docs/DenyListApi.md#listblockedusers)                                                                        | **GET** /v1/deny-list/users                                            |
| _DenyListApi_      | [**unblockGroups**](docs/DenyListApi.md#unblockgroups)                                                                              | **POST** /v1/deny-list/groups/remove                                   |
| _DenyListApi_      | [**unblockUsers**](docs/DenyListApi.md#unblockusers)                                                                                | **POST** /v1/deny-list/users/remove                                    |
| _GroupApi_         | [**addUserToGroup**](docs/GroupApi.md#addusertogroup)                                                                               | **POST** /v1/groups/{groupName}/users                                  |
| _GroupApi_         | [**createGroup**](docs/GroupApi.md#creategroup)                                                                                     | **POST** /v1/groups                                                    |
| _GroupApi_         | [**deleteGroup**](docs/GroupApi.md#deletegroup)                                                                                     | **DELETE** /v1/groups/{groupName}                                      |
| _GroupApi_         | [**getGroupById**](docs/GroupApi.md#getgroupbyid)                                                                                   | **GET** /v1/groups/{groupName}                                         |
| _GroupApi_         | [**listGroupUserMappings**](docs/GroupApi.md#listgroupusermappings)                                                                 | **GET** /v1/groups/{groupName}/users                                   |
| _GroupApi_         | [**listGroups**](docs/GroupApi.md#listgroups)                                                                                       | **GET** /v1/groups                                                     |
| _GroupApi_         | [**removeUserFromGroup**](docs/GroupApi.md#removeuserfromgroup)                                                                     | **DELETE** /v1/groups/{groupName}/users                                |
| _IdpApi_           | [**v1LoginProjectProjectIdOauth2AuthGet**](docs/IdpApi.md#v1loginprojectprojectidoauth2authget)                                     | **GET** /v1/login/project/{projectId}/oauth2/auth                      | OAuth 2.0 Authorize Endpoint                          |
| _IdpApi_           | [**v1LoginProjectProjectIdOauth2RevokePost**](docs/IdpApi.md#v1loginprojectprojectidoauth2revokepost)                               | **POST** /v1/login/project/{projectId}/oauth2/revoke                   | Revoke OAuth 2.0 Access or Refresh Token              |
| _IdpApi_           | [**v1LoginProjectProjectIdOauth2SessionsLogoutGet**](docs/IdpApi.md#v1loginprojectprojectidoauth2sessionslogoutget)                 | **GET** /v1/login/project/{projectId}/oauth2/sessions/logout           | OpenID Connect Front- and Back-channel Enabled Logout |
| _IdpApi_           | [**v1LoginProjectProjectIdOauth2TokenPost**](docs/IdpApi.md#v1loginprojectprojectidoauth2tokenpost)                                 | **POST** /v1/login/project/{projectId}/oauth2/token                    | The OAuth 2.0 Token Endpoint                          |
| _IdpApi_           | [**v1LoginProjectProjectIdUserinfoGet**](docs/IdpApi.md#v1loginprojectprojectiduserinfoget)                                         | **GET** /v1/login/project/{projectId}/userinfo                         | OpenID Connect Userinfo                               |
| _IdpApi_           | [**v1LoginProjectProjectIdWellKnownJwksJsonGet**](docs/IdpApi.md#v1loginprojectprojectidwellknownjwksjsonget)                       | **GET** /v1/login/project/{projectId}/.well-known/jwks.json            | Discover Well-Known JSON Web Keys                     |
| _IdpApi_           | [**v1LoginProjectProjectIdWellKnownOpenidConfigurationGet**](docs/IdpApi.md#v1loginprojectprojectidwellknownopenidconfigurationget) | **GET** /v1/login/project/{projectId}/.well-known/openid-configuration | OpenID Connect Discovery                              |

### Documentation For Models

- [ActionForbiddenError](docs/ActionForbiddenError.md)
- [AddUserToGroupInput](docs/AddUserToGroupInput.md)
- [AuthorizationRequestDcql](docs/AuthorizationRequestDcql.md)
- [AuthorizationRequestPex](docs/AuthorizationRequestPex.md)
- [BlockedUsers](docs/BlockedUsers.md)
- [BlockedUsersInput](docs/BlockedUsersInput.md)
- [CorsLoginSessionAcceptResponseOK](docs/CorsLoginSessionAcceptResponseOK.md)
- [CorsLoginSessionForIdpOK](docs/CorsLoginSessionForIdpOK.md)
- [CorsLoginSessionRejectResponseOK](docs/CorsLoginSessionRejectResponseOK.md)
- [CreateGroupInput](docs/CreateGroupInput.md)
- [CreateHydraNetworkError](docs/CreateHydraNetworkError.md)
- [CreateLoginConfigurationInput](docs/CreateLoginConfigurationInput.md)
- [CreateLoginConfigurationOutput](docs/CreateLoginConfigurationOutput.md)
- [CreateLoginConfigurationOutputAuth](docs/CreateLoginConfigurationOutputAuth.md)
- [CreateLoginConfigurations400Response](docs/CreateLoginConfigurations400Response.md)
- [CreateProjectNetworkError](docs/CreateProjectNetworkError.md)
- [ErrorOAuth2](docs/ErrorOAuth2.md)
- [GetUserInfo](docs/GetUserInfo.md)
- [GroupDto](docs/GroupDto.md)
- [GroupNames](docs/GroupNames.md)
- [GroupNamesInput](docs/GroupNamesInput.md)
- [GroupUserMappingDto](docs/GroupUserMappingDto.md)
- [GroupUserMappingsList](docs/GroupUserMappingsList.md)
- [GroupsList](docs/GroupsList.md)
- [GroupsPerUserLimitExceededError](docs/GroupsPerUserLimitExceededError.md)
- [IdTokenMappingItem](docs/IdTokenMappingItem.md)
- [InlineObject](docs/InlineObject.md)
- [InvalidClaimContextError](docs/InvalidClaimContextError.md)
- [InvalidGroupsError](docs/InvalidGroupsError.md)
- [InvalidParameterError](docs/InvalidParameterError.md)
- [InvalidParameterErrorDetailsInner](docs/InvalidParameterErrorDetailsInner.md)
- [InvalidVPTokenCreationTimeError](docs/InvalidVPTokenCreationTimeError.md)
- [JsonWebKey](docs/JsonWebKey.md)
- [JsonWebKeyKeysInner](docs/JsonWebKeyKeysInner.md)
- [ListLoginConfigurationOutput](docs/ListLoginConfigurationOutput.md)
- [LoginConfigurationClientMetadataInput](docs/LoginConfigurationClientMetadataInput.md)
- [LoginConfigurationClientMetadataOutput](docs/LoginConfigurationClientMetadataOutput.md)
- [LoginConfigurationObject](docs/LoginConfigurationObject.md)
- [LoginConfigurationReadInvalidClientIdError](docs/LoginConfigurationReadInvalidClientIdError.md)
- [LoginSessionAcceptResponseInput](docs/LoginSessionAcceptResponseInput.md)
- [LoginSessionAcceptResponseOutput](docs/LoginSessionAcceptResponseOutput.md)
- [LoginSessionDto](docs/LoginSessionDto.md)
- [LoginSessionDtoAuthorizationRequest](docs/LoginSessionDtoAuthorizationRequest.md)
- [LoginSessionForIDPInput](docs/LoginSessionForIDPInput.md)
- [LoginSessionRejectResponseInput](docs/LoginSessionRejectResponseInput.md)
- [LoginSessionRejectResponseOutput](docs/LoginSessionRejectResponseOutput.md)
- [NotFoundError](docs/NotFoundError.md)
- [OAuth2Token](docs/OAuth2Token.md)
- [OAuth2TokenAuthorizationDetailsInner](docs/OAuth2TokenAuthorizationDetailsInner.md)
- [OIDCConfig](docs/OIDCConfig.md)
- [OIDCConfigCredentialsSupportedDraft00Inner](docs/OIDCConfigCredentialsSupportedDraft00Inner.md)
- [RedirectResponse](docs/RedirectResponse.md)
- [RemoveUserFromGroupInput](docs/RemoveUserFromGroupInput.md)
- [ResourceCreationError](docs/ResourceCreationError.md)
- [ServiceErrorResponse](docs/ServiceErrorResponse.md)
- [ServiceErrorResponseDetailsInner](docs/ServiceErrorResponseDetailsInner.md)
- [TokenEndpointAuthMethod](docs/TokenEndpointAuthMethod.md)
- [UnauthorizedError](docs/UnauthorizedError.md)
- [UpdateLoginConfigurationInput](docs/UpdateLoginConfigurationInput.md)
- [VPTokenValidationError](docs/VPTokenValidationError.md)

<a id="documentation-for-authorization"></a>

## Documentation For Authorization

Authentication schemes defined for the API:
<a id="AwsSigV4"></a>

### AwsSigV4

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

<a id="ApiKey"></a>

### ApiKey

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header

<a id="bearerAuth"></a>

### bearerAuth

- **Type**: Bearer authentication (JWT)

<a id="ConsumerTokenAuth"></a>

### ConsumerTokenAuth

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
import {
  SomeClassApi,
  Configuration,
} from '@affinidi-tdk/login-configuration-client'
import { AuthProvider } from '@affinidi-tdk/auth-provider'

const authProvider = new AuthProvider({ tokenId, privateKey, projectId })

const api = new SomeClassApi(
  new Configuration({
    apiKey: authProvider.fetchProjectScopedToken.bind(authProvider),
  }),
)

await api.oneOfMethods()
```
