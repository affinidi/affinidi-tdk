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

### Profile Sharing

The Vault package supports sharing profiles and individual items (files/folders) with other users. This enables collaborative access to data while maintaining security through encryption.

#### Sharing a Profile

To share an entire profile with another user:

```dart
// Owner shares their profile with a grantee
final granteeDid = 'did:key:recipient-did';
final sharedProfile = await vault.shareProfile(
  profileId: 'my-profile-id',
  toDid: granteeDid,  // granteeDid: the DID of the user receiving access
  permissions: Permissions.read,  // or Permissions.write, Permissions.all
);

// Owner sends SharedProfileDto to grantee 
// Grantee accepts the shared profile
await vault.addSharedProfile(
  profileId: 'grantee-profile-id',
  sharedProfile: sharedProfile,
);
```

#### Sharing Individual Items

To share specific files or folders (items) with another user:

```dart
// Owner shares a file with a grantee
final granteeDid = 'did:key:recipient-did';

// 1. Get current permissions policy
final policy = await vault.getItemPermissionsPolicy(
  profileId: 'my-profile-id',
  granteeDid: granteeDid,
);

// 2. Add permission locally 
policy.addPermission(['file-123'], [Permissions.read, Permissions.write]);

// 3. Set complete policy 
final kek = await vault.setItemAccess(
  profileId: 'my-profile-id',
  granteeDid: granteeDid,
  policy: policy,
);

// Create SharedItemsDto to send to grantee
final sharedItem = SharedItemsDto(
  kek: kek,
  ownerProfileId: 'my-profile-id',
  ownerProfileDID: 'did:key:owner-did',
  itemIds: ['file-123'],
);

// Owner sends SharedItemsDto to grantee 
// Grantee accepts the shared item
await vault.acceptSharedItems(
  profileId: 'grantee-profile-id',
  sharedItem: sharedItem,
);
```

#### Time-Bound Sharing

To share items with automatic expiration (time-bound access), specify a `expiresIn` when adding permissions:

```dart
// Owner shares a file with time-bound access (expires after 1 hour)
final granteeDid = 'did:key:recipient-did';
final policy = await vault.getItemPermissionsPolicy(
  profileId: 'my-profile-id',
  granteeDid: granteeDid,
);
policy.addPermission(
  ['file-123'], 
  [Permissions.read],
  expiresIn: Duration(hours: 1), // Access valid for 1 hour
);

// After the expiresIn expires, access is automatically revoked by the backend
// The grantee will no longer be able to access the shared item
```

**Note**: 
- Time-bound sharing is only supported for item-level sharing (files/folders), not for profile-level sharing.
- If `expiresIn` is not provided, access is unlimited (default behavior).
- If `expiresIn` is invalid (negative or zero), an error will be thrown.
- Once the time frame expires, the backend automatically revokes access.

#### Revoking Access

To revoke access to a profile or item:

```dart
// Revoke profile access from grantee
final granteeDid = 'did:key:recipient-did';
await vault.revokeProfileAccess(
  profileId: 'my-profile-id',
  granteeDid: granteeDid,
);

// Revoke item access from grantee 
final policy = await vault.getItemPermissionsPolicy(
  profileId: 'my-profile-id',
  granteeDid: granteeDid,
);

// Remove permission locally 
policy.removePermission(['file-123'], []); // Empty list removes all permissions

// Set complete policy
await vault.setItemAccess(
  profileId: 'my-profile-id',
  granteeDid: granteeDid,
  policy: policy,
);
```

**Note**: Profile and item sharing require the profile repository to implement the `ProfileAccessSharing` interface. The `VfsProfileRepository` from `affinidi_tdk_vault_data_manager` supports both profile and item-level sharing.

For more sample usage, go to the [example folder](https://github.com/affinidi/affinidi-tdk/tree/main/libs/dart/vault/example), including:
- [shared_profiles.dart](https://github.com/affinidi/affinidi-tdk/tree/main/libs/dart/vault/example/shared_profiles.dart) - Profile sharing examples
- [shared_items.dart](https://github.com/affinidi/affinidi-tdk/tree/main/libs/dart/vault/example/shared_items.dart) - Item-level sharing examples
- [time_bound_sharing.dart](https://github.com/affinidi/affinidi-tdk/tree/main/libs/dart/vault/example/time_bound_sharing.dart) - Time-bound sharing examples


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