# affinidi_tdk_login_configuration_client (EXPERIMENTAL)

Affinidi TDK dart client for Affinidi LOGIN CONFIGURATION

## Requirements

- Dart 2.15.0+
- Dio 5.0.0+ (https://pub.dev/packages/dio)

## Installation & Usage

### pub.dev

To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_login_configuration_client: ^1.0.0
```

### Github

This Dart package is published to Github, please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_login_configuration_client:
    git:
      url: https://github.com/affinidi/affinidi-tdk.git
      ref: main
      path: clients/dart/login_configuration_client
```

### Local development

To use the package from your local drive, please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_login_configuration_client:
    path: /path/to/affinidi_tdk_login_configuration_client
```

### Install dependencies

```bash
dart pub get
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:affinidi_tdk_login_configuration_client/affinidi_tdk_login_configuration_client.dart';


final api = AffinidiTdkLoginConfigurationClient().getAllowListApi();
final GroupNamesInput groupNamesInput = ; // GroupNamesInput | List of group names as input

try {
    api.allowGroups(groupNamesInput);
} catch on DioException (e) {
    print("Exception when calling AllowListApi->allowGroups: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/vpa*

| Class                                         | Method                                                                                                                             | HTTP request                                                           | Description                                           |
| --------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- | ----------------------------------------------------- |
| [_AllowListApi_](doc/AllowListApi.md)         | [**allowGroups**](doc/AllowListApi.md#allowgroups)                                                                                 | **POST** /v1/allow-list/groups/add                                     |
| [_AllowListApi_](doc/AllowListApi.md)         | [**disallowGroups**](doc/AllowListApi.md#disallowgroups)                                                                           | **POST** /v1/allow-list/groups/remove                                  |
| [_AllowListApi_](doc/AllowListApi.md)         | [**listAllowedGroups**](doc/AllowListApi.md#listallowedgroups)                                                                     | **GET** /v1/allow-list/groups                                          |
| [_ConfigurationApi_](doc/ConfigurationApi.md) | [**createLoginConfigurations**](doc/ConfigurationApi.md#createloginconfigurations)                                                 | **POST** /v1/login/configurations                                      | Create a new login configuration                      |
| [_ConfigurationApi_](doc/ConfigurationApi.md) | [**deleteLoginConfigurationsById**](doc/ConfigurationApi.md#deleteloginconfigurationsbyid)                                         | **DELETE** /v1/login/configurations/{configurationId}                  | Delete login configurations by ID                     |
| [_ConfigurationApi_](doc/ConfigurationApi.md) | [**getClientMetadataByClientId**](doc/ConfigurationApi.md#getclientmetadatabyclientid)                                             | **GET** /v1/login/configurations/metadata/{clientId}                   | Get Client Metadata By OAuth 2.0 Client ID            |
| [_ConfigurationApi_](doc/ConfigurationApi.md) | [**getLoginConfigurationsById**](doc/ConfigurationApi.md#getloginconfigurationsbyid)                                               | **GET** /v1/login/configurations/{configurationId}                     | Get login configuration by ID                         |
| [_ConfigurationApi_](doc/ConfigurationApi.md) | [**listLoginConfigurations**](doc/ConfigurationApi.md#listloginconfigurations)                                                     | **GET** /v1/login/configurations                                       | List login configurations                             |
| [_ConfigurationApi_](doc/ConfigurationApi.md) | [**updateLoginConfigurationsById**](doc/ConfigurationApi.md#updateloginconfigurationsbyid)                                         | **PATCH** /v1/login/configurations/{configurationId}                   | Update login configurations by ID                     |
| [_DenyListApi_](doc/DenyListApi.md)           | [**blockGroups**](doc/DenyListApi.md#blockgroups)                                                                                  | **POST** /v1/deny-list/groups/add                                      |
| [_DenyListApi_](doc/DenyListApi.md)           | [**blockUsers**](doc/DenyListApi.md#blockusers)                                                                                    | **POST** /v1/deny-list/users/add                                       |
| [_DenyListApi_](doc/DenyListApi.md)           | [**listBlockedGroups**](doc/DenyListApi.md#listblockedgroups)                                                                      | **GET** /v1/deny-list/groups                                           |
| [_DenyListApi_](doc/DenyListApi.md)           | [**listBlockedUsers**](doc/DenyListApi.md#listblockedusers)                                                                        | **GET** /v1/deny-list/users                                            |
| [_DenyListApi_](doc/DenyListApi.md)           | [**unblockGroups**](doc/DenyListApi.md#unblockgroups)                                                                              | **POST** /v1/deny-list/groups/remove                                   |
| [_DenyListApi_](doc/DenyListApi.md)           | [**unblockUsers**](doc/DenyListApi.md#unblockusers)                                                                                | **POST** /v1/deny-list/users/remove                                    |
| [_GroupApi_](doc/GroupApi.md)                 | [**addUserToGroup**](doc/GroupApi.md#addusertogroup)                                                                               | **POST** /v1/groups/{groupName}/users                                  |
| [_GroupApi_](doc/GroupApi.md)                 | [**createGroup**](doc/GroupApi.md#creategroup)                                                                                     | **POST** /v1/groups                                                    |
| [_GroupApi_](doc/GroupApi.md)                 | [**deleteGroup**](doc/GroupApi.md#deletegroup)                                                                                     | **DELETE** /v1/groups/{groupName}                                      |
| [_GroupApi_](doc/GroupApi.md)                 | [**getGroupById**](doc/GroupApi.md#getgroupbyid)                                                                                   | **GET** /v1/groups/{groupName}                                         |
| [_GroupApi_](doc/GroupApi.md)                 | [**listGroupUserMappings**](doc/GroupApi.md#listgroupusermappings)                                                                 | **GET** /v1/groups/{groupName}/users                                   |
| [_GroupApi_](doc/GroupApi.md)                 | [**listGroups**](doc/GroupApi.md#listgroups)                                                                                       | **GET** /v1/groups                                                     |
| [_GroupApi_](doc/GroupApi.md)                 | [**removeUserFromGroup**](doc/GroupApi.md#removeuserfromgroup)                                                                     | **DELETE** /v1/groups/{groupName}/users                                |
| [_IdpApi_](doc/IdpApi.md)                     | [**v1LoginProjectProjectIdOauth2AuthGet**](doc/IdpApi.md#v1loginprojectprojectidoauth2authget)                                     | **GET** /v1/login/project/{projectId}/oauth2/auth                      | OAuth 2.0 Authorize Endpoint                          |
| [_IdpApi_](doc/IdpApi.md)                     | [**v1LoginProjectProjectIdOauth2RevokePost**](doc/IdpApi.md#v1loginprojectprojectidoauth2revokepost)                               | **POST** /v1/login/project/{projectId}/oauth2/revoke                   | Revoke OAuth 2.0 Access or Refresh Token              |
| [_IdpApi_](doc/IdpApi.md)                     | [**v1LoginProjectProjectIdOauth2SessionsLogoutGet**](doc/IdpApi.md#v1loginprojectprojectidoauth2sessionslogoutget)                 | **GET** /v1/login/project/{projectId}/oauth2/sessions/logout           | OpenID Connect Front- and Back-channel Enabled Logout |
| [_IdpApi_](doc/IdpApi.md)                     | [**v1LoginProjectProjectIdOauth2TokenPost**](doc/IdpApi.md#v1loginprojectprojectidoauth2tokenpost)                                 | **POST** /v1/login/project/{projectId}/oauth2/token                    | The OAuth 2.0 Token Endpoint                          |
| [_IdpApi_](doc/IdpApi.md)                     | [**v1LoginProjectProjectIdUserinfoGet**](doc/IdpApi.md#v1loginprojectprojectiduserinfoget)                                         | **GET** /v1/login/project/{projectId}/userinfo                         | OpenID Connect Userinfo                               |
| [_IdpApi_](doc/IdpApi.md)                     | [**v1LoginProjectProjectIdWellKnownJwksJsonGet**](doc/IdpApi.md#v1loginprojectprojectidwellknownjwksjsonget)                       | **GET** /v1/login/project/{projectId}/.well-known/jwks.json            | Discover Well-Known JSON Web Keys                     |
| [_IdpApi_](doc/IdpApi.md)                     | [**v1LoginProjectProjectIdWellKnownOpenidConfigurationGet**](doc/IdpApi.md#v1loginprojectprojectidwellknownopenidconfigurationget) | **GET** /v1/login/project/{projectId}/.well-known/openid-configuration | OpenID Connect Discovery                              |

## Documentation For Models

- [ActionForbiddenError](doc/ActionForbiddenError.md)
- [AddUserToGroupInput](doc/AddUserToGroupInput.md)
- [BlockedUsers](doc/BlockedUsers.md)
- [BlockedUsersInput](doc/BlockedUsersInput.md)
- [CorsLoginSessionAcceptResponseOK](doc/CorsLoginSessionAcceptResponseOK.md)
- [CorsLoginSessionForIdpOK](doc/CorsLoginSessionForIdpOK.md)
- [CorsLoginSessionRejectResponseOK](doc/CorsLoginSessionRejectResponseOK.md)
- [CreateGroupInput](doc/CreateGroupInput.md)
- [CreateHydraNetworkError](doc/CreateHydraNetworkError.md)
- [CreateLoginConfigurationInput](doc/CreateLoginConfigurationInput.md)
- [CreateLoginConfigurationOutput](doc/CreateLoginConfigurationOutput.md)
- [CreateLoginConfigurationOutputAuth](doc/CreateLoginConfigurationOutputAuth.md)
- [CreateLoginConfigurations400Response](doc/CreateLoginConfigurations400Response.md)
- [CreateProjectNetworkError](doc/CreateProjectNetworkError.md)
- [ErrorOAuth2](doc/ErrorOAuth2.md)
- [GetUserInfo](doc/GetUserInfo.md)
- [GroupDto](doc/GroupDto.md)
- [GroupNames](doc/GroupNames.md)
- [GroupNamesInput](doc/GroupNamesInput.md)
- [GroupUserMappingDto](doc/GroupUserMappingDto.md)
- [GroupUserMappingsList](doc/GroupUserMappingsList.md)
- [GroupsList](doc/GroupsList.md)
- [GroupsPerUserLimitExceededError](doc/GroupsPerUserLimitExceededError.md)
- [IdTokenMappingItem](doc/IdTokenMappingItem.md)
- [InlineObject](doc/InlineObject.md)
- [InvalidClaimContextError](doc/InvalidClaimContextError.md)
- [InvalidGroupsError](doc/InvalidGroupsError.md)
- [InvalidParameterError](doc/InvalidParameterError.md)
- [InvalidParameterErrorDetailsInner](doc/InvalidParameterErrorDetailsInner.md)
- [InvalidVPTokenCreationTimeError](doc/InvalidVPTokenCreationTimeError.md)
- [JsonWebKey](doc/JsonWebKey.md)
- [JsonWebKeyKeysInner](doc/JsonWebKeyKeysInner.md)
- [ListLoginConfigurationOutput](doc/ListLoginConfigurationOutput.md)
- [LoginConfigurationClientMetadataInput](doc/LoginConfigurationClientMetadataInput.md)
- [LoginConfigurationClientMetadataOutput](doc/LoginConfigurationClientMetadataOutput.md)
- [LoginConfigurationObject](doc/LoginConfigurationObject.md)
- [LoginConfigurationReadInvalidClientIdError](doc/LoginConfigurationReadInvalidClientIdError.md)
- [LoginSessionDto](doc/LoginSessionDto.md)
- [LoginSessionDtoAuthorizationRequest](doc/LoginSessionDtoAuthorizationRequest.md)
- [LoginSessionForIDPInput](doc/LoginSessionForIDPInput.md)
- [NotFoundError](doc/NotFoundError.md)
- [OAuth2Token](doc/OAuth2Token.md)
- [OAuth2TokenAuthorizationDetailsInner](doc/OAuth2TokenAuthorizationDetailsInner.md)
- [OIDCConfig](doc/OIDCConfig.md)
- [OIDCConfigCredentialsSupportedDraft00Inner](doc/OIDCConfigCredentialsSupportedDraft00Inner.md)
- [RedirectResponse](doc/RedirectResponse.md)
- [RemoveUserFromGroupInput](doc/RemoveUserFromGroupInput.md)
- [ResourceCreationError](doc/ResourceCreationError.md)
- [ServiceErrorResponse](doc/ServiceErrorResponse.md)
- [ServiceErrorResponseDetailsInner](doc/ServiceErrorResponseDetailsInner.md)
- [TokenEndpointAuthMethod](doc/TokenEndpointAuthMethod.md)
- [UnauthorizedError](doc/UnauthorizedError.md)
- [UpdateLoginConfigurationInput](doc/UpdateLoginConfigurationInput.md)
- [VPTokenValidationError](doc/VPTokenValidationError.md)

## Documentation For Authorization

Authentication schemes defined for the API:

### AwsSigV4

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

### ApiKey

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header

### bearerAuth

- **Type**: HTTP Bearer Token authentication (JWT)

### ConsumerTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

### UserTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

### ProjectTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

## Author

info@affinidi.com
