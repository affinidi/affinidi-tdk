# affinidi_tdk_wallets_client

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Generator version: 7.9.0
- Build package: org.openapitools.codegen.languages.DartClientCodegen
  For more information, please visit [https://github.com/affinidi/affinidi-tdk](https://github.com/affinidi/affinidi-tdk)

## Requirements

Dart 2.12 or later

## Installation & Usage

### Github

If this Dart package is published to Github, add the following dependency to your pubspec.yaml

```
dependencies:
  affinidi_tdk_wallets_client:
    git: https://github.com/affinidi/affinidi-tdk.git
```

### Local

To use the package in your local drive, add the following dependency to your pubspec.yaml

```
dependencies:
  affinidi_tdk_wallets_client:
    path: /path/to/affinidi_tdk_wallets_client
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';

// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = RevocationApi();
final projectId = projectId_example; // String | Description for projectId.
final walletId = walletId_example; // String | Description for walletId.
final statusId = statusId_example; // String | Description for statusId.

try {
    final result = api_instance.getRevocationCredentialStatus(projectId, walletId, statusId);
    print(result);
} catch (e) {
    print('Exception when calling RevocationApi->getRevocationCredentialStatus: $e\n');
}

```

## Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/cwe*

| Class           | Method                                                                                   | HTTP request                                                                       | Description                        |
| --------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------- |
| _RevocationApi_ | [**getRevocationCredentialStatus**](doc//RevocationApi.md#getrevocationcredentialstatus) | **GET** /v1/projects/{projectId}/wallets/{walletId}/revocation-statuses/{statusId} |
| _RevocationApi_ | [**getRevocationListCredential**](doc//RevocationApi.md#getrevocationlistcredential)     | **GET** /v1/wallets/{walletId}/revocation-list/{listId}                            | Return revocation list credential. |
| _RevocationApi_ | [**revokeCredential**](doc//RevocationApi.md#revokecredential)                           | **POST** /v1/wallets/{walletId}/revoke                                             | Revoke Credential.                 |
| _WalletApi_     | [**createWallet**](doc//WalletApi.md#createwallet)                                       | **POST** /v1/wallets                                                               |
| _WalletApi_     | [**deleteWallet**](doc//WalletApi.md#deletewallet)                                       | **DELETE** /v1/wallets/{walletId}                                                  |
| _WalletApi_     | [**getWallet**](doc//WalletApi.md#getwallet)                                             | **GET** /v1/wallets/{walletId}                                                     |
| _WalletApi_     | [**listWallets**](doc//WalletApi.md#listwallets)                                         | **GET** /v1/wallets                                                                |
| _WalletApi_     | [**signCredential**](doc//WalletApi.md#signcredential)                                   | **POST** /v1/wallets/{walletId}/sign-credential                                    |
| _WalletApi_     | [**signJwtToken**](doc//WalletApi.md#signjwttoken)                                       | **POST** /v1/wallets/{walletId}/sign-jwt                                           |
| _WalletApi_     | [**updateWallet**](doc//WalletApi.md#updatewallet)                                       | **PATCH** /v1/wallets/{walletId}                                                   |

## Documentation For Models

- [CreateWalletInput](doc//CreateWalletInput.md)
- [CreateWalletResponse](doc//CreateWalletResponse.md)
- [DidKeyInputParams](doc//DidKeyInputParams.md)
- [DidWebInputParams](doc//DidWebInputParams.md)
- [EntityNotFoundError](doc//EntityNotFoundError.md)
- [GetRevocationCredentialStatusOK](doc//GetRevocationCredentialStatusOK.md)
- [GetRevocationListCredentialResultDto](doc//GetRevocationListCredentialResultDto.md)
- [InvalidDidParameterError](doc//InvalidDidParameterError.md)
- [InvalidParameterError](doc//InvalidParameterError.md)
- [KeyNotFoundError](doc//KeyNotFoundError.md)
- [NotFoundError](doc//NotFoundError.md)
- [OperationForbiddenError](doc//OperationForbiddenError.md)
- [RevokeCredentialInput](doc//RevokeCredentialInput.md)
- [ServiceErrorResponse](doc//ServiceErrorResponse.md)
- [ServiceErrorResponseDetailsInner](doc//ServiceErrorResponseDetailsInner.md)
- [SignCredential400Response](doc//SignCredential400Response.md)
- [SignCredentialInputDto](doc//SignCredentialInputDto.md)
- [SignCredentialInputDtoUnsignedCredentialParams](doc//SignCredentialInputDtoUnsignedCredentialParams.md)
- [SignCredentialResultDto](doc//SignCredentialResultDto.md)
- [SignCredentialResultDtoSignedCredential](doc//SignCredentialResultDtoSignedCredential.md)
- [SignJwtToken](doc//SignJwtToken.md)
- [SignJwtTokenOK](doc//SignJwtTokenOK.md)
- [SigningFailedError](doc//SigningFailedError.md)
- [UpdateWalletInput](doc//UpdateWalletInput.md)
- [WalletDto](doc//WalletDto.md)
- [WalletDtoKeysInner](doc//WalletDtoKeysInner.md)
- [WalletsListDto](doc//WalletsListDto.md)

## Documentation For Authorization

Authentication schemes defined for the API:

### ProjectTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

## Author

info@affinidi.com
