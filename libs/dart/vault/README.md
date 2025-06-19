# Affinidi TDK - Vault

The Affinidi TDK Vault package provides libraries and tools for embedding Affinidi Vault into your existing Dart applications. It implements the Self-Sovereign Identity (SSI), a fundamental concept of managing digital identities in a decentralised manner.

It allows you to manage multiple profiles representing your digital identity based on different contexts, including the data related to the profile stored in secure cloud storage; for example, you can have an identity for shopping, banking, or work.

## Requirements

- Dart SDK version ^3.6.0

## Installation

Run:

```bash
dart pub add affinidi_tdk_vault
```

or manually add the package to your `pubspec.yaml` file:

```yaml
dependencies:
  affinidi_tdk_vault: ^<version_number>
```

### Usage

After successfully installing the package, import it into your code.   
(Note: the sample code below requires the installation of [affinidi_tdk_vault_data_manager](https://pub.dev/packages/affinidi_tdk_vault_data_manager) as a dependency.)

```dart
import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';

void main() async {
  // Initialise InMemory storage
  final accountIndex = 0;
  final vaultStore = InMemoryVaultStore();
  await vaultStore.writeAccountIndex(accountIndex);

  // Generate seed from the storage layer
  final seed = vaultStore.getRandomSeed();
  await keyStorage.setSeed(seed);

  // Initialise profile interface
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