# iota-client

For more information, please visit [https://github.com/affinidi/affinidi-tdk](https://github.com/affinidi/affinidi-tdk).

## Installation & Usage

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), run:

```bash
composer require affinidi-tdk/iota-client
```

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/iota-client/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');




$apiInstance = new AffinidiTdk\Clients\Iota\Api\CallbackApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$callback_input = new \AffinidiTdk\Clients\Iota\Model\CallbackInput(); // \AffinidiTdk\Clients\Iota\Model\CallbackInput | CallbackRequestInput

try {
    $result = $apiInstance->iotOIDC4VPCallback($callback_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CallbackApi->iotOIDC4VPCallback: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Class               | Method                                                                                           | HTTP request                                                               | Description |
| ------------------- | ------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------- | ----------- |
| _CallbackApi_       | [**iotOIDC4VPCallback**](docs/Api/CallbackApi.md#iotoidc4vpcallback)                             | **POST** /v1/callback                                                      |
| _ConfigurationsApi_ | [**createIotaConfiguration**](docs/Api/ConfigurationsApi.md#createiotaconfiguration)             | **POST** /v1/configurations                                                |
| _ConfigurationsApi_ | [**deleteIotaConfigurationById**](docs/Api/ConfigurationsApi.md#deleteiotaconfigurationbyid)     | **DELETE** /v1/configurations/{configurationId}                            |
| _ConfigurationsApi_ | [**getIotaConfigurationById**](docs/Api/ConfigurationsApi.md#getiotaconfigurationbyid)           | **GET** /v1/configurations/{configurationId}                               |
| _ConfigurationsApi_ | [**getIotaConfigurationMetaData**](docs/Api/ConfigurationsApi.md#getiotaconfigurationmetadata)   | **GET** /v1/projects/{projectId}/configurations/{configurationId}/metadata |
| _ConfigurationsApi_ | [**listIotaConfigurations**](docs/Api/ConfigurationsApi.md#listiotaconfigurations)               | **GET** /v1/configurations                                                 |
| _ConfigurationsApi_ | [**updateIotaConfigurationById**](docs/Api/ConfigurationsApi.md#updateiotaconfigurationbyid)     | **PATCH** /v1/configurations/{configurationId}                             |
| _DefaultApi_        | [**listLoggedConsents**](docs/Api/DefaultApi.md#listloggedconsents)                              | **GET** /v1/logged-consents                                                |
| _IotaApi_           | [**awsExchangeCredentials**](docs/Api/IotaApi.md#awsexchangecredentials)                         | **POST** /v1/aws-exchange-credentials                                      |
| _IotaApi_           | [**awsExchangeCredentialsProjectToken**](docs/Api/IotaApi.md#awsexchangecredentialsprojecttoken) | **POST** /v1/aws-exchange-credentials/project-token                        |
| _IotaApi_           | [**fetchIotaVpResponse**](docs/Api/IotaApi.md#fetchiotavpresponse)                               | **POST** /v1/fetch-iota-response                                           |
| _IotaApi_           | [**initiateDataSharingRequest**](docs/Api/IotaApi.md#initiatedatasharingrequest)                 | **POST** /v1/initiate-data-sharing-request                                 |
| _IotaApi_           | [**iotaExchangeCredentials**](docs/Api/IotaApi.md#iotaexchangecredentials)                       | **POST** /v1/exchange-credentials                                          |
| _PexQueryApi_       | [**createPexQuery**](docs/Api/PexQueryApi.md#createpexquery)                                     | **POST** /v1/configurations/{configurationId}/pex-queries                  |
| _PexQueryApi_       | [**deletePexQueries**](docs/Api/PexQueryApi.md#deletepexqueries)                                 | **POST** /v1/configurations/{configurationId}/delete-queries               |
| _PexQueryApi_       | [**deletePexQueryById**](docs/Api/PexQueryApi.md#deletepexquerybyid)                             | **DELETE** /v1/configurations/{configurationId}/pex-queries/{queryId}      |
| _PexQueryApi_       | [**getPexQueryById**](docs/Api/PexQueryApi.md#getpexquerybyid)                                   | **GET** /v1/configurations/{configurationId}/pex-queries/{queryId}         |
| _PexQueryApi_       | [**listPexQueries**](docs/Api/PexQueryApi.md#listpexqueries)                                     | **GET** /v1/configurations/{configurationId}/pex-queries                   |
| _PexQueryApi_       | [**savePexQueries**](docs/Api/PexQueryApi.md#savepexqueries)                                     | **POST** /v1/configurations/{configurationId}/save-queries                 |
| _PexQueryApi_       | [**updatePexQueryById**](docs/Api/PexQueryApi.md#updatepexquerybyid)                             | **PATCH** /v1/configurations/{configurationId}/pex-queries/{queryId}       |

## Models

- [AlreadyExistsError](docs/Model/AlreadyExistsError.md)
- [AwsExchangeCredentials](docs/Model/AwsExchangeCredentials.md)
- [AwsExchangeCredentialsOK](docs/Model/AwsExchangeCredentialsOK.md)
- [AwsExchangeCredentialsProjectToken](docs/Model/AwsExchangeCredentialsProjectToken.md)
- [AwsExchangeCredentialsProjectTokenOK](docs/Model/AwsExchangeCredentialsProjectTokenOK.md)
- [AwsExchangeCredentialsProjectTokenOKCredentials](docs/Model/AwsExchangeCredentialsProjectTokenOKCredentials.md)
- [CallbackInput](docs/Model/CallbackInput.md)
- [CallbackResponseOK](docs/Model/CallbackResponseOK.md)
- [ConsentDto](docs/Model/ConsentDto.md)
- [CorsAwsExchangeCredentialsOK](docs/Model/CorsAwsExchangeCredentialsOK.md)
- [CorsAwsExchangeCredentialsProjectTokenOK](docs/Model/CorsAwsExchangeCredentialsProjectTokenOK.md)
- [CorsFetchIotaVpResponseOK](docs/Model/CorsFetchIotaVpResponseOK.md)
- [CorsInitiateDataSharingRequestOK](docs/Model/CorsInitiateDataSharingRequestOK.md)
- [CorsIotOidc4vpcallbackOK](docs/Model/CorsIotOidc4vpcallbackOK.md)
- [CorsIotaExchangeCredentialsOK](docs/Model/CorsIotaExchangeCredentialsOK.md)
- [CreateIotaConfigurationInput](docs/Model/CreateIotaConfigurationInput.md)
- [CreatePexQueryInput](docs/Model/CreatePexQueryInput.md)
- [DeletePexQueriesInput](docs/Model/DeletePexQueriesInput.md)
- [FetchIOTAVPResponseInput](docs/Model/FetchIOTAVPResponseInput.md)
- [FetchIOTAVPResponseOK](docs/Model/FetchIOTAVPResponseOK.md)
- [GetIotaConfigurationMetaDataOK](docs/Model/GetIotaConfigurationMetaDataOK.md)
- [InitiateDataSharingRequestInput](docs/Model/InitiateDataSharingRequestInput.md)
- [InitiateDataSharingRequestOK](docs/Model/InitiateDataSharingRequestOK.md)
- [InitiateDataSharingRequestOKData](docs/Model/InitiateDataSharingRequestOKData.md)
- [InvalidParameterError](docs/Model/InvalidParameterError.md)
- [InvalidParameterErrorDetailsInner](docs/Model/InvalidParameterErrorDetailsInner.md)
- [IotaConfigurationDto](docs/Model/IotaConfigurationDto.md)
- [IotaConfigurationDtoClientMetadata](docs/Model/IotaConfigurationDtoClientMetadata.md)
- [IotaExchangeCredentials](docs/Model/IotaExchangeCredentials.md)
- [IotaExchangeCredentialsOK](docs/Model/IotaExchangeCredentialsOK.md)
- [IotaExchangeCredentialsOKCredentials](docs/Model/IotaExchangeCredentialsOKCredentials.md)
- [ListConfigurationOK](docs/Model/ListConfigurationOK.md)
- [ListLoggedConsentsOK](docs/Model/ListLoggedConsentsOK.md)
- [ListPexQueriesOK](docs/Model/ListPexQueriesOK.md)
- [MessagePublishingError](docs/Model/MessagePublishingError.md)
- [NotFoundError](docs/Model/NotFoundError.md)
- [OperationForbiddenError](docs/Model/OperationForbiddenError.md)
- [PexQueryDto](docs/Model/PexQueryDto.md)
- [PrepareRequest](docs/Model/PrepareRequest.md)
- [PrepareRequestCreated](docs/Model/PrepareRequestCreated.md)
- [PrepareRequestCreatedData](docs/Model/PrepareRequestCreatedData.md)
- [ResourceLimitExceededError](docs/Model/ResourceLimitExceededError.md)
- [SavePexQueriesUpdateInput](docs/Model/SavePexQueriesUpdateInput.md)
- [SavePexQueriesUpdateInputQueriesInner](docs/Model/SavePexQueriesUpdateInputQueriesInner.md)
- [UpdateConfigurationByIdInput](docs/Model/UpdateConfigurationByIdInput.md)
- [UpdateConfigurationByIdOK](docs/Model/UpdateConfigurationByIdOK.md)
- [UpdatePexQueryInput](docs/Model/UpdatePexQueryInput.md)
- [VPTokenValidationError](docs/Model/VPTokenValidationError.md)

## Authorization

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

- **Type**: Bearer authentication (JWT)

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

## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

info@affinidi.com

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `1.0.0`
  - Generator version: `7.9.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
