# openapi

Affinidi Key Management Service

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Build package: org.openapitools.codegen.languages.DartClientCodegen

## Requirements

Dart 2.12 or later

## Installation & Usage

### Github

If this Dart package is published to Github, add the following dependency to your pubspec.yaml

```
dependencies:
  openapi:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```

### Local

To use the package in your local drive, add the following dependency to your pubspec.yaml

```
dependencies:
  openapi:
    path: /path/to/openapi
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:openapi/api.dart';

```

## Documentation for API Endpoints

All URIs are relative to _http://localhost_

| Class | Method | HTTP request | Description |
| ----- | ------ | ------------ | ----------- |

## Documentation For Models

- [CreateKeysConfigInputDto](doc//CreateKeysConfigInputDto.md)
- [CreateKeysConfigResultDto](doc//CreateKeysConfigResultDto.md)
- [CreateSeedResultDto](doc//CreateSeedResultDto.md)
- [DecryptByPrivateKeyInputDto](doc//DecryptByPrivateKeyInputDto.md)
- [DecryptByPrivateKeyResultDto](doc//DecryptByPrivateKeyResultDto.md)
- [Error](doc//Error.md)
- [ErrorDetail](doc//ErrorDetail.md)
- [ExportSeedResultDto](doc//ExportSeedResultDto.md)
- [GetKeyResultDto](doc//GetKeyResultDto.md)
- [GetSeedResultDto](doc//GetSeedResultDto.md)
- [ImportSeedMnemonicInputDto](doc//ImportSeedMnemonicInputDto.md)
- [ImportSeedRawInputDto](doc//ImportSeedRawInputDto.md)
- [ListSeedResultDto](doc//ListSeedResultDto.md)
- [ListSeedResultDtoRecordsInner](doc//ListSeedResultDtoRecordsInner.md)
- [SignCredentialInputDto](doc//SignCredentialInputDto.md)
- [SignCredentialResultDto](doc//SignCredentialResultDto.md)
- [SignInputDto](doc//SignInputDto.md)
- [SignJwtInputDto](doc//SignJwtInputDto.md)
- [SignJwtResultDto](doc//SignJwtResultDto.md)
- [SignResultDto](doc//SignResultDto.md)

## Documentation For Authorization

Authentication schemes defined for the API:

### ProjectTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

## Author