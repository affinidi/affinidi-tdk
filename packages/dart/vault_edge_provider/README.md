# Affinidi TDK - Vault Edge Provider

The Affinidi TDK - Vault Edge Provider package is a Vault implementation of the ProfileRepository that manages user profiles, including the related credentials and files, locally *(edge)* on the device.

## Key Features

- Manage profiles
    - Create a new profile
    - List all available profiles
    - Update an existing profile
    - Delete an existing profile

- Manage files related to a profile
    - Create a file
    - Create folders to organise files
    - List contents of a folder
    - Get the content of a file

- Manage credentials related to a profile
    - Save a credential
    - Delete a credential
    - Get the credential data

- Provides encryption service to store data on edge securely.

## Requirements

- Dart SDK version ^3.6.0

## Installation

Run:

```bash
dart pub add affinidi_tdk_vault_edge_provider
```

or manually add the package to your `pubspec.yaml` file:

```yaml
dependencies:
  affinidi_tdk_vault_edge_provider: ^<version_number>
```

and then run the command below to install the package:

```bash
dart pub get
```

For more information, visit the pub.dev install page of the package.

## Usage

After successfully installing the package, import it into your code.

```dart
import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';

/// This example demonstrates basic encryption and decryption using
/// the Vault Edge Provider's encryption service.
Future<void> main() async {
  final cipherKey = Uint8List.fromList(List.generate(32, (i) => i % 256));
  final vaultStore = InMemoryVaultStore();
  await vaultStore.setContentKey(cipherKey);
  print('Cipher key created');

  final encryptionService = EdgeEncryptionService(vaultStore: vaultStore);

  final originalText = 'Hello';
  final originalData = utf8.encode(originalText);

  final encryptedData =
      await encryptionService.encryptData(Uint8List.fromList(originalData));
}
```

For more sample usage, go to the [example folder](https://github.com/affinidi/affinidi-tdk/tree/main/packages/dart/vault_edge_provider/example).

## Regenerate Classes

The package uses code generation. To regenerate classes, run:

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Support & feedback

If you face any issues or have suggestions, please don't hesitate to contact us using [this link](https://share.hsforms.com/1i-4HKZRXSsmENzXtPdIG4g8oa2v).

### Reporting technical issues

If you have a technical issue with the package's codebase, you can also create an issue directly in GitHub.

1. Ensure the bug was not already reported by searching on GitHub under
   [Issues](https://github.com/affinidi/affinidi-tdk/issues).

2. If you're unable to find an open issue addressing the problem,
   [open a new one](https://github.com/affinidi/affinidi-tdk/issues/new).
   Be sure to include a **title and clear description**, as much relevant information as possible,
   and a **code sample** or an **executable test case** demonstrating the expected behaviour that is not occurring.

## Contributing

Want to contribute?

Head over to our [CONTRIBUTING](https://github.com/affinidi/affinidi-tdk/blob/main/CONTRIBUTING.md) guidelines.
