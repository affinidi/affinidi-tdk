# Affinidi TDK - Vault Data Manager

The Affinidi TDK - Vault Data Manager package provides the interface to interact with Afinidi's Vault Data Manager service. This package enables you to manage profiles, folders, and files stored in secure cloud storage.

## Key Features

- Secure encryption & decryption of Data Encryption Keys (DEKs).
- Wallet-based encryption and decryption of DEKs.
- API public key-based encryption of DEKs.
- Secure key derivation using PBKDF2.
- VFS (Virtual File System) profile repository implementation.
- File and credential storage management.

## Requirements

- Dart SDK version ^3.6.0

## Installation

Run:

```bash
dart pub add affinidi_tdk_vault_data_manager
```

or manually add the package to your `pubspec.yaml` file:

```yaml
dependencies:
  affinidi_tdk_vault_data_manager: ^<version_number>
```

and then run the command below to install the package:

```bash
dart pub get
```

For more information, visit the pub.dev install page of the Affinidi TDK - Vault Data Manager package.

## Usage

After successfully installing the package, import it into your code.

### Encryption Service Example

This example shows how to encrypt a DEK that was encrypted with wallet material and convert it to be encrypted with the API public key.

```dart
import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';

Future<void> main() async {
  final vaultDataManagerEncryptionService = VaultDataManagerEncryptionService(
    kek: encryptionKey,
    cryptographyService: CryptographyService(),
    jwk: jwk,
  );

  final dekEncryptedByApiPublicKey =
      await vaultDataManagerEncryptionService.getDekEncryptedByApiPublicKey(encryptedDekBase64: encryptedDekBase64);
  print('API encrypted DEK: $dekEncryptedByApiPublicKey');
}
```

### Real Application Usage

In real applications, the Vault Data Manager is typically used through the Vault package. Here's an example of how it's commonly integrated:

```dart
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';
import 'package:affinidi_tdk_vault_flutter_utils/vault_flutter_utils.dart';

final _openVaultProvider = FutureProvider.family<Vault, String>((ref, password) async {
  try {
    final seedAlice = Uint8List.fromList(List.generate(32, (idx) => idx + 1));
    final keyStore = FlutterSecureVaultStore('alice_vault_secure_storage');
    await keyStore.clear();
    await keyStore.setSeed(seedAlice);
    
    final vfsRepositoryId = 'alice_vfs_repository';
    final profileRepositoriesAlice = <String, ProfileRepository>{
      vfsRepositoryId: VfsProfileRepository(vfsRepositoryId),
    };
    
    return Vault.fromVaultStore(
      keyStore,
      profileRepositories: profileRepositoriesAlice,
      defaultProfileRepositoryId: vfsRepositoryId,
    );
  } catch (e, stackTrace) {
    log('Error creating Alice\'s vault: $e', name: 'VaultService');
    log('Stack trace: $stackTrace', name: 'VaultService');
    rethrow;
  }
}, name: 'openVaultProvider');
```

For more sample usage, go to the [example folder](https://github.com/affinidi/affinidi-tdk/tree/main/packages/dart/vault_data_manager/example).

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
