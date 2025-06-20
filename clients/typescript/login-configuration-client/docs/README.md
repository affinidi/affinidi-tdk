# Documentation for OidcVpAdapterBackend

<a name="documentation-for-api-endpoints"></a>

## Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/vpa*

| Class              | Method                                                                                                                              | HTTP request                                                           | Description                                           |
| ------------------ | ----------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- | ----------------------------------------------------- |
| _AllowListApi_     | [**allowGroups**](Apis/AllowListApi.md#allowgroups)                                                                                 | **POST** /v1/allow-list/groups/add                                     | Allow Single or Multiple Groups                       |
| _AllowListApi_     | [**disallowGroups**](Apis/AllowListApi.md#disallowgroups)                                                                           | **POST** /v1/allow-list/groups/remove                                  | Disallow Single or Multiple Groups                    |
| _AllowListApi_     | [**listAllowedGroups**](Apis/AllowListApi.md#listallowedgroups)                                                                     | **GET** /v1/allow-list/groups                                          | Get Allowed Groups                                    |
| _ConfigurationApi_ | [**createLoginConfigurations**](Apis/ConfigurationApi.md#createloginconfigurations)                                                 | **POST** /v1/login/configurations                                      | Create a new login configuration                      |
| _ConfigurationApi_ | [**deleteLoginConfigurationsById**](Apis/ConfigurationApi.md#deleteloginconfigurationsbyid)                                         | **DELETE** /v1/login/configurations/{configurationId}                  | Delete login configurations by ID                     |
| _ConfigurationApi_ | [**getClientMetadataByClientId**](Apis/ConfigurationApi.md#getclientmetadatabyclientid)                                             | **GET** /v1/login/configurations/metadata/{clientId}                   | Get Client Metadata By OAuth 2.0 Client ID            |
| _ConfigurationApi_ | [**getLoginConfigurationsById**](Apis/ConfigurationApi.md#getloginconfigurationsbyid)                                               | **GET** /v1/login/configurations/{configurationId}                     | Get login configuration by ID                         |
| _ConfigurationApi_ | [**listLoginConfigurations**](Apis/ConfigurationApi.md#listloginconfigurations)                                                     | **GET** /v1/login/configurations                                       | List login configurations                             |
| _ConfigurationApi_ | [**updateLoginConfigurationsById**](Apis/ConfigurationApi.md#updateloginconfigurationsbyid)                                         | **PATCH** /v1/login/configurations/{configurationId}                   | Update login configurations by ID                     |
| _DenyListApi_      | [**blockGroups**](Apis/DenyListApi.md#blockgroups)                                                                                  | **POST** /v1/deny-list/groups/add                                      | Block Single or Multiple Groups                       |
| _DenyListApi_      | [**blockUsers**](Apis/DenyListApi.md#blockusers)                                                                                    | **POST** /v1/deny-list/users/add                                       | Block Single or Multiple user ids                     |
| _DenyListApi_      | [**listBlockedGroups**](Apis/DenyListApi.md#listblockedgroups)                                                                      | **GET** /v1/deny-list/groups                                           | Get Blocked Groups                                    |
| _DenyListApi_      | [**listBlockedUsers**](Apis/DenyListApi.md#listblockedusers)                                                                        | **GET** /v1/deny-list/users                                            | Get List of Blocked Users                             |
| _DenyListApi_      | [**unblockGroups**](Apis/DenyListApi.md#unblockgroups)                                                                              | **POST** /v1/deny-list/groups/remove                                   | Unblock Single or Multiple Groups                     |
| _DenyListApi_      | [**unblockUsers**](Apis/DenyListApi.md#unblockusers)                                                                                | **POST** /v1/deny-list/users/remove                                    | Unblock Single or Multiple user ids                   |
| _GroupApi_         | [**addUserToGroup**](Apis/GroupApi.md#addusertogroup)                                                                               | **POST** /v1/groups/{groupName}/users                                  |                                                       |
| _GroupApi_         | [**createGroup**](Apis/GroupApi.md#creategroup)                                                                                     | **POST** /v1/groups                                                    |                                                       |
| _GroupApi_         | [**deleteGroup**](Apis/GroupApi.md#deletegroup)                                                                                     | **DELETE** /v1/groups/{groupName}                                      |                                                       |
| _GroupApi_         | [**getGroupById**](Apis/GroupApi.md#getgroupbyid)                                                                                   | **GET** /v1/groups/{groupName}                                         |                                                       |
| _GroupApi_         | [**listGroupUserMappings**](Apis/GroupApi.md#listgroupusermappings)                                                                 | **GET** /v1/groups/{groupName}/users                                   |                                                       |
| _GroupApi_         | [**listGroups**](Apis/GroupApi.md#listgroups)                                                                                       | **GET** /v1/groups                                                     |                                                       |
| _GroupApi_         | [**removeUserFromGroup**](Apis/GroupApi.md#removeuserfromgroup)                                                                     | **DELETE** /v1/groups/{groupName}/users                                |                                                       |
| _IdpApi_           | [**v1LoginProjectProjectIdOauth2AuthGet**](Apis/IdpApi.md#v1loginprojectprojectidoauth2authget)                                     | **GET** /v1/login/project/{projectId}/oauth2/auth                      | OAuth 2.0 Authorize Endpoint                          |
| _IdpApi_           | [**v1LoginProjectProjectIdOauth2RevokePost**](Apis/IdpApi.md#v1loginprojectprojectidoauth2revokepost)                               | **POST** /v1/login/project/{projectId}/oauth2/revoke                   | Revoke OAuth 2.0 Access or Refresh Token              |
| _IdpApi_           | [**v1LoginProjectProjectIdOauth2SessionsLogoutGet**](Apis/IdpApi.md#v1loginprojectprojectidoauth2sessionslogoutget)                 | **GET** /v1/login/project/{projectId}/oauth2/sessions/logout           | OpenID Connect Front- and Back-channel Enabled Logout |
| _IdpApi_           | [**v1LoginProjectProjectIdOauth2TokenPost**](Apis/IdpApi.md#v1loginprojectprojectidoauth2tokenpost)                                 | **POST** /v1/login/project/{projectId}/oauth2/token                    | The OAuth 2.0 Token Endpoint                          |
| _IdpApi_           | [**v1LoginProjectProjectIdUserinfoGet**](Apis/IdpApi.md#v1loginprojectprojectiduserinfoget)                                         | **GET** /v1/login/project/{projectId}/userinfo                         | OpenID Connect Userinfo                               |
| _IdpApi_           | [**v1LoginProjectProjectIdWellKnownJwksJsonGet**](Apis/IdpApi.md#v1loginprojectprojectidwellknownjwksjsonget)                       | **GET** /v1/login/project/{projectId}/.well-known/jwks.json            | Discover Well-Known JSON Web Keys                     |
| _IdpApi_           | [**v1LoginProjectProjectIdWellKnownOpenidConfigurationGet**](Apis/IdpApi.md#v1loginprojectprojectidwellknownopenidconfigurationget) | **GET** /v1/login/project/{projectId}/.well-known/openid-configuration | OpenID Connect Discovery                              |

<a name="documentation-for-models"></a>

## Documentation for Models

- [ActionForbiddenError](./Models/ActionForbiddenError.md)
- [AddUserToGroupInput](./Models/AddUserToGroupInput.md)
- [BlockedUsers](./Models/BlockedUsers.md)
- [BlockedUsersInput](./Models/BlockedUsersInput.md)
- [CorsLoginSessionAcceptResponseOK](./Models/CorsLoginSessionAcceptResponseOK.md)
- [CorsLoginSessionForIdpOK](./Models/CorsLoginSessionForIdpOK.md)
- [CorsLoginSessionRejectResponseOK](./Models/CorsLoginSessionRejectResponseOK.md)
- [CreateGroupInput](./Models/CreateGroupInput.md)
- [CreateHydraNetworkError](./Models/CreateHydraNetworkError.md)
- [CreateLoginConfigurationInput](./Models/CreateLoginConfigurationInput.md)
- [CreateLoginConfigurationOutput](./Models/CreateLoginConfigurationOutput.md)
- [CreateLoginConfigurationOutput_auth](./Models/CreateLoginConfigurationOutput_auth.md)
- [CreateProjectNetworkError](./Models/CreateProjectNetworkError.md)
- [ErrorOAuth2](./Models/ErrorOAuth2.md)
- [GetUserInfo](./Models/GetUserInfo.md)
- [GroupDto](./Models/GroupDto.md)
- [GroupNames](./Models/GroupNames.md)
- [GroupNamesInput](./Models/GroupNamesInput.md)
- [GroupUserMappingDto](./Models/GroupUserMappingDto.md)
- [GroupUserMappingsList](./Models/GroupUserMappingsList.md)
- [GroupsList](./Models/GroupsList.md)
- [GroupsPerUserLimitExceededError](./Models/GroupsPerUserLimitExceededError.md)
- [IdTokenMappingItem](./Models/IdTokenMappingItem.md)
- [InvalidClaimContextError](./Models/InvalidClaimContextError.md)
- [InvalidGroupsError](./Models/InvalidGroupsError.md)
- [InvalidParameterError](./Models/InvalidParameterError.md)
- [InvalidParameterError_details_inner](./Models/InvalidParameterError_details_inner.md)
- [InvalidVPTokenCreationTimeError](./Models/InvalidVPTokenCreationTimeError.md)
- [JsonWebKey](./Models/JsonWebKey.md)
- [JsonWebKey_keys_inner](./Models/JsonWebKey_keys_inner.md)
- [ListLoginConfigurationOutput](./Models/ListLoginConfigurationOutput.md)
- [LoginConfigurationClientMetadataInput](./Models/LoginConfigurationClientMetadataInput.md)
- [LoginConfigurationClientMetadataOutput](./Models/LoginConfigurationClientMetadataOutput.md)
- [LoginConfigurationObject](./Models/LoginConfigurationObject.md)
- [LoginConfigurationReadInvalidClientIdError](./Models/LoginConfigurationReadInvalidClientIdError.md)
- [LoginSessionDto](./Models/LoginSessionDto.md)
- [LoginSessionDto_authorizationRequest](./Models/LoginSessionDto_authorizationRequest.md)
- [LoginSessionForIDPInput](./Models/LoginSessionForIDPInput.md)
- [LoginSessionRejectResponseInput](./Models/LoginSessionRejectResponseInput.md)
- [NotFoundError](./Models/NotFoundError.md)
- [OAuth2Token](./Models/OAuth2Token.md)
- [OAuth2Token_authorization_details_inner](./Models/OAuth2Token_authorization_details_inner.md)
- [OIDCConfig](./Models/OIDCConfig.md)
- [OIDCConfig_credentials_supported_draft_00_inner](./Models/OIDCConfig_credentials_supported_draft_00_inner.md)
- [RedirectResponse](./Models/RedirectResponse.md)
- [RemoveUserFromGroupInput](./Models/RemoveUserFromGroupInput.md)
- [ResourceCreationError](./Models/ResourceCreationError.md)
- [ServiceErrorResponse](./Models/ServiceErrorResponse.md)
- [ServiceErrorResponse_details_inner](./Models/ServiceErrorResponse_details_inner.md)
- [TokenEndpointAuthMethod](./Models/TokenEndpointAuthMethod.md)
- [UnauthorizedError](./Models/UnauthorizedError.md)
- [UpdateLoginConfigurationInput](./Models/UpdateLoginConfigurationInput.md)
- [VPTokenValidationError](./Models/VPTokenValidationError.md)
- [createLoginConfigurations_400_response](./Models/createLoginConfigurations_400_response.md)
- [inline_object](./Models/inline_object.md)

<a name="documentation-for-authorization"></a>

## Documentation for Authorization

<a name="AwsSigV4"></a>

### AwsSigV4

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

<a name="ApiKey"></a>

### ApiKey

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header

<a name="bearerAuth"></a>

### bearerAuth

- **Type**: HTTP Bearer Token authentication (JWT)

<a name="ConsumerTokenAuth"></a>

### ConsumerTokenAuth

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
