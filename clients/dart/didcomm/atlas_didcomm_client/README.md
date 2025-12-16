# Affinidi Atlas DIDComm Client for Dart

> IMPORTANT: This package is in open beta. Please run any file in the `/example` folder and follow the instructions.

A Dart client for interacting with Affinidi Atlas over DIDComm v2.1. It enables secure, end-to-end encrypted management of Atlas services using DID-based identities and message flows.

This client provides high-level APIs to:

- Manage service ACLs
- Deploy and destroy Atlas service instances
- Retrieve instance metadata and lists
- Query service requests and update deployments/configurations

## Table of Contents

- [Core Concepts](#core-concepts)
- [Key Features](#key-features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
	- [Initialise client](#initialise-client)
	- [List instances](#list-instances)
	- [Deploy and destroy instances](#deploy-and-destroy-instances)
	- [Get metadata and requests](#get-metadata-and-requests)
	- [Update deployment/configuration](#update-deploymentconfiguration)
- [Security Features](#security-features)
- [Support & Feedback](#support--feedback)
- [Contributing](#contributing)

## Core Concepts

- **DIDComm v2.1**: Open standard for secure, interoperable, end-to-end encrypted communication using DIDs.
- **Affinidi Atlas**: An orchestrator that manages Mediator instances via DIDComm, providing coordinated lifecycle, configuration, and secure messaging.
- **Mediator ACL**: Access control list that configures which users/DIDs can access a specific Atlas‑deployed instance.

## Key Features

- High-level Dart APIs over DIDComm for Atlas
- Instance lifecycle: deploy, destroy, list, and metadata
- Gets a list of requests from a deployed instance
- Deployment and configuration updates

## Requirements

- Dart SDK `^3.6.0`

## Installation

Run:

```bash
dart pub add affinidi_tdk_atlas_didcomm_client
```

or add to `pubspec.yaml`:

```yaml
dependencies:
	affinidi_tdk_atlas_didcomm_client: ^1.0.0
```

then install:

```bash
dart pub get
```

## Usage

Below are common flows when working with the Atlas DIDComm client.

### Initialise client

```dart
import 'package:affinidi_tdk_atlas_didcomm_client/affinidi_tdk_atlas_didcomm_client.dart';
import 'package:ssi/ssi.dart';

Future<void> main() async {
	// Prepare a DID manager with a wallet and key
	final keyStore = InMemoryKeyStore();
	final wallet = PersistentWallet(keyStore);
	final didManager = DidKeyManager(
		wallet: wallet,
		store: InMemoryDidStore(),
	);

	final keyId = 'atlas-key-1';
	await wallet.generateKey(keyId: keyId, keyType: KeyType.p256);
	await didManager.addVerificationMethod(keyId);

	// Initialise the Atlas client. Client options provide mediator & atlas DIDs.
	final client = await DidcommAtlasClient.init(
		didManager: didManager,
		clientOptions: const AffinidiClientOptions(),
	);
}
```

### List instances

```dart
// Mediator instances
final mediators = await client.getMediatorInstancesList(limit: 10);
print(mediators.body);
```

### Deploy and destroy instances

```dart
// Deploy Mediator
final deployMed = await client.deployMediatorInstance(
	options: DeployMediatorInstanceOptions(
		serviceSize: ServiceSize.small,
		// ... other deployment options
	),
);
print(deployMed.body);

// Destroy Mediator
final destroyedMed = await client.destroyMediatorInstance(
	mediatorId: deployMed.body.instanceId,
);
print(destroyedMed.body);
```

### Get metadata and requests

```dart
// Metadata
final medMeta = await client.getMediatorInstanceMetadata(
	mediatorId: 'mediator-123',
);
print(medMeta.body);

// Requests
final requests = await client.getMediatorRequests(limit: 20);
```

### Update deployment/configuration

```dart
// Update deployment for Mediator
await client.updateMediatorInstanceDeployment(
	mediatorId: 'mediator-123',
	options: UpdateMediatorInstanceDeploymentOptions(
		serviceSize: ServiceSize.medium,
		// ... additional deployment updates
	),
);

// Update configuration for Mediator
await client.updateMediatorInstanceConfiguration(
	configurationData: UpdateInstanceConfigurationOptions(
		// ... configuration fields
	),
);
```

## Security Features

- **Message wrapping verification**: Accepts only signed and encrypted envelopes (`authcryptSignPlaintext`, `anoncryptSignPlaintext`).
- **Sender validation**: Responses must originate from Atlas service DID.
- **ACL configuration**: The client sets mediator ACL to authorise Atlas to reach your DID.
- **Problem reports**: Errors are surfaced as standard DIDComm problem reports and linked to request threads.

## Support & Feedback

If you face any issues or have suggestions, please contact us using:
https://share.hsforms.com/1i-4HKZRXSsmENzXtPdIG4g8oa2v

### Reporting Technical Issues

- Search existing issues: https://github.com/affinidi/affinidi-tdk/issues
- Open a new issue with details and a minimal repro: https://github.com/affinidi/affinidi-tdk/issues/new

## Contributing

See our CONTRIBUTING guidelines:
https://github.com/affinidi/affinidi-tdk/blob/main/CONTRIBUTING.md

