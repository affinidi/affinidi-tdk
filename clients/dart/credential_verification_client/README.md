# affinidi_tdk_credential_verification_client (EXPERIMENTAL)

Affinidi TDK dart client for Affinidi CREDENTIAL VERIFICATION

## Requirements

- Dart 2.15.0+
- Dio 5.0.0+ (https://pub.dev/packages/dio)

## Installation & Usage

### pub.dev

To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_credential_verification_client: ^1.0.0
```

### Github

This Dart package is published to Github, please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_credential_verification_client:
    git:
      url: https://github.com/affinidi/affinidi-tdk.git
      ref: main
      path: clients/dart/credential_verification_client
```

### Local development

To use the package from your local drive, please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_credential_verification_client:
    path: /path/to/affinidi_tdk_credential_verification_client
```

### Install dependencies

```bash
dart pub get
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:affinidi_tdk_credential_verification_client/affinidi_tdk_credential_verification_client.dart';


final api = AffinidiTdkCredentialVerificationClient().getDefaultApi();
final VerifyCredentialInput verifyCredentialInput = ; // VerifyCredentialInput | VerifyCredentials

try {
    final response = await api.verifyCredentials(verifyCredentialInput);
    print(response);
} catch on DioException (e) {
    print("Exception when calling DefaultApi->verifyCredentials: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/ver*

| Class                             | Method                                                         | HTTP request                     | Description  |
| --------------------------------- | -------------------------------------------------------------- | -------------------------------- | ------------ |
| [_DefaultApi_](doc/DefaultApi.md) | [**verifyCredentials**](doc/DefaultApi.md#verifycredentials)   | **POST** /v1/verifier/verify-vcs | Verifying VC |
| [_DefaultApi_](doc/DefaultApi.md) | [**verifyPresentation**](doc/DefaultApi.md#verifypresentation) | **POST** /v1/verifier/verify-vp  | Verifying VP |

## Documentation For Models

- [Constraints](doc/Constraints.md)
- [ConstraintsStatuses](doc/ConstraintsStatuses.md)
- [CredentialRequirements](doc/CredentialRequirements.md)
- [CredentialRequirementsConstraints](doc/CredentialRequirementsConstraints.md)
- [Descriptor](doc/Descriptor.md)
- [Error](doc/Error.md)
- [ErrorDetail](doc/ErrorDetail.md)
- [EvaluateVpOutput](doc/EvaluateVpOutput.md)
- [Field](doc/Field.md)
- [Filter](doc/Filter.md)
- [FilterConst](doc/FilterConst.md)
- [FilterItems](doc/FilterItems.md)
- [Format](doc/Format.md)
- [HolderSubject](doc/HolderSubject.md)
- [InputDescriptor](doc/InputDescriptor.md)
- [InvalidParameterError](doc/InvalidParameterError.md)
- [JwtObject](doc/JwtObject.md)
- [LdpObject](doc/LdpObject.md)
- [NestedDescriptor](doc/NestedDescriptor.md)
- [NotFoundError](doc/NotFoundError.md)
- [NotFoundErrorDetailsInner](doc/NotFoundErrorDetailsInner.md)
- [PdStatus](doc/PdStatus.md)
- [PresentationDefinition](doc/PresentationDefinition.md)
- [PresentationSubmission](doc/PresentationSubmission.md)
- [SubmissionRequirement](doc/SubmissionRequirement.md)
- [ValidateJwtInput](doc/ValidateJwtInput.md)
- [ValidateJwtOutput](doc/ValidateJwtOutput.md)
- [VerifyCredentialInput](doc/VerifyCredentialInput.md)
- [VerifyCredentialOutput](doc/VerifyCredentialOutput.md)
- [VerifyPresentationInput](doc/VerifyPresentationInput.md)
- [VerifyPresentationOutput](doc/VerifyPresentationOutput.md)
- [VerifyPresentationOutputErrors](doc/VerifyPresentationOutputErrors.md)
- [W3cCredentialStatus](doc/W3cCredentialStatus.md)
- [W3cProof](doc/W3cProof.md)

## Documentation For Authorization

Authentication schemes defined for the API:

### UserTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

### ProjectTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

## Author

info@affinidi.com
