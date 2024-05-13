# Documentation for OidcVpAdapterBackend

<a name="documentation-for-api-endpoints"></a>

## Documentation for API Endpoints

All URIs are relative to _http://localhost_

| Class | Method | HTTP request | Description |
| ----- | ------ | ------------ | ----------- |

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
- [IdTokenMapping_inner](./Models/IdTokenMapping_inner.md)
- [InvalidClaimContextError](./Models/InvalidClaimContextError.md)
- [InvalidGroupsError](./Models/InvalidGroupsError.md)
- [InvalidParameterError](./Models/InvalidParameterError.md)
- [InvalidParameterError_details_inner](./Models/InvalidParameterError_details_inner.md)
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
