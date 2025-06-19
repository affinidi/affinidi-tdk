# Affinidi TDK - Vault

The Affinidi TDK Vault package provides libraries and tools for embedding Affinidi Vault into your existing Dart applications. It implements the Self-Sovereign Identity (SSI), a fundamental concept of managing digital identities in a decentralised manner.

It allows you to manage multiple profiles representing your digital identity based on different contexts, including the data related to the profile stored in secure cloud storage; for example, you can have an identity for shopping, banking, or work.

## Requirements

- Dart SDK version ^3.6.0

## Installation

### Core Vault Package

Run:

```bash
dart pub add affinidi_tdk_vault
```

or manually add the package to your `pubspec.yaml` file:

```yaml
dependencies:
  affinidi_tdk_vault: ^<version_number>
```

### For Cloud Storage (VFS)

To utilize cloud storage capabilities, you'll also need the Vault Data Manager package:

```bash
dart pub add affinidi_tdk_vault_data_manager
```

or add to your `pubspec.yaml`:

```yaml
dependencies:
  affinidi_tdk_vault: ^<version_number>
  affinidi_tdk_vault_data_manager: ^<version_number>
```

Then run:

```bash
dart pub get
```

For more information, visit the pub.dev install page of the Affinidi TDK - Vault package.

## Usage

After successfully installing the package, import it into your code.

```dart
import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';

void main() async {
  // KeyStorage
  final keyStorage = InMemoryVaultStore();
  var accountIndex = 0;
  await keyStorage.writeAccountIndex(accountIndex);

  // seed storage
  final seed = Uint8List.fromList(List.generate(32, (idx) => idx + 1));
  await keyStorage.setSeed(seed);

  // initialization
  const vfsRepositoryId = 'vfs';
  final profileRepositories = <String, ProfileRepository>{
    vfsRepositoryId: VfsProfileRepository(vfsRepositoryId),
  };

  // Create vault from vault store
  final vault = await Vault.fromVaultStore(
    keyStorage,
    profileRepositories: profileRepositories,
    defaultProfileRepositoryId: vfsRepositoryId,
  );

  // Must initialize vault before being able to access any of the repositories
  await vault.ensureInitialized();
}

```

**Note**: The example above uses `VfsProfileRepository` from the `affinidi_tdk_vault_data_manager` package to enable cloud storage functionality. If you only need local storage or custom implementations, you can use just the core vault package.

For more sample usage, go to the [example folder](https://github.com/affinidi/affinidi-tdk/tree/main/libs/dart/vault/example).


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