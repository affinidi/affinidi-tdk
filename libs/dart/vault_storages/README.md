# Affinidi TDK - Vault Storage

The Affinidi TDK Vault Storage package provides the storage layer of the Affinidi TDK Vault integrated into your Dart applications. This package allows you to manage folders and files related to your vault profile in the secure cloud storage.

*This package is still in **EXPERIMENTAL** status.* 

> **IMPORTANT:**
> This project does not collect or process any personal data. However, when used as part of a broader system or application that handles personally identifiable information (PII), users are responsible for ensuring that any such use complies with applicable privacy laws and data protection obligations.

## Requirements

- Dart SDK version ^3.6.0

## Installation

Run:

```bash
dart pub add affinidi_tdk_vault_storages
```

or manually add the package to your `pubspec.yaml` file:

```yaml
dependencies:
  affinidi_tdk_vault_storages: ^<version_number>
```

and then run the command below to install the package:

```bash
dart pub get
```

For more information, visit the pub.dev install page of the Affinidi TDK - Vault Storage package.

## Usage

After successfully installing the package, import it into your code.

```dart
import 'dart:typed_data';

import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';
import 'package:affinidi_tdk_vault_storages/affinidi_tdk_vault_storages.dart';
import 'package:storage/storage.dart';
import 'package:ssi/ssi.dart';

void main() async {

  // Initialize the VaultDataManagerService
  final vaultDataManagerService = await VaultDataManagerService.create(didSigner: didSigner);

  // once you have the service you need to:
  // 1. create your first profile using [profiles/create_profile.dart] example
  // 2. create StorageService with [profileId] created on the first step
  final storageService = StorageService(
    vaultDataManagerService: vaultDataManagerService,
    profileId: 'your_profile_id',
  );

  // once you have storage service you can create folder under you profile using:
  try {
    print('Start creating folder under profile...');
    await storageService.createFolder(folderName: 'your_folder_name');
    print('Finish creting folder under profile');
  } catch (e) {
    print('Failed to create folder under profile: $e');
  }
}

```

For more sample usage, go to the [example folder](https://github.com/affinidi/affinidi-tdk/tree/main/packages/dart).


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