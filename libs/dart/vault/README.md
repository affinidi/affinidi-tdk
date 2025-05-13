# Affinidi TDK - Vault

The Affinidi TDK Vault package provides libraries and tools for embedding Affinidi Vault into your existing Dart applications. It implements the Self-Sovereign Identity (SSI), a fundamental concept of managing digital identities in a decentralised manner.

It allows you to manage multiple profiles representing your digital identity based on different contexts, including the data related to the profile stored in secure cloud storage; for example, you can have an identity for shopping, banking, or work.

*This package is still in **EXPERIMENTAL** status.* 

> **IMPORTANT:**
> This project does not collect or process any personal data. However, when used as part of a broader system or application that handles personally identifiable information (PII), users are responsible for ensuring that any such use complies with applicable privacy laws and data protection obligations.

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

and then run the command below to install the package:

```bash
dart pub get
```

For more information, visit the pub.dev install page of the Affinidi TDK - Vault package.

## Usage

After successfully installing the package, import it into your code.

```dart
import 'dart:typed_data';

import 'package:base_codecs/base_codecs.dart';
import 'package:iam_api_service/iam_api_service.dart';
import 'package:ssi/src/wallet/key_store/in_memory_key_store.dart';
import 'package:ssi/ssi.dart';
import 'package:storages_interface/storages.dart';
import 'package:vault_interface/vault.dart';

void main() async {
  // KeyStorage
  final accountIndex = 23;
  final keyStorage = InMemoryVaultStore();
  await keyStorage.writeAccountIndex(accountIndex);

  // seed storage
  final seed = Uint8List.fromList(List.generate(32, (idx) => idx + 1));

  // initialization
  const vfsRepositoryId = 'vfs';
  final profileRepositories = <String, ProfileRepository>{
    vfsRepositoryId: VfsProfileRepository(vfsRepositoryId),
  };

  // from wallet
  final keyStore = InMemoryKeyStore();
  final wallet = await Bip32Wallet.fromSeed(seed, keyStore);
  final vault = Vault(
    wallet: wallet,
    vaultStore: keyStorage,
    profileRepositories: profileRepositories,
    defaultProfileRepositoryId: vfsRepositoryId,
  );

  // Must initialize vault before being able to access any of the repositories
  await vault.ensureInitialized();
}

```

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