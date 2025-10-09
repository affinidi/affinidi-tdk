# affinidi_tdk_iota_client

Affinidi TDK dart client for Affinidi IOTA

## Requirements

- Dart 3.6.0+
- Dio 5.0.0+ (https://pub.dev/packages/dio)

## Installation & Usage

### pub.dev

To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_iota_client: ^1.0.0
```

### Github

This Dart package is published to Github, please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_iota_client:
    git:
      url: https://github.com/affinidi/affinidi-tdk.git
      ref: main
      path: clients/dart/iota_client
```

### Local development

To use the package from your local drive, please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_iota_client:
    path: /path/to/affinidi_tdk_iota_client
```

### Install dependencies

```bash
dart pub get
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:affinidi_tdk_iota_client/affinidi_tdk_iota_client.dart';


final api = AffinidiTdkIotaClient().getCallbackApi();
final CallbackInput callbackInput = ; // CallbackInput | CallbackRequestInput

try {
    final response = await api.iotOIDC4VPCallback(callbackInput);
    print(response);
} catch on DioException (e) {
    print("Exception when calling CallbackApi->iotOIDC4VPCallback: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Class                                           | Method                                                                                      | HTTP request                                                               | Description |
| ----------------------------------------------- | ------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------- | ----------- |
| [_CallbackApi_](doc/CallbackApi.md)             | [**iotOIDC4VPCallback**](doc/CallbackApi.md#iotoidc4vpcallback)                             | **POST** /v1/callback                                                      |
| [_ConfigurationsApi_](doc/ConfigurationsApi.md) | [**createIotaConfiguration**](doc/ConfigurationsApi.md#createiotaconfiguration)             | **POST** /v1/configurations                                                |
| [_ConfigurationsApi_](doc/ConfigurationsApi.md) | [**deleteIotaConfigurationById**](doc/ConfigurationsApi.md#deleteiotaconfigurationbyid)     | **DELETE** /v1/configurations/{configurationId}                            |
| [_ConfigurationsApi_](doc/ConfigurationsApi.md) | [**getIotaConfigurationById**](doc/ConfigurationsApi.md#getiotaconfigurationbyid)           | **GET** /v1/configurations/{configurationId}                               |
| [_ConfigurationsApi_](doc/ConfigurationsApi.md) | [**getIotaConfigurationMetaData**](doc/ConfigurationsApi.md#getiotaconfigurationmetadata)   | **GET** /v1/projects/{projectId}/configurations/{configurationId}/metadata |
| [_ConfigurationsApi_](doc/ConfigurationsApi.md) | [**listIotaConfigurations**](doc/ConfigurationsApi.md#listiotaconfigurations)               | **GET** /v1/configurations                                                 |
| [_ConfigurationsApi_](doc/ConfigurationsApi.md) | [**updateIotaConfigurationById**](doc/ConfigurationsApi.md#updateiotaconfigurationbyid)     | **PATCH** /v1/configurations/{configurationId}                             |
| [_DefaultApi_](doc/DefaultApi.md)               | [**listLoggedConsents**](doc/DefaultApi.md#listloggedconsents)                              | **GET** /v1/logged-consents                                                |
| [_IotaApi_](doc/IotaApi.md)                     | [**awsExchangeCredentials**](doc/IotaApi.md#awsexchangecredentials)                         | **POST** /v1/aws-exchange-credentials                                      |
| [_IotaApi_](doc/IotaApi.md)                     | [**awsExchangeCredentialsProjectToken**](doc/IotaApi.md#awsexchangecredentialsprojecttoken) | **POST** /v1/aws-exchange-credentials/project-token                        |
| [_IotaApi_](doc/IotaApi.md)                     | [**fetchIotaVpResponse**](doc/IotaApi.md#fetchiotavpresponse)                               | **POST** /v1/fetch-iota-response                                           |
| [_IotaApi_](doc/IotaApi.md)                     | [**initiateDataSharingRequest**](doc/IotaApi.md#initiatedatasharingrequest)                 | **POST** /v1/initiate-data-sharing-request                                 |
| [_IotaApi_](doc/IotaApi.md)                     | [**iotaExchangeCredentials**](doc/IotaApi.md#iotaexchangecredentials)                       | **POST** /v1/exchange-credentials                                          |
| [_PexQueryApi_](doc/PexQueryApi.md)             | [**createPexQuery**](doc/PexQueryApi.md#createpexquery)                                     | **POST** /v1/configurations/{configurationId}/pex-queries                  |
| [_PexQueryApi_](doc/PexQueryApi.md)             | [**deletePexQueries**](doc/PexQueryApi.md#deletepexqueries)                                 | **POST** /v1/configurations/{configurationId}/delete-queries               |
| [_PexQueryApi_](doc/PexQueryApi.md)             | [**deletePexQueryById**](doc/PexQueryApi.md#deletepexquerybyid)                             | **DELETE** /v1/configurations/{configurationId}/pex-queries/{queryId}      |
| [_PexQueryApi_](doc/PexQueryApi.md)             | [**getPexQueryById**](doc/PexQueryApi.md#getpexquerybyid)                                   | **GET** /v1/configurations/{configurationId}/pex-queries/{queryId}         |
| [_PexQueryApi_](doc/PexQueryApi.md)             | [**listPexQueries**](doc/PexQueryApi.md#listpexqueries)                                     | **GET** /v1/configurations/{configurationId}/pex-queries                   |
| [_PexQueryApi_](doc/PexQueryApi.md)             | [**savePexQueries**](doc/PexQueryApi.md#savepexqueries)                                     | **POST** /v1/configurations/{configurationId}/save-queries                 |
| [_PexQueryApi_](doc/PexQueryApi.md)             | [**updatePexQueryById**](doc/PexQueryApi.md#updatepexquerybyid)                             | **PATCH** /v1/configurations/{configurationId}/pex-queries/{queryId}       |

## Documentation For Models

- [AlreadyExistsError](doc/AlreadyExistsError.md)
- [AwsExchangeCredentials](doc/AwsExchangeCredentials.md)
- [AwsExchangeCredentialsOK](doc/AwsExchangeCredentialsOK.md)
- [AwsExchangeCredentialsProjectToken](doc/AwsExchangeCredentialsProjectToken.md)
- [AwsExchangeCredentialsProjectTokenOK](doc/AwsExchangeCredentialsProjectTokenOK.md)
- [AwsExchangeCredentialsProjectTokenOKCredentials](doc/AwsExchangeCredentialsProjectTokenOKCredentials.md)
- [CallbackInput](doc/CallbackInput.md)
- [CallbackResponseOK](doc/CallbackResponseOK.md)
- [ConsentDto](doc/ConsentDto.md)
- [CorsAwsExchangeCredentialsOK](doc/CorsAwsExchangeCredentialsOK.md)
- [CorsAwsExchangeCredentialsProjectTokenOK](doc/CorsAwsExchangeCredentialsProjectTokenOK.md)
- [CorsFetchIotaVpResponseOK](doc/CorsFetchIotaVpResponseOK.md)
- [CorsInitiateDataSharingRequestOK](doc/CorsInitiateDataSharingRequestOK.md)
- [CorsIotOidc4vpcallbackOK](doc/CorsIotOidc4vpcallbackOK.md)
- [CorsIotaExchangeCredentialsOK](doc/CorsIotaExchangeCredentialsOK.md)
- [CreateDcqlQueryInput](doc/CreateDcqlQueryInput.md)
- [CreateIotaConfigurationInput](doc/CreateIotaConfigurationInput.md)
- [CreatePexQueryInput](doc/CreatePexQueryInput.md)
- [DcqlQueryDto](doc/DcqlQueryDto.md)
- [DeletePexQueriesInput](doc/DeletePexQueriesInput.md)
- [FetchIOTAVPResponseInput](doc/FetchIOTAVPResponseInput.md)
- [FetchIOTAVPResponseOK](doc/FetchIOTAVPResponseOK.md)
- [GetIotaConfigurationMetaDataOK](doc/GetIotaConfigurationMetaDataOK.md)
- [InitiateDataSharingRequestInput](doc/InitiateDataSharingRequestInput.md)
- [InitiateDataSharingRequestOK](doc/InitiateDataSharingRequestOK.md)
- [InitiateDataSharingRequestOKData](doc/InitiateDataSharingRequestOKData.md)
- [InvalidParameterError](doc/InvalidParameterError.md)
- [InvalidParameterErrorDetailsInner](doc/InvalidParameterErrorDetailsInner.md)
- [IotaConfigurationDto](doc/IotaConfigurationDto.md)
- [IotaConfigurationDtoClientMetadata](doc/IotaConfigurationDtoClientMetadata.md)
- [IotaExchangeCredentials](doc/IotaExchangeCredentials.md)
- [IotaExchangeCredentialsOK](doc/IotaExchangeCredentialsOK.md)
- [IotaExchangeCredentialsOKCredentials](doc/IotaExchangeCredentialsOKCredentials.md)
- [ListConfigurationOK](doc/ListConfigurationOK.md)
- [ListDcqlQueriesOK](doc/ListDcqlQueriesOK.md)
- [ListLoggedConsentsOK](doc/ListLoggedConsentsOK.md)
- [ListPexQueriesOK](doc/ListPexQueriesOK.md)
- [MessagePublishingError](doc/MessagePublishingError.md)
- [NotFoundError](doc/NotFoundError.md)
- [OperationForbiddenError](doc/OperationForbiddenError.md)
- [PexQueryDto](doc/PexQueryDto.md)
- [PrepareRequest](doc/PrepareRequest.md)
- [PrepareRequestCreated](doc/PrepareRequestCreated.md)
- [PrepareRequestCreatedData](doc/PrepareRequestCreatedData.md)
- [ResourceLimitExceededError](doc/ResourceLimitExceededError.md)
- [SavePexQueriesUpdateInput](doc/SavePexQueriesUpdateInput.md)
- [SavePexQueriesUpdateInputQueriesInner](doc/SavePexQueriesUpdateInputQueriesInner.md)
- [UpdateConfigurationByIdInput](doc/UpdateConfigurationByIdInput.md)
- [UpdateConfigurationByIdOK](doc/UpdateConfigurationByIdOK.md)
- [UpdateDcqlQueryInput](doc/UpdateDcqlQueryInput.md)
- [UpdatePexQueryInput](doc/UpdatePexQueryInput.md)
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

### HeritageTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

## Author

info@affinidi.com
