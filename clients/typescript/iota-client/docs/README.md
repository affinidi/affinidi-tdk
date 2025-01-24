# Documentation for IotaService

<a name="documentation-for-api-endpoints"></a>

## Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Class               | Method                                                                                       | HTTP request                                                               | Description                                                                                                                                                                                                                                                                                                              |
| ------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| _CallbackApi_       | [**iotOIDC4VPCallback**](Apis/CallbackApi.md#iotoidc4vpcallback)                             | **POST** /v1/callback                                                      | It handles the client's (e.g., Affinidi Vault) callback about the result of the data-sharing request. It may contain the data shared by the user, including the presentation submission, verification token, and state. Using the MQTT protocol, it communicates the completion of the request or if any error occurred. |
| _ConfigurationsApi_ | [**createIotaConfiguration**](Apis/ConfigurationsApi.md#createiotaconfiguration)             | **POST** /v1/configurations                                                | Creates a new Affinidi Iota Framework configuration.                                                                                                                                                                                                                                                                     |
| _ConfigurationsApi_ | [**deleteIotaConfigurationById**](Apis/ConfigurationsApi.md#deleteiotaconfigurationbyid)     | **DELETE** /v1/configurations/{configurationId}                            | Deletes an Affinidi Iota Framework configuration by ID.                                                                                                                                                                                                                                                                  |
| _ConfigurationsApi_ | [**getIotaConfigurationById**](Apis/ConfigurationsApi.md#getiotaconfigurationbyid)           | **GET** /v1/configurations/{configurationId}                               | Retrieves the details of an Affinidi Iota Framework configuration.                                                                                                                                                                                                                                                       |
| _ConfigurationsApi_ | [**getIotaConfigurationMetaData**](Apis/ConfigurationsApi.md#getiotaconfigurationmetadata)   | **GET** /v1/projects/{projectId}/configurations/{configurationId}/metadata | Retrieves the client metadata of an Affinidi Iota Framework configuration.                                                                                                                                                                                                                                               |
| _ConfigurationsApi_ | [**listIotaConfigurations**](Apis/ConfigurationsApi.md#listiotaconfigurations)               | **GET** /v1/configurations                                                 | List all Affinidi Iota Framework configurations.                                                                                                                                                                                                                                                                         |
| _ConfigurationsApi_ | [**updateIotaConfigurationById**](Apis/ConfigurationsApi.md#updateiotaconfigurationbyid)     | **PATCH** /v1/configurations/{configurationId}                             | Updates the details of an Affinidi Iota Framework configuration by ID.                                                                                                                                                                                                                                                   |
| _DefaultApi_        | [**listLoggedConsents**](Apis/DefaultApi.md#listloggedconsents)                              | **GET** /v1/logged-consents                                                | Lists all the logged consents for a project.                                                                                                                                                                                                                                                                             |
| _IotaApi_           | [**awsExchangeCredentials**](Apis/IotaApi.md#awsexchangecredentials)                         | **POST** /v1/aws-exchange-credentials                                      | Exchange a limited-scoped token into a Cognito credential to generate the identity credential. The identity credential initiates the secure WebSocket connection from the client. This method is used only in WebSocket data-sharing mode.                                                                               |
| _IotaApi_           | [**awsExchangeCredentialsProjectToken**](Apis/IotaApi.md#awsexchangecredentialsprojecttoken) | **POST** /v1/aws-exchange-credentials/project-token                        | Exchange a Project Scoped Token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.                                                                                                                                                 |
| _IotaApi_           | [**fetchIotaVpResponse**](Apis/IotaApi.md#fetchiotavpresponse)                               | **POST** /v1/fetch-iota-response                                           | Fetches the client's callback that contains the user's shared data in a Verifiable Presentation format after a successful data-sharing flow.                                                                                                                                                                             |
| _IotaApi_           | [**initiateDataSharingRequest**](Apis/IotaApi.md#initiatedatasharingrequest)                 | **POST** /v1/initiate-data-sharing-request                                 | Generates the request token for the Redirect mode to initiate the data-sharing flow.                                                                                                                                                                                                                                     |
| _IotaApi_           | [**iotaExchangeCredentials**](Apis/IotaApi.md#iotaexchangecredentials)                       | **POST** /v1/exchange-credentials                                          | Exchange a limited-scoped token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.                                                                                                                                                 |
| _PexQueryApi_       | [**createPexQuery**](Apis/PexQueryApi.md#createpexquery)                                     | **POST** /v1/configurations/{configurationId}/pex-queries                  | Creates a new Presentation Definition in the configuration to query data.                                                                                                                                                                                                                                                |
| _PexQueryApi_       | [**deletePexQueries**](Apis/PexQueryApi.md#deletepexqueries)                                 | **POST** /v1/configurations/{configurationId}/delete-queries               | Deletes all Presentation Definition queries of a configuration.                                                                                                                                                                                                                                                          |
| _PexQueryApi_       | [**deletePexQueryById**](Apis/PexQueryApi.md#deletepexquerybyid)                             | **DELETE** /v1/configurations/{configurationId}/pex-queries/{queryId}      | Deletes a Presentation Definition in the configuration by ID.                                                                                                                                                                                                                                                            |
| _PexQueryApi_       | [**getPexQueryById**](Apis/PexQueryApi.md#getpexquerybyid)                                   | **GET** /v1/configurations/{configurationId}/pex-queries/{queryId}         | Retrieves a Presentation Definition in the configuration by ID.                                                                                                                                                                                                                                                          |
| _PexQueryApi_       | [**listPexQueries**](Apis/PexQueryApi.md#listpexqueries)                                     | **GET** /v1/configurations/{configurationId}/pex-queries                   | Lists all Presentation Definitions in the configuration.                                                                                                                                                                                                                                                                 |
| _PexQueryApi_       | [**savePexQueries**](Apis/PexQueryApi.md#savepexqueries)                                     | **POST** /v1/configurations/{configurationId}/save-queries                 | Saves all Presentation Definition queries of a configuration.                                                                                                                                                                                                                                                            |
| _PexQueryApi_       | [**updatePexQueryById**](Apis/PexQueryApi.md#updatepexquerybyid)                             | **PATCH** /v1/configurations/{configurationId}/pex-queries/{queryId}       | Updates the Presentation Definition in the configuration by ID.                                                                                                                                                                                                                                                          |

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
- [IotaConfigurationDtoClientMetadata](./Models/IotaConfigurationDtoClientMetadata.md)
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
