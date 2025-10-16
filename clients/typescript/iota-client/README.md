## @affinidi-tdk/iota-client@1.32.0

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
npm install @affinidi-tdk/iota-client@1.32.0 --save
```

_unPublished (not recommended):_

```
npm install PATH_TO_GENERATED_PACKAGE --save
```

### Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Class               | Method                                                                                       | HTTP request                                                               | Description |
| ------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------- | ----------- |
| _CallbackApi_       | [**iotOIDC4VPCallback**](docs/CallbackApi.md#iotoidc4vpcallback)                             | **POST** /v1/callback                                                      |
| _ConfigurationsApi_ | [**createIotaConfiguration**](docs/ConfigurationsApi.md#createiotaconfiguration)             | **POST** /v1/configurations                                                |
| _ConfigurationsApi_ | [**deleteIotaConfigurationById**](docs/ConfigurationsApi.md#deleteiotaconfigurationbyid)     | **DELETE** /v1/configurations/{configurationId}                            |
| _ConfigurationsApi_ | [**getIotaConfigurationById**](docs/ConfigurationsApi.md#getiotaconfigurationbyid)           | **GET** /v1/configurations/{configurationId}                               |
| _ConfigurationsApi_ | [**getIotaConfigurationMetaData**](docs/ConfigurationsApi.md#getiotaconfigurationmetadata)   | **GET** /v1/projects/{projectId}/configurations/{configurationId}/metadata |
| _ConfigurationsApi_ | [**listIotaConfigurations**](docs/ConfigurationsApi.md#listiotaconfigurations)               | **GET** /v1/configurations                                                 |
| _ConfigurationsApi_ | [**updateIotaConfigurationById**](docs/ConfigurationsApi.md#updateiotaconfigurationbyid)     | **PATCH** /v1/configurations/{configurationId}                             |
| _DcqlQueryApi_      | [**createDcqlQuery**](docs/DcqlQueryApi.md#createdcqlquery)                                  | **POST** /v1/configurations/{configurationId}/dcql-queries                 |
| _DcqlQueryApi_      | [**deleteDcqlQueryById**](docs/DcqlQueryApi.md#deletedcqlquerybyid)                          | **DELETE** /v1/configurations/{configurationId}/dcql-queries/{queryId}     |
| _DcqlQueryApi_      | [**getDcqlQueryById**](docs/DcqlQueryApi.md#getdcqlquerybyid)                                | **GET** /v1/configurations/{configurationId}/dcql-queries/{queryId}        |
| _DcqlQueryApi_      | [**listDcqlQueries**](docs/DcqlQueryApi.md#listdcqlqueries)                                  | **GET** /v1/configurations/{configurationId}/dcql-queries                  |
| _DcqlQueryApi_      | [**updateDcqlQueryById**](docs/DcqlQueryApi.md#updatedcqlquerybyid)                          | **PATCH** /v1/configurations/{configurationId}/dcql-queries/{queryId}      |
| _DefaultApi_        | [**listLoggedConsents**](docs/DefaultApi.md#listloggedconsents)                              | **GET** /v1/logged-consents                                                |
| _IotaApi_           | [**awsExchangeCredentials**](docs/IotaApi.md#awsexchangecredentials)                         | **POST** /v1/aws-exchange-credentials                                      |
| _IotaApi_           | [**awsExchangeCredentialsProjectToken**](docs/IotaApi.md#awsexchangecredentialsprojecttoken) | **POST** /v1/aws-exchange-credentials/project-token                        |
| _IotaApi_           | [**fetchIotaVpResponse**](docs/IotaApi.md#fetchiotavpresponse)                               | **POST** /v1/fetch-iota-response                                           |
| _IotaApi_           | [**initiateDataSharingRequest**](docs/IotaApi.md#initiatedatasharingrequest)                 | **POST** /v1/initiate-data-sharing-request                                 |
| _IotaApi_           | [**iotaExchangeCredentials**](docs/IotaApi.md#iotaexchangecredentials)                       | **POST** /v1/exchange-credentials                                          |
| _PexQueryApi_       | [**createPexQuery**](docs/PexQueryApi.md#createpexquery)                                     | **POST** /v1/configurations/{configurationId}/pex-queries                  |
| _PexQueryApi_       | [**deletePexQueries**](docs/PexQueryApi.md#deletepexqueries)                                 | **POST** /v1/configurations/{configurationId}/delete-queries               |
| _PexQueryApi_       | [**deletePexQueryById**](docs/PexQueryApi.md#deletepexquerybyid)                             | **DELETE** /v1/configurations/{configurationId}/pex-queries/{queryId}      |
| _PexQueryApi_       | [**getPexQueryById**](docs/PexQueryApi.md#getpexquerybyid)                                   | **GET** /v1/configurations/{configurationId}/pex-queries/{queryId}         |
| _PexQueryApi_       | [**listPexQueries**](docs/PexQueryApi.md#listpexqueries)                                     | **GET** /v1/configurations/{configurationId}/pex-queries                   |
| _PexQueryApi_       | [**savePexQueries**](docs/PexQueryApi.md#savepexqueries)                                     | **POST** /v1/configurations/{configurationId}/save-queries                 |
| _PexQueryApi_       | [**updatePexQueryById**](docs/PexQueryApi.md#updatepexquerybyid)                             | **PATCH** /v1/configurations/{configurationId}/pex-queries/{queryId}       |

### Documentation For Models

- [AlreadyExistsError](docs/AlreadyExistsError.md)
- [AwsExchangeCredentials](docs/AwsExchangeCredentials.md)
- [AwsExchangeCredentialsOK](docs/AwsExchangeCredentialsOK.md)
- [AwsExchangeCredentialsProjectToken](docs/AwsExchangeCredentialsProjectToken.md)
- [AwsExchangeCredentialsProjectTokenOK](docs/AwsExchangeCredentialsProjectTokenOK.md)
- [AwsExchangeCredentialsProjectTokenOKCredentials](docs/AwsExchangeCredentialsProjectTokenOKCredentials.md)
- [CallbackInput](docs/CallbackInput.md)
- [CallbackResponseOK](docs/CallbackResponseOK.md)
- [ConsentDto](docs/ConsentDto.md)
- [CorsAwsExchangeCredentialsOK](docs/CorsAwsExchangeCredentialsOK.md)
- [CorsAwsExchangeCredentialsProjectTokenOK](docs/CorsAwsExchangeCredentialsProjectTokenOK.md)
- [CorsFetchIotaVpResponseOK](docs/CorsFetchIotaVpResponseOK.md)
- [CorsInitiateDataSharingRequestOK](docs/CorsInitiateDataSharingRequestOK.md)
- [CorsIotOidc4vpcallbackOK](docs/CorsIotOidc4vpcallbackOK.md)
- [CorsIotaExchangeCredentialsOK](docs/CorsIotaExchangeCredentialsOK.md)
- [CreateDcqlQueryInput](docs/CreateDcqlQueryInput.md)
- [CreateIotaConfigurationInput](docs/CreateIotaConfigurationInput.md)
- [CreatePexQueryInput](docs/CreatePexQueryInput.md)
- [DcqlQueryDto](docs/DcqlQueryDto.md)
- [DeletePexQueriesInput](docs/DeletePexQueriesInput.md)
- [FetchIOTAVPResponseInput](docs/FetchIOTAVPResponseInput.md)
- [FetchIOTAVPResponseOK](docs/FetchIOTAVPResponseOK.md)
- [GetIotaConfigurationMetaDataOK](docs/GetIotaConfigurationMetaDataOK.md)
- [InitiateDataSharingRequestInput](docs/InitiateDataSharingRequestInput.md)
- [InitiateDataSharingRequestOK](docs/InitiateDataSharingRequestOK.md)
- [InitiateDataSharingRequestOKData](docs/InitiateDataSharingRequestOKData.md)
- [InvalidParameterError](docs/InvalidParameterError.md)
- [InvalidParameterErrorDetailsInner](docs/InvalidParameterErrorDetailsInner.md)
- [IotaConfigurationDto](docs/IotaConfigurationDto.md)
- [IotaConfigurationDtoClientMetadata](docs/IotaConfigurationDtoClientMetadata.md)
- [IotaExchangeCredentials](docs/IotaExchangeCredentials.md)
- [IotaExchangeCredentialsOK](docs/IotaExchangeCredentialsOK.md)
- [IotaExchangeCredentialsOKCredentials](docs/IotaExchangeCredentialsOKCredentials.md)
- [ListConfigurationOK](docs/ListConfigurationOK.md)
- [ListDcqlQueriesOK](docs/ListDcqlQueriesOK.md)
- [ListLoggedConsentsOK](docs/ListLoggedConsentsOK.md)
- [ListPexQueriesOK](docs/ListPexQueriesOK.md)
- [MessagePublishingError](docs/MessagePublishingError.md)
- [NotFoundError](docs/NotFoundError.md)
- [OperationForbiddenError](docs/OperationForbiddenError.md)
- [PexQueryDto](docs/PexQueryDto.md)
- [PrepareRequest](docs/PrepareRequest.md)
- [PrepareRequestCreated](docs/PrepareRequestCreated.md)
- [PrepareRequestCreatedData](docs/PrepareRequestCreatedData.md)
- [ResourceLimitExceededError](docs/ResourceLimitExceededError.md)
- [SavePexQueriesUpdateInput](docs/SavePexQueriesUpdateInput.md)
- [SavePexQueriesUpdateInputQueriesInner](docs/SavePexQueriesUpdateInputQueriesInner.md)
- [UpdateConfigurationByIdInput](docs/UpdateConfigurationByIdInput.md)
- [UpdateConfigurationByIdOK](docs/UpdateConfigurationByIdOK.md)
- [UpdateDcqlQueryInput](docs/UpdateDcqlQueryInput.md)
- [UpdatePexQueryInput](docs/UpdatePexQueryInput.md)
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

<a id="HeritageTokenAuth"></a>

### HeritageTokenAuth

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
import { SomeClassApi, Configuration } from '@affinidi-tdk/iota-client'
import { AuthProvider } from '@affinidi-tdk/auth-provider'

const authProvider = new AuthProvider({ tokenId, privateKey, projectId })

const api = new SomeClassApi(
  new Configuration({
    apiKey: authProvider.fetchProjectScopedToken.bind(authProvider),
  }),
)

await api.oneOfMethods()
```
