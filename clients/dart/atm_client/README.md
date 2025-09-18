# Affinidi TDK - Dart ATM Client

The Affinidi TDK Dart ATM Client package that contains a client for communication with the DIDComm Gateway and DIDComm message types. It is based on the DIDComm protocol and built on the decentralized design of a Decentralised Identifier (DID) to enable secure and privacy-preserving digital communication.

Following the DID design, it leverages public key cryptography for signing and encrypting messages, ensuring their secure and private delivery to the intended recipient while establishing verifiable and trusted communication.

## Requirements

- Dart SDK version >=3.0.0 <4.0.0

## Installation

Run:

```bash
dart pub add affinidi_tdk_atm_client
```

or manually add the package to your `pubspec.yaml` file:

```yaml
dependencies:
  affinidi_tdk_atm_client: ^<version_number>
```

### Usage

After successfully installing the package, import it into your code.

```dart
import 'package:affinidi_tdk_atm_client/atm_client.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

Future<void> main() async {
  // Run commands below in your terminal to generate keys for Receiver:
  // openssl ecparam -name prime256v1 -genkey -noout -out example/keys/alice_private_key.pem

  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'mediator_client',
  );

  final senderKeyStore = InMemoryKeyStore();
  final senderWallet = PersistentWallet(senderKeyStore);

  final senderDidManager = DidPeerManager(
    wallet: senderWallet,
    store: InMemoryDidStore(),
  );

  const senderKeyId = 'sender-key-1';

  final senderPrivateKeyBytes = await extractPrivateKeyBytes(
    config.alicePrivateKeyPath,
  );

  await senderKeyStore.set(
    senderKeyId,
    StoredKey(
      keyType: KeyType.p256,
      privateKeyBytes: senderPrivateKeyBytes,
    ),
  );

  await senderDidManager.addVerificationMethod(senderKeyId);

  final atmAtlasClient = await AtmAtlasClient.init(
    didManager: senderDidManager,
  );

  final authTokens = await atmAtlasClient.authenticate();

  prettyPrint('Cleaning previously deployed mediator instances...');
  final existingInstances = await atmAtlasClient.getMediatorInstancesList(
    accessToken: authTokens.accessToken,
  );
}

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
