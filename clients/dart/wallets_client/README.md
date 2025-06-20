# affinidi_tdk_wallets_client (EXPERIMENTAL)

Affinidi TDK dart client for Affinidi WALLETS

## Requirements

- Dart 2.15.0+
- Dio 5.0.0+ (https://pub.dev/packages/dio)

## Installation & Usage

### pub.dev

To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_wallets_client: ^1.0.0
```

### Github

This Dart package is published to Github, please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_wallets_client:
    git:
      url: https://github.com/affinidi/affinidi-tdk.git
      ref: main
      path: clients/dart/wallets_client
```

### Local development

To use the package from your local drive, please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_wallets_client:
    path: /path/to/affinidi_tdk_wallets_client
```

### Install dependencies

```bash
dart pub get
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:affinidi_tdk_wallets_client/affinidi_tdk_wallets_client.dart';


final api = AffinidiTdkWalletsClient().getRevocationApi();
final String projectId = projectId_example; // String | Description for projectId.
final String walletId = walletId_example; // String | Description for walletId.
final String statusId = statusId_example; // String | Description for statusId.

try {
    final response = await api.getRevocationCredentialStatus(projectId, walletId, statusId);
    print(response);
} catch on DioException (e) {
    print("Exception when calling RevocationApi->getRevocationCredentialStatus: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/cwe*

| Class                                   | Method                                                                                  | HTTP request                                                                       | Description                        |
| --------------------------------------- | --------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------- |
| [_RevocationApi_](doc/RevocationApi.md) | [**getRevocationCredentialStatus**](doc/RevocationApi.md#getrevocationcredentialstatus) | **GET** /v1/projects/{projectId}/wallets/{walletId}/revocation-statuses/{statusId} |
| [_RevocationApi_](doc/RevocationApi.md) | [**getRevocationListCredential**](doc/RevocationApi.md#getrevocationlistcredential)     | **GET** /v1/wallets/{walletId}/revocation-list/{listId}                            | Return revocation list credential. |
| [_RevocationApi_](doc/RevocationApi.md) | [**revokeCredential**](doc/RevocationApi.md#revokecredential)                           | **POST** /v1/wallets/{walletId}/revoke                                             | Revoke Credential.                 |
| [_WalletApi_](doc/WalletApi.md)         | [**createWallet**](doc/WalletApi.md#createwallet)                                       | **POST** /v1/wallets                                                               |
| [_WalletApi_](doc/WalletApi.md)         | [**deleteWallet**](doc/WalletApi.md#deletewallet)                                       | **DELETE** /v1/wallets/{walletId}                                                  |
| [_WalletApi_](doc/WalletApi.md)         | [**getWallet**](doc/WalletApi.md#getwallet)                                             | **GET** /v1/wallets/{walletId}                                                     |
| [_WalletApi_](doc/WalletApi.md)         | [**listWallets**](doc/WalletApi.md#listwallets)                                         | **GET** /v1/wallets                                                                |
| [_WalletApi_](doc/WalletApi.md)         | [**signCredential**](doc/WalletApi.md#signcredential)                                   | **POST** /v1/wallets/{walletId}/sign-credential                                    |
| [_WalletApi_](doc/WalletApi.md)         | [**signJwtToken**](doc/WalletApi.md#signjwttoken)                                       | **POST** /v1/wallets/{walletId}/sign-jwt                                           |
| [_WalletApi_](doc/WalletApi.md)         | [**updateWallet**](doc/WalletApi.md#updatewallet)                                       | **PATCH** /v1/wallets/{walletId}                                                   |

## Documentation For Models

- [CreateWalletInput](doc/CreateWalletInput.md)
- [CreateWalletResponse](doc/CreateWalletResponse.md)
- [EntityNotFoundError](doc/EntityNotFoundError.md)
- [GetRevocationCredentialStatusOK](doc/GetRevocationCredentialStatusOK.md)
- [GetRevocationListCredentialResultDto](doc/GetRevocationListCredentialResultDto.md)
- [InvalidDidParameterError](doc/InvalidDidParameterError.md)
- [InvalidParameterError](doc/InvalidParameterError.md)
- [KeyNotFoundError](doc/KeyNotFoundError.md)
- [NotFoundError](doc/NotFoundError.md)
- [OperationForbiddenError](doc/OperationForbiddenError.md)
- [RevokeCredentialInput](doc/RevokeCredentialInput.md)
- [ServiceErrorResponse](doc/ServiceErrorResponse.md)
- [ServiceErrorResponseDetailsInner](doc/ServiceErrorResponseDetailsInner.md)
- [SignCredential400Response](doc/SignCredential400Response.md)
- [SignCredentialInputDto](doc/SignCredentialInputDto.md)
- [SignCredentialInputDtoUnsignedCredentialParams](doc/SignCredentialInputDtoUnsignedCredentialParams.md)
- [SignCredentialResultDto](doc/SignCredentialResultDto.md)
- [SignCredentialsDm1JwtInputDto](doc/SignCredentialsDm1JwtInputDto.md)
- [SignCredentialsDm1JwtResultDto](doc/SignCredentialsDm1JwtResultDto.md)
- [SignCredentialsDm1LdInputDto](doc/SignCredentialsDm1LdInputDto.md)
- [SignCredentialsDm1LdResultDto](doc/SignCredentialsDm1LdResultDto.md)
- [SignCredentialsDm2LdInputDto](doc/SignCredentialsDm2LdInputDto.md)
- [SignCredentialsDm2LdResultDto](doc/SignCredentialsDm2LdResultDto.md)
- [SignCredentialsDm2SdJwtInputDto](doc/SignCredentialsDm2SdJwtInputDto.md)
- [SignCredentialsDm2SdJwtResultDto](doc/SignCredentialsDm2SdJwtResultDto.md)
- [SignJwtToken](doc/SignJwtToken.md)
- [SignJwtTokenOK](doc/SignJwtTokenOK.md)
- [SigningFailedError](doc/SigningFailedError.md)
- [UpdateWalletInput](doc/UpdateWalletInput.md)
- [WalletDto](doc/WalletDto.md)
- [WalletDtoKeysInner](doc/WalletDtoKeysInner.md)
- [WalletsListDto](doc/WalletsListDto.md)

## Documentation For Authorization

Authentication schemes defined for the API:

### ProjectTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

## Author

info@affinidi.com
