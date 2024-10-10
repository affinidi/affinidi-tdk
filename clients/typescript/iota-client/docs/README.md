# Documentation for IotaService

<a name="documentation-for-api-endpoints"></a>

## Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Class               | Method                                                                                       | HTTP request                                                               | Description                                                       |
| ------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------- | ----------------------------------------------------------------- |
| _CallbackApi_       | [**iotOIDC4VPCallback**](Apis/CallbackApi.md#iotoidc4vpcallback)                             | **POST** /v1/callback                                                      | Processes the callback for OIDC4VP flows                          |
| _ConfigurationsApi_ | [**createIotaConfiguration**](Apis/ConfigurationsApi.md#createiotaconfiguration)             | **POST** /v1/configurations                                                |                                                                   |
| _ConfigurationsApi_ | [**deleteIotaConfigurationById**](Apis/ConfigurationsApi.md#deleteiotaconfigurationbyid)     | **DELETE** /v1/configurations/{configurationId}                            |                                                                   |
| _ConfigurationsApi_ | [**getIotaConfigurationById**](Apis/ConfigurationsApi.md#getiotaconfigurationbyid)           | **GET** /v1/configurations/{configurationId}                               |                                                                   |
| _ConfigurationsApi_ | [**getIotaConfigurationMetaData**](Apis/ConfigurationsApi.md#getiotaconfigurationmetadata)   | **GET** /v1/projects/{projectId}/configurations/{configurationId}/metadata |                                                                   |
| _ConfigurationsApi_ | [**listIotaConfigurations**](Apis/ConfigurationsApi.md#listiotaconfigurations)               | **GET** /v1/configurations                                                 |                                                                   |
| _ConfigurationsApi_ | [**updateIotaConfigurationById**](Apis/ConfigurationsApi.md#updateiotaconfigurationbyid)     | **PATCH** /v1/configurations/{configurationId}                             |                                                                   |
| _DefaultApi_        | [**listLoggedConsents**](Apis/DefaultApi.md#listloggedconsents)                              | **GET** /v1/logged-consents                                                | returns a list of logged consents for the project                 |
| _IotaApi_           | [**awsExchangeCredentials**](Apis/IotaApi.md#awsexchangecredentials)                         | **POST** /v1/aws-exchange-credentials                                      | It exchanges limited token into cognito                           |
| _IotaApi_           | [**awsExchangeCredentialsProjectToken**](Apis/IotaApi.md#awsexchangecredentialsprojecttoken) | **POST** /v1/aws-exchange-credentials/project-token                        | It exchanges project token into cognito                           |
| _IotaApi_           | [**deletePexQueries**](Apis/IotaApi.md#deletepexqueries)                                     | **POST** /v1/configurations/{configurationId}/delete-queries               | deletes pex queries                                               |
| _IotaApi_           | [**fetchIotaVpResponse**](Apis/IotaApi.md#fetchiotavpresponse)                               | **POST** /v1/fetch-iota-response                                           | This will get the final data response                             |
| _IotaApi_           | [**initiateDataSharingRequest**](Apis/IotaApi.md#initiatedatasharingrequest)                 | **POST** /v1/initiate-data-sharing-request                                 | This will initiate data sharing request for the data sharing flow |
| _IotaApi_           | [**iotaExchangeCredentials**](Apis/IotaApi.md#iotaexchangecredentials)                       | **POST** /v1/exchange-credentials                                          | It exchanges limited token into cognito sts identity credentials  |
| _IotaApi_           | [**savePexQueries**](Apis/IotaApi.md#savepexqueries)                                         | **POST** /v1/configurations/{configurationId}/save-queries                 | saves all pex queries                                             |
| _PexQueryApi_       | [**createPexQuery**](Apis/PexQueryApi.md#createpexquery)                                     | **POST** /v1/configurations/{configurationId}/pex-queries                  |                                                                   |
| _PexQueryApi_       | [**deletePexQueryById**](Apis/PexQueryApi.md#deletepexquerybyid)                             | **DELETE** /v1/configurations/{configurationId}/pex-queries/{queryId}      |                                                                   |
| _PexQueryApi_       | [**getPexQueryById**](Apis/PexQueryApi.md#getpexquerybyid)                                   | **GET** /v1/configurations/{configurationId}/pex-queries/{queryId}         |                                                                   |
| _PexQueryApi_       | [**listPexQueries**](Apis/PexQueryApi.md#listpexqueries)                                     | **GET** /v1/configurations/{configurationId}/pex-queries                   |                                                                   |
| _PexQueryApi_       | [**updatePexQueryById**](Apis/PexQueryApi.md#updatepexquerybyid)                             | **PATCH** /v1/configurations/{configurationId}/pex-queries/{queryId}       |                                                                   |

<a name="documentation-for-models"></a>

## Documentation for Models

- [AlreadyExistsError](./Models/AlreadyExistsError.md)
- [AwsExchangeCredentials](./Models/AwsExchangeCredentials.md)
- [AwsExchangeCredentialsOK](./Models/AwsExchangeCredentialsOK.md)
- [AwsExchangeCredentialsProjectToken](./Models/AwsExchangeCredentialsProjectToken.md)
- [AwsExchangeCredentialsProjectTokenOK](./Models/AwsExchangeCredentialsProjectTokenOK.md)
- [AwsExchangeCredentialsProjectTokenOK_credentials](./Models/AwsExchangeCredentialsProjectTokenOK_credentials.md)
- [CallbackInput](./Models/CallbackInput.md)
- [CallbackResponseOK](./Models/CallbackResponseOK.md)
- [ConsentDto](./Models/ConsentDto.md)
- [CorsAwsExchangeCredentialsOK](./Models/CorsAwsExchangeCredentialsOK.md)
- [CorsAwsExchangeCredentialsProjectTokenOK](./Models/CorsAwsExchangeCredentialsProjectTokenOK.md)
- [CorsFetchIotaVpResponseOK](./Models/CorsFetchIotaVpResponseOK.md)
- [CorsInitiateDataSharingRequestOK](./Models/CorsInitiateDataSharingRequestOK.md)
- [CorsIotOidc4vpcallbackOK](./Models/CorsIotOidc4vpcallbackOK.md)
- [CorsIotaExchangeCredentialsOK](./Models/CorsIotaExchangeCredentialsOK.md)
- [CreateIotaConfigurationInput](./Models/CreateIotaConfigurationInput.md)
- [CreatePexQueryInput](./Models/CreatePexQueryInput.md)
- [DeletePexQueriesInput](./Models/DeletePexQueriesInput.md)
- [FetchIOTAVPResponseInput](./Models/FetchIOTAVPResponseInput.md)
- [FetchIOTAVPResponseOK](./Models/FetchIOTAVPResponseOK.md)
- [GetIotaConfigurationMetaDataOK](./Models/GetIotaConfigurationMetaDataOK.md)
- [InitiateDataSharingRequestInput](./Models/InitiateDataSharingRequestInput.md)
- [InitiateDataSharingRequestOK](./Models/InitiateDataSharingRequestOK.md)
- [InitiateDataSharingRequestOK_data](./Models/InitiateDataSharingRequestOK_data.md)
- [InvalidParameterError](./Models/InvalidParameterError.md)
- [InvalidParameterError_details_inner](./Models/InvalidParameterError_details_inner.md)
- [IotaConfigurationDto](./Models/IotaConfigurationDto.md)
- [IotaConfigurationDto_clientMetadata](./Models/IotaConfigurationDto_clientMetadata.md)
- [IotaExchangeCredentials](./Models/IotaExchangeCredentials.md)
- [IotaExchangeCredentialsOK](./Models/IotaExchangeCredentialsOK.md)
- [IotaExchangeCredentialsOK_credentials](./Models/IotaExchangeCredentialsOK_credentials.md)
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
- [SavePexQueriesUpdateInput](./Models/SavePexQueriesUpdateInput.md)
- [SavePexQueriesUpdateInput_queries_inner](./Models/SavePexQueriesUpdateInput_queries_inner.md)
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
