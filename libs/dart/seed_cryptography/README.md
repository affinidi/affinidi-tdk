# Affinidi TDK - Seed cryptography service

The `affinidi_tdk_seed_cryptography` package provides methods to encrypt and decrypt Wallet seed.

## Table of Contents

- [Affinidi TDK - Seed cryptography service](#affinidi-tdk---seed-cryptography-service)
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
  affinidi_tdk_seed_cryptography: ^<version_number>
```

Then run:

```bash
dart pub get
```

## Usage

Once you've installed the package, import it into your Dart code:

```dart
import 'package:affinidi_tdk_seed_cryptography/affinidi_tdk_seed_cryptography.dart';

void main() {
  final seed = Uint8List.fromList([1, 2, 3, 4, 5, 6, 7, 8]);
  final passphrase = 'passphrase';

  final walletMaterials = await SeedCryptographyService.encryptSeed(
    seed: seed,
    passphrase: passphrase,
  );
  print('encryptedSeed: {walletMaterials.encryptedSeed}');
  print('encryptionKey: {walletMaterials.encryptionKey}');

  final decryptedSeed = await SeedCryptographyService.decryptSeed(
    encryptedSeedHex: walletMaterials.encryptedSeed,
    encryptionKeyHex: walletMaterials.encryptionKey,
  );
}
```
