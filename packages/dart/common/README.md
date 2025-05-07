# Affinidi TDK - Common

This package provides common utilities for Affinidi TDK for Dart. It provides Vault utility functions to resolve Affinidi Vault links to issue or request credentials.

Other than that it is usually only used internally by Affinidi as a dependency for other packages. It provides URL resolution basend on the environment, but users should not concern with this and use the default production environment.

## Table of Contents

- [Affinidi TDK - Common](#affinidi-tdk---common)
  - [Table of Contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Getting Started](#getting-started)
  - [Usage](#usage)
    - [Vault claim link](#vault-claim-link)
    - [Vault share link](#vault-share-link)
    - [Environment URL resolution](#environment-url-resolution)

## Requirements

- Dart SDK version ^3.6.0

## Getting Started

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  affinidi_tdk_common: ^<version_number>
```

Then run:

```bash
dart pub get
```

## Usage

### Vault claim link

When issuing a credential, you can use this package vault utilities to build the credential claim link to Affinidi Vault:

```dart
  import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
  final affinidiVaultClaimLink =
      VaultUtils.buildClaimLink(credentialOfferUri);
```

For a complete example check [claim_credential_example.dart](./example/claim_credential_example.dart)

### Vault share link

When requesting a credential, you can use this package vault utilities to build the credential share link from Affinidi Vault:

```dart
  import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
  final affinidiVaultClaimLink =
      VaultUtils.buildShareLink(iotaRequestJwt, clientId);
```

For a complete example check [share_credential_example.dart](./example/share_credential_example.dart)

### Environment URL resolution

> **💡NOTE:** This is for internal use only. Users should default to production environment.

```dart
  import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
  final Environment development =
      Environment.environments[EnvironmentType.dev]!;
  final devApiGwUrl = Environment.fetchApiGwUrl(development);
```

For a complete example check [environment_example.dart](./example/environment_example.dart)

### Logging

```dart
  import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
  final logger = Logger.instance;
  logger.log(LogLevel.warning, "This is a warning");
  logger.warning("This is also a warning");
```
