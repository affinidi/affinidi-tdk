# affinidi_tdk_credential_issuance_client (EXPERIMENTAL)

Affinidi TDK dart client for Affinidi CREDENTIAL ISSUANCE

## Requirements

- Dart 2.15.0+
- Dio 5.0.0+ (https://pub.dev/packages/dio)

## Installation & Usage

### pub.dev

To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_credential_issuance_client: ^1.0.0
```

### Github

This Dart package is published to Github, please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_credential_issuance_client:
    git:
      url: https://github.com/affinidi/affinidi-tdk.git
      ref: main
      path: clients/dart/credential_issuance_client
```

### Local development

To use the package from your local drive, please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_credential_issuance_client:
    path: /path/to/affinidi_tdk_credential_issuance_client
```

### Install dependencies

```bash
dart pub get
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';


final api = AffinidiTdkCredentialIssuanceClient().getConfigurationApi();
final CreateIssuanceConfigInput createIssuanceConfigInput = ; // CreateIssuanceConfigInput | Request body of create configuration

try {
    final response = await api.createIssuanceConfig(createIssuanceConfigInput);
    print(response);
} catch on DioException (e) {
    print("Exception when calling ConfigurationApi->createIssuanceConfig: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Class                                         | Method                                                                                           | HTTP request                                                                                | Description                                           |
| --------------------------------------------- | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------- | ----------------------------------------------------- |
| [_ConfigurationApi_](doc/ConfigurationApi.md) | [**createIssuanceConfig**](doc/ConfigurationApi.md#createissuanceconfig)                         | **POST** /v1/configurations                                                                 |
| [_ConfigurationApi_](doc/ConfigurationApi.md) | [**deleteIssuanceConfigById**](doc/ConfigurationApi.md#deleteissuanceconfigbyid)                 | **DELETE** /v1/configurations/{configurationId}                                             |
| [_ConfigurationApi_](doc/ConfigurationApi.md) | [**getIssuanceConfigById**](doc/ConfigurationApi.md#getissuanceconfigbyid)                       | **GET** /v1/configurations/{configurationId}                                                |
| [_ConfigurationApi_](doc/ConfigurationApi.md) | [**getIssuanceConfigList**](doc/ConfigurationApi.md#getissuanceconfiglist)                       | **GET** /v1/configurations                                                                  |
| [_ConfigurationApi_](doc/ConfigurationApi.md) | [**updateIssuanceConfigById**](doc/ConfigurationApi.md#updateissuanceconfigbyid)                 | **PUT** /v1/configurations/{configurationId}                                                |
| [_CredentialsApi_](doc/CredentialsApi.md)     | [**batchCredential**](doc/CredentialsApi.md#batchcredential)                                     | **POST** /v1/{projectId}/batch_credential                                                   | Allows wallets to claim multiple credentials at once. |
| [_CredentialsApi_](doc/CredentialsApi.md)     | [**generateCredentials**](doc/CredentialsApi.md#generatecredentials)                             | **POST** /v1/{projectId}/credential                                                         |
| [_CredentialsApi_](doc/CredentialsApi.md)     | [**getClaimedCredentials**](doc/CredentialsApi.md#getclaimedcredentials)                         | **GET** /v1/{projectId}/configurations/{configurationId}/credentials                        | Get claimed credential in the specified range         |
| [_CredentialsApi_](doc/CredentialsApi.md)     | [**getIssuanceIdClaimedCredential**](doc/CredentialsApi.md#getissuanceidclaimedcredential)       | **GET** /v1/{projectId}/configurations/{configurationId}/issuances/{issuanceId}/credentials | Get claimed VC linked to the issuanceId               |
| [_DefaultApi_](doc/DefaultApi.md)             | [**changeCredentialStatus**](doc/DefaultApi.md#changecredentialstatus)                           | **POST** /v1/{projectId}/configurations/{configurationId}/issuance/change-status            | change credential status.                             |
| [_DefaultApi_](doc/DefaultApi.md)             | [**listIssuanceDataRecords**](doc/DefaultApi.md#listissuancedatarecords)                         | **GET** /v1/{projectId}/configurations/{configurationId}/issuance/issuance-data-records     | List records                                          |
| [_IssuanceApi_](doc/IssuanceApi.md)           | [**issuanceState**](doc/IssuanceApi.md#issuancestate)                                            | **GET** /v1/{projectId}/issuance/state/{issuanceId}                                         |
| [_IssuanceApi_](doc/IssuanceApi.md)           | [**issueCredentials**](doc/IssuanceApi.md#issuecredentials)                                      | **POST** /v1/{projectId}/credential/issue                                                   |
| [_IssuanceApi_](doc/IssuanceApi.md)           | [**listIssuance**](doc/IssuanceApi.md#listissuance)                                              | **GET** /v1/{projectId}/issuance                                                            |
| [_IssuanceApi_](doc/IssuanceApi.md)           | [**startIssuance**](doc/IssuanceApi.md#startissuance)                                            | **POST** /v1/{projectId}/issuance/start                                                     |
| [_OfferApi_](doc/OfferApi.md)                 | [**getCredentialOffer**](doc/OfferApi.md#getcredentialoffer)                                     | **GET** /v1/{projectId}/offers/{issuanceId}                                                 |
| [_WellKnownApi_](doc/WellKnownApi.md)         | [**getWellKnownOpenIdCredentialIssuer**](doc/WellKnownApi.md#getwellknownopenidcredentialissuer) | **GET** /v1/{projectId}/.well-known/openid-credential-issuer                                |

## Documentation For Models

- [ActionForbiddenError](doc/ActionForbiddenError.md)
- [ActionForbiddenErrorDetailsInner](doc/ActionForbiddenErrorDetailsInner.md)
- [BatchCredentialInput](doc/BatchCredentialInput.md)
- [BatchCredentialInputCredentialRequestsInner](doc/BatchCredentialInputCredentialRequestsInner.md)
- [BatchCredentialResponse](doc/BatchCredentialResponse.md)
- [BatchCredentialResponseCredentialResponsesInner](doc/BatchCredentialResponseCredentialResponsesInner.md)
- [ChangeCredentialStatus400Response](doc/ChangeCredentialStatus400Response.md)
- [ChangeCredentialStatusInput](doc/ChangeCredentialStatusInput.md)
- [ChangeStatusForbiddenError](doc/ChangeStatusForbiddenError.md)
- [CisConfigurationWebhookSetting](doc/CisConfigurationWebhookSetting.md)
- [CisConfigurationWebhookSettingEndpoint](doc/CisConfigurationWebhookSettingEndpoint.md)
- [ClaimedCredentialListResponse](doc/ClaimedCredentialListResponse.md)
- [ClaimedCredentialResponse](doc/ClaimedCredentialResponse.md)
- [CorsBatchCredentialOK](doc/CorsBatchCredentialOK.md)
- [CorsGenerateCredentialsOK](doc/CorsGenerateCredentialsOK.md)
- [CorsGetClaimedCredentialsOK](doc/CorsGetClaimedCredentialsOK.md)
- [CorsGetCredentialOfferOK](doc/CorsGetCredentialOfferOK.md)
- [CorsGetIssuanceIdClaimedCredentialOK](doc/CorsGetIssuanceIdClaimedCredentialOK.md)
- [CorsGetWellKnownOpenIdCredentialIssuerOK](doc/CorsGetWellKnownOpenIdCredentialIssuerOK.md)
- [CreateCredentialInput](doc/CreateCredentialInput.md)
- [CreateIssuanceConfig400Response](doc/CreateIssuanceConfig400Response.md)
- [CreateIssuanceConfigInput](doc/CreateIssuanceConfigInput.md)
- [CredentialIssuanceIdExistError](doc/CredentialIssuanceIdExistError.md)
- [CredentialOfferClaimedError](doc/CredentialOfferClaimedError.md)
- [CredentialOfferExpiredError](doc/CredentialOfferExpiredError.md)
- [CredentialOfferResponse](doc/CredentialOfferResponse.md)
- [CredentialOfferResponseGrants](doc/CredentialOfferResponseGrants.md)
- [CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode](doc/CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode.md)
- [CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode](doc/CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode.md)
- [CredentialProof](doc/CredentialProof.md)
- [CredentialResponse](doc/CredentialResponse.md)
- [CredentialResponseDeferred](doc/CredentialResponseDeferred.md)
- [CredentialResponseImmediate](doc/CredentialResponseImmediate.md)
- [CredentialResponseImmediateCNonceExpiresIn](doc/CredentialResponseImmediateCNonceExpiresIn.md)
- [CredentialResponseImmediateCredential](doc/CredentialResponseImmediateCredential.md)
- [CredentialSubjectNotValidError](doc/CredentialSubjectNotValidError.md)
- [CredentialSupportedObject](doc/CredentialSupportedObject.md)
- [DeferredCredentialInput](doc/DeferredCredentialInput.md)
- [FlowData](doc/FlowData.md)
- [FlowDataStatusListsDetailsInner](doc/FlowDataStatusListsDetailsInner.md)
- [GenerateCredentials400Response](doc/GenerateCredentials400Response.md)
- [GetCredentialOffer400Response](doc/GetCredentialOffer400Response.md)
- [InvalidCredentialRequestError](doc/InvalidCredentialRequestError.md)
- [InvalidCredentialTypeError](doc/InvalidCredentialTypeError.md)
- [InvalidIssuerWalletError](doc/InvalidIssuerWalletError.md)
- [InvalidJwtTokenError](doc/InvalidJwtTokenError.md)
- [InvalidParameterError](doc/InvalidParameterError.md)
- [InvalidProofError](doc/InvalidProofError.md)
- [IssuanceConfigDto](doc/IssuanceConfigDto.md)
- [IssuanceConfigListResponse](doc/IssuanceConfigListResponse.md)
- [IssuanceConfigMiniDto](doc/IssuanceConfigMiniDto.md)
- [IssuanceStateResponse](doc/IssuanceStateResponse.md)
- [ListIssuanceRecordResponse](doc/ListIssuanceRecordResponse.md)
- [ListIssuanceResponse](doc/ListIssuanceResponse.md)
- [ListIssuanceResponseIssuancesInner](doc/ListIssuanceResponseIssuancesInner.md)
- [MissingHolderDidError](doc/MissingHolderDidError.md)
- [NotFoundError](doc/NotFoundError.md)
- [ProjectCredentialConfigExistError](doc/ProjectCredentialConfigExistError.md)
- [ProjectCredentialConfigNotExistError](doc/ProjectCredentialConfigNotExistError.md)
- [RevocationForbiddenError](doc/RevocationForbiddenError.md)
- [StartIssuance400Response](doc/StartIssuance400Response.md)
- [StartIssuanceInput](doc/StartIssuanceInput.md)
- [StartIssuanceInputDataInner](doc/StartIssuanceInputDataInner.md)
- [StartIssuanceInputDataInnerMetaData](doc/StartIssuanceInputDataInnerMetaData.md)
- [StartIssuanceInputDataInnerStatusListDetailsInner](doc/StartIssuanceInputDataInnerStatusListDetailsInner.md)
- [StartIssuanceResponse](doc/StartIssuanceResponse.md)
- [SupportedCredentialMetadata](doc/SupportedCredentialMetadata.md)
- [SupportedCredentialMetadataDisplayInner](doc/SupportedCredentialMetadataDisplayInner.md)
- [SupportedCredentialMetadataItemLogo](doc/SupportedCredentialMetadataItemLogo.md)
- [UpdateIssuanceConfigInput](doc/UpdateIssuanceConfigInput.md)
- [VcClaimedError](doc/VcClaimedError.md)
- [WellKnownOpenIdCredentialIssuerResponse](doc/WellKnownOpenIdCredentialIssuerResponse.md)
- [WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner](doc/WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner.md)
- [WellKnownOpenIdCredentialIssuerResponseDisplay](doc/WellKnownOpenIdCredentialIssuerResponseDisplay.md)
- [WellKnownOpenIdCredentialIssuerResponseDisplayLogo](doc/WellKnownOpenIdCredentialIssuerResponseDisplayLogo.md)

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
