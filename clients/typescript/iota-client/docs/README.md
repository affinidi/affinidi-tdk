# Documentation for IotaService

<a name="documentation-for-api-endpoints"></a>

## Documentation for API Endpoints

All URIs are relative to _http://localhost_

| Class               | Method                                                                                     | HTTP request                                                               | Description                                       |
| ------------------- | ------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------- | ------------------------------------------------- |
| _CallbackApi_       | [**iotOIDC4VPCallback**](Apis/CallbackApi.md#iotoidc4vpcallback)                           | **POST** /v1/callback                                                      | Processes the callback for OIDC4VP flows          |
| _ConfigurationsApi_ | [**createIotaConfiguration**](Apis/ConfigurationsApi.md#createiotaconfiguration)           | **POST** /v1/configurations                                                |                                                   |
| _ConfigurationsApi_ | [**deleteIotaConfigurationById**](Apis/ConfigurationsApi.md#deleteiotaconfigurationbyid)   | **DELETE** /v1/configurations/{configurationId}                            |                                                   |
| _ConfigurationsApi_ | [**getIotaConfigurationById**](Apis/ConfigurationsApi.md#getiotaconfigurationbyid)         | **GET** /v1/configurations/{configurationId}                               |                                                   |
| _ConfigurationsApi_ | [**getIotaConfigurationMetaData**](Apis/ConfigurationsApi.md#getiotaconfigurationmetadata) | **GET** /v1/projects/{projectId}/configurations/{configurationId}/metadata |                                                   |
| _ConfigurationsApi_ | [**listIotaConfigurations**](Apis/ConfigurationsApi.md#listiotaconfigurations)             | **GET** /v1/configurations                                                 |                                                   |
| _ConfigurationsApi_ | [**updateIotaConfigurationById**](Apis/ConfigurationsApi.md#updateiotaconfigurationbyid)   | **PATCH** /v1/configurations/{configurationId}                             |                                                   |
| _DefaultApi_        | [**listLoggedConsents**](Apis/DefaultApi.md#listloggedconsents)                            | **GET** /v1/logged-consents                                                | returns a list of logged consents for the project |
| _IotaApi_           | [**awsExchangeCredentials**](Apis/IotaApi.md#awsexchangecredentials)                       | **POST** /v1/aws-exchange-credentials                                      | It exchanges limited token into cognito           |

<a name="documentation-for-models"></a>

## Documentation for Models

- [AlreadyExistsError](./Models/AlreadyExistsError.md)
- [AwsExchangeCredentials](./Models/AwsExchangeCredentials.md)
- [AwsExchangeCredentialsOK](./Models/AwsExchangeCredentialsOK.md)
- [AwsExchangeCredentialsOK_credentials](./Models/AwsExchangeCredentialsOK_credentials.md)
- [CallbackInput](./Models/CallbackInput.md)
- [ConsentDto](./Models/ConsentDto.md)
- [CorsAwsExchangeCredentialsOK](./Models/CorsAwsExchangeCredentialsOK.md)
- [CorsIotOidc4vpcallbackOK](./Models/CorsIotOidc4vpcallbackOK.md)
- [CreateIotaConfigurationInput](./Models/CreateIotaConfigurationInput.md)
- [CreatePexQueryInput](./Models/CreatePexQueryInput.md)
- [DemoWbx](./Models/DemoWbx.md)
- [GetIotaConfigurationMetaDataOK](./Models/GetIotaConfigurationMetaDataOK.md)
- [InvalidParameterError](./Models/InvalidParameterError.md)
- [InvalidParameterError_details_inner](./Models/InvalidParameterError_details_inner.md)
- [IotaConfigurationDto](./Models/IotaConfigurationDto.md)
- [IotaConfigurationDto_clientMetadata](./Models/IotaConfigurationDto_clientMetadata.md)
- [ListConfigurationOK](./Models/ListConfigurationOK.md)
- [ListLoggedConsentsOK](./Models/ListLoggedConsentsOK.md)
- [ListPexQueriesOK](./Models/ListPexQueriesOK.md)
- [MessagePublishingError](./Models/MessagePublishingError.md)
- [NotFoundError](./Models/NotFoundError.md)
- [OperationForbiddenError](./Models/OperationForbiddenError.md)
- [PexQueryDto](./Models/PexQueryDto.md)
- [PrepareRequest](./Models/PrepareRequest.md)
- [PrepareRequestCreated](./Models/PrepareRequestCreated.md)
- [PrepareRequestCreated_data](./Models/PrepareRequestCreated_data.md)
- [ResourceLimitExceededError](./Models/ResourceLimitExceededError.md)
- [UpdateConfigurationByIdInput](./Models/UpdateConfigurationByIdInput.md)
- [UpdateConfigurationByIdOK](./Models/UpdateConfigurationByIdOK.md)
- [UpdatePexQueryInput](./Models/UpdatePexQueryInput.md)
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

<a name="HeritageTokenAuth"></a>

### HeritageTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header
