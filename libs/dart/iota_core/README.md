# Affinidi TDK - Iota core library

The `affinidi_tdk_iota_core` library provides a method for generating the Iota credentials required to initiate the WebSocket data-sharing mode of the Affinidi Iota Framework.


## Table of Contents

- [Affinidi TDK - Iota core](#affinidi-tdk---iota-core)
  - [Table of Contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Getting Started](#getting-started)
  - [Usage](#usage)

## Requirements

- Dart SDK version ^3.6.0

## Getting Started

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  affinidi_tdk_iota_core: ^<version_number>
```

Then run:

```bash
dart pub get
```

## Usage

Once you've installed the package, import it into your Dart code:

```dart
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_iota_core/affinidi_tdk_iota_core.dart';

final provider = AuthProvider(
  projectId: env['PROJECT_ID']!,
  tokenId: env['TOKEN_ID']!,
  privateKey: env['PRIVATE_KEY']!.replaceAll('\\n', '\n'),
  // Optional parameters
  keyId: env['KEY_ID'],
  passphrase: env['PASSPHRASE'],
);

// Create Iota Token from AuthProvider Package.
final iotaToken = provider.createIotaToken(iotaConfigId: env['IOTA_CONFIG_ID']!, did: env['DID']!);

// A static method that fetches the Iota Credentials by passing an Iota JWT Token derived from the AuthProvider.
final iotaCredentials = await IotaCore.limitedTokenToIotaCredentials(iotaToken.iotaJwt);
```
