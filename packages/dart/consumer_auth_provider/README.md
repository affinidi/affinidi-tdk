# Affinidi TDK - Consumer Auth Provider

[[_TOC_]]

## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  affinidi_tdk_consumer_auth_provider: ^<version_number>
```

Then run:

```bash
dart pub get
```

## Getting Started

Once you've installed the TDK, import it into your Dart code:

```dart
import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
```

### Initialize the provider

```dart
import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';

void main() {
  final consumerAuthProvider = ConsumerAuthProvider(
    encryptedSeed: 'encryptedSeed',
    encryptionKey: 'encryptionKey',
  );

  // Actual Consumer client that accepts a hook for
  // the token which requires a separate import
  final apiClient = AffinidiTdkVaultDataManagerClient(
    authTokenHook: consumerAuthProvider.fetchConsumerToken,
  );
}
```
