# Affinidi TDK - Consumer Auth Provider

The `affinidi_tdk_consumer_auth_provider` package helps developers manage Consumer authentication for secure access to Affinidi Vault services. It exchanges an encrypted seed and encryption key for a consumer token, which authenticates subsequent API requests.
1111
## Table of Contents

- [Affinidi TDK - Consumer Auth Provider](#affinidi-tdk---consumer-auth-provider)
  - [Table of Contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Getting Started](#getting-started)
  - [Usage](#usage)
    - [Initialize the provider](#initialize-the-provider)

## Requirements

- Dart SDK version ^3.6.0

## Getting Started

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  affinidi_tdk_consumer_auth_provider: ^<version_number>
```

Then run:

```bash
dart pub get
```

## Usage

Once you've installed the TDK, import it into your Dart code:

```dart
import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
```

### Initialize the provider

```dart
import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';

void main() {
  final consumerAuthProvider = ConsumerAuthProvider(seed: seed);

  // Actual Consumer client that accepts a hook for
  // the token which requires a separate import
  final apiClient = AffinidiTdkVaultDataManagerClient(
    authTokenHook: consumerAuthProvider.fetchConsumerToken, // getting the token from the provider
  );
}
```
