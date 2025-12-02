# affinidi_tdk_consumer_iam_client

Affinidi TDK dart client for Affinidi CONSUMER IAM

## Requirements

- Dart 3.6.0+
- Dio 5.0.0+ (https://pub.dev/packages/dio)

## Installation & Usage

### pub.dev

To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_consumer_iam_client: ^1.0.0
```

### Github

This Dart package is published to Github, please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_consumer_iam_client:
    git:
      url: https://github.com/affinidi/affinidi-tdk.git
      ref: main
      path: clients/dart/consumer_iam_client
```

### Local development

To use the package from your local drive, please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_consumer_iam_client:
    path: /path/to/affinidi_tdk_consumer_iam_client
```

### Install dependencies

```bash
dart pub get
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:affinidi_tdk_consumer_iam_client/affinidi_tdk_consumer_iam_client.dart';


final api = AffinidiTdkConsumerIamClient().getAuthzApi();
final String granteeDid = granteeDid_example; // String |

try {
    api.deleteAccessVfs(granteeDid);
} catch on DioException (e) {
    print("Exception when calling AuthzApi->deleteAccessVfs: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/cid*

| Class                                       | Method                                                                            | HTTP request                                 | Description                             |
| ------------------------------------------- | --------------------------------------------------------------------------------- | -------------------------------------------- | --------------------------------------- |
| [_AuthzApi_](doc/AuthzApi.md)               | [**deleteAccessVfs**](doc/AuthzApi.md#deleteaccessvfs)                            | **DELETE** /v1/authz/vfs/access/{granteeDid} | delete access of granteeDid             |
| [_AuthzApi_](doc/AuthzApi.md)               | [**grantAccessVfs**](doc/AuthzApi.md#grantaccessvfs)                              | **POST** /v1/authz/vfs/access/{granteeDid}   | Grant access to the virtual file system |
| [_AuthzApi_](doc/AuthzApi.md)               | [**updateAccessVfs**](doc/AuthzApi.md#updateaccessvfs)                            | **PUT** /v1/authz/vfs/access/{granteeDid}    | Update access of granteeDid             |
| [_ConsumerAuthApi_](doc/ConsumerAuthApi.md) | [**consumerAuthTokenEndpoint**](doc/ConsumerAuthApi.md#consumerauthtokenendpoint) | **POST** /v1/consumer/oauth2/token           | The Consumer OAuth 2.0 Token Endpoint   |
| [_WellKnownApi_](doc/WellKnownApi.md)       | [**getWellKnownJwks**](doc/WellKnownApi.md#getwellknownjwks)                      | **GET** /.well-known/jwks.json               |

## Documentation For Models

- [ConsumerAuthTokenEndpointInput](doc/ConsumerAuthTokenEndpointInput.md)
- [ConsumerAuthTokenEndpointOutput](doc/ConsumerAuthTokenEndpointOutput.md)
- [CorsConsumerAuthTokenEndpointOK](doc/CorsConsumerAuthTokenEndpointOK.md)
- [GrantAccessInput](doc/GrantAccessInput.md)
- [GrantAccessOutput](doc/GrantAccessOutput.md)
- [InvalidDIDError](doc/InvalidDIDError.md)
- [InvalidJwtTokenError](doc/InvalidJwtTokenError.md)
- [InvalidJwtTokenErrorDetailsInner](doc/InvalidJwtTokenErrorDetailsInner.md)
- [InvalidParameterError](doc/InvalidParameterError.md)
- [JsonWebKeyDto](doc/JsonWebKeyDto.md)
- [JsonWebKeySetDto](doc/JsonWebKeySetDto.md)
- [Permission](doc/Permission.md)
- [RightsEnum](doc/RightsEnum.md)
- [UnauthorizedError](doc/UnauthorizedError.md)
- [UnexpectedError](doc/UnexpectedError.md)
- [UpdateAccessInput](doc/UpdateAccessInput.md)
- [UpdateAccessOutput](doc/UpdateAccessOutput.md)

## Documentation For Authorization

Authentication schemes defined for the API:

### ConsumerTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

## Author

info@affinidi.com
