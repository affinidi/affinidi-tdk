# Affinidi VDSP Clients for Dart

A Dart package for implementing the Verifiable Data Sharing Protocol (VDSP), a protocol that facilitates secure, interoperable verifiable credential exchange between **Holders** and **Verifiers** using the DIDComm v2.1 protocol, an open standard for decentralised communication.

The VDSP clients consist of two main clients:

- **`VdspVerifierClient`** that represents the requesting party (***Verifier***) that verifies one or more credentials, such as identity documents, educational certificates, or professional qualifications, as part of a workflow like background screening for employees.

- **`VdspHolderClient`** that represents the user or entity (***Holder***) that possesses the credentials required by the verifiers. They have complete control over their data and how they are shared.

These clients simplify the data sharing over the DIDComm v2.1 protocol, including credential queries and cryptographic operations such as signature verifications.

VDSP clients provide developers with tools to build robust, privacy-first, and secure credential-sharing features into their applications. VDSP enables use cases such as:

- Customer onboarding and KYC (Know Your Customer)
- Background screening, including education credential verification
- Healthcare data sharing

These are a few scenarios from a wide range of use cases unlocked by VDSP that require selective disclosure of verified information while maintaining users' privacy and control over their data.

## Table of Contents

- [Core Concepts](#core-concepts)
- [Key Features](#key-features)
  - [VDSP Protocol Support](#vdsp-protocol-support)
  - [Supported Query Languages](#supported-query-languages)
- [Requirements](#requirements)
- [Installation](#installation)
- [VDSP Clients](#vdsp-clients)
  - [VdspVerifierClient](#vdspverifierclient)
  - [VdspHolderClient](#vdspholderclient)
- [Usage](#usage)
  - [1. Set up DID Managers and Mediator](#1-set-up-did-managers-and-mediator)
  - [2. Initialise VDSP Verifier Client](#2-initialise-vdsp-verifier-client)
  - [3. Initialise VDSP Holder Client](#3-initialise-vdsp-holder-client)
  - [4. Feature Discovery](#4-feature-discovery)
  - [5. Query Holder Credentials](#5-query-holder-credentials)
  - [6. Holder Shares Credentials](#6-holder-shares-credentials)
  - [7. Process Data Response](#7-process-data-response)
- [Complete Example](#complete-example)
- [Security Features](#security-features)
- [Support & Feedback](#support--feedback)
  - [Reporting Technical Issues](#reporting-technical-issues)
- [Contributing](#contributing)

## Core Concepts

The Verifiable Data Sharing Protocol (VDSP) uses existing open standards, such as DIDComm v2.1, and cryptographic techniques to provide a secure, private, and verifiable data sharing flow.

- **DIDComm v2.1 protocol** - An open standard for decentralised communication. Built on the foundation of Decentralised Identifiers (DIDs), it enables parties to exchange verifiable data such as credentials and establishes secure communication channels between parties without relying on centralised servers.

- **Verifiable Data Sharing Protocol (VDSP)** - A protocol built on top of DIDComm v2.1 that enables secure sharing of verifiable credentials between holders and verifiers. VDSP defines message types, workflows, and security requirements for credential sharing. There are two main roles in the data-sharing flow:

  - **Verifier** - An entity that requests verifiable credentials from holders. The verifier can query holders for specific data using credential query language and verify the authenticity of the shared credentials.

  - **Holder** - An entity that stores and controls verifiable credentials. The holder can receive data requests, filter their credentials, and share selected credentials with verifiers through a verifiable presentation format.

- **DCQL (Digital Credential Query Language)** - A standardised query language for requesting verifiable credentials. It allows verifiers to specify what credentials they need and what claims within those credentials are required.

- **Feature Discovery** - A mechanism that allows verifiers and holders to discover each other's supported features, protocols, and operations before initiating data exchange. It ensures compatibility and prevents protocol mismatches.

- **Verifiable Presentation** - A data structure containing one or more verifiable credentials, cryptographically signed by the holder to prove authenticity. It creates the presentation in response to a verifier's credential query.

## Key Features

- Implements the Verifiable Data Sharing Protocol (VDSP) for secure credential sharing.
- Implements DIDComm v2.1 protocol for secure, end-to-end encrypted communication.
- Support for feature discovery between verifiers and holders.
- Supports DCQL for credential querying and filtering.
- Cryptographically verifies the signature of verifiable presentations and credentials.
- Built-in support for proof context (challenge and domain) to prevent replay attack.
- Supports data integrity proof suites (ECDSA and EdDSA) for signing presentations.
- Problem reporting mechanism for error handling.

### VDSP Protocol Support

The package implements the following VDSP message types:

| Message Type | Purpose | Direction |
|---|---|---|
| `discover-features/2.0/queries` | Query supported features | Verifier → Holder |
| `discover-features/2.0/disclose` | Disclose supported features | Holder → Verifier |
| `vdsp/1.0/query-data` | Request verifiable credentials | Verifier → Holder |
| `vdsp/1.0/data-response` | Share verifiable presentation | Holder → Verifier |
| `vdsp/1.0/data-processing-result` | Send processing result | Verifier → Holder |
| `report-problem/2.0/problem-report` | Report errors or warnings | Any → Any |

### Supported Query Languages

| Query Language | Status | Description |
|---|---|---|
| DCQL | ✅ Fully supported | Digital Credential Query Language for querying credentials from the holder's digital wallet |

## Requirements

- Dart SDK version ^3.6.0

## Installation

Run:

```bash
dart pub add affinidi_tdk_didcomm_client
```

or manually, add the package into your `pubspec.yaml` file:

```yaml
dependencies:
  affinidi_tdk_didcomm_client: ^<version_number>
```

and then run the command below to install the package:

```bash
dart pub get
```

## VDSP Clients

### VdspVerifierClient

The `VdspVerifierClient` implements the VDSP protocol for a verifier, enabling your application to:

- Discover supported features from holders using feature query.
- Request verifiable credentials from holders using DCQL queries.
- Automatically verifies verifiable presentations and credentials.
- Send processing results back to holders.

**Key Methods:**

- `queryHolderFeatures()` - Sends a feature query to discover what the holder supports.
- `queryHolderData()` - Requests verifiable credentials from a holder using DCQL query.
- `sendDataProcessingResult()` - Sends a processing result message to the holder.
- `listenForIncomingMessages()` - Listens for incoming messages (disclose, data response, problem reports).

### VdspHolderClient

The `VdspHolderClient` implements the VDSP protocol for a holder, enabling your application to:

- Respond to feature queries with supported feature disclosures.
- Filter stored verifiable credentials based on DCQL queries from verifiers.
- Create and share verifiable presentations in response to data requests.
- Receive processing results from verifiers.

**Key Methods:**

- `getDisclosures()` - Returns supported feature disclosures for a query message.
- `disclose()` - Sends a disclose message in response to a feature query.
- `filterVerifiableCredentials()` - Filters credentials using a DCQL query.
- `shareData()` - Creates and sends a verifiable presentation in response to a data request.
- `listenForIncomingMessages()` - Listens for incoming messages (feature queries, data requests, processing results, problem reports).

## Usage

Below is a step-by-step example of secure credential sharing between verifiers and holders using the VDSP protocol. The example demonstrates feature discovery, credential querying, and verification.

### 1. Set up DID Managers and Mediator

Both the verifier and holder need DID managers and a connection to a DIDComm mediator:

```dart
// Resolve the mediator's DID document
final mediatorDid = 'did:web:...'; // Your mediator's DID
final mediatorDidDocument = await UniversalDIDResolver.defaultResolver.resolveDid(
  mediatorDid,
);

// Set up verifier's DID manager
final verifierKeyStore = InMemoryKeyStore();
final verifierWallet = PersistentWallet(verifierKeyStore);
final verifierDidManager = DidKeyManager(
  wallet: verifierWallet,
  store: InMemoryDidStore(),
);

final verifierKeyId = 'verifier-key-1';
await verifierWallet.generateKey(
  keyId: verifierKeyId,
  keyType: KeyType.p256,
);
await verifierDidManager.addVerificationMethod(verifierKeyId);

// Set up holder's DID manager
final holderKeyStore = InMemoryKeyStore();
final holderWallet = PersistentWallet(holderKeyStore);
final holderDidManager = DidKeyManager(
  wallet: holderWallet,
  store: InMemoryDidStore(),
);

final holderKeyId = 'holder-key-1';
await holderWallet.generateKey(
  keyId: holderKeyId,
  keyType: KeyType.p256,
);
await holderDidManager.addVerificationMethod(holderKeyId);
```

### 2. Initialise VDSP Verifier Client

Create a verifier client for requesting credentials:

```dart
final verifierClient = await VdspVerifierClient.init(
  mediatorDidDocument: mediatorDidDocument,
  didManager: verifierDidManager,
);
```

### 3. Initialise VDSP Holder Client

Create a holder client for sharing credentials:

```dart
final holderClient = await VdspHolderClient.init(
  mediatorDidDocument: mediatorDidDocument,
  didManager: holderDidManager,
  featureDisclosures: FeatureDiscoveryHelper.vdspHolderDisclosures,
);
```

### 4. Feature Discovery

The verifier first queries the holder to discover supported features:

```dart
await verifierClient.queryHolderFeatures(
  holderDid: (await holderDidManager.getDidDocument()).id,
  featureQueries: FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
    FeatureDiscoveryHelper.vdspHolderDisclosures,
  ),
);

// Verifier listens for disclose messages
verifierClient.listenForIncomingMessages(
  onDiscloseMessage: (message) async {
    print('Holder supports: \${message.body}');
    // Check if holder supports required features
    final body = DiscloseBody.fromJson(message.body!);
    // Proceed with data query if features are supported
  },
  onDataResponse: (/* ... */) {
    // Handle data response (see section 7)
  },
);

// Holder listens for feature queries and responds
holderClient.listenForIncomingMessages(
  onFeatureQuery: (message) async {
    final disclosures = holderClient.getDisclosures(queryMessage: message);
    await holderClient.disclose(
      queryMessage: message,
      disclosures: disclosures,
    );
  },
  onDataRequest: (message) async {
    // Handle data request (see section 6)
  },
);
```

### 5. Query Holder Credentials

After feature discovery, the verifier sends a DCQL query to request specific credentials:

```dart
import 'package:uuid/uuid.dart';

// Define what credentials the verifier needs
// In this example, verifier requests for holder's email address
final dcqlQuery = DcqlCredentialQuery(
  credentials: [
    DcqlCredential(
      id: const Uuid().v4(),
      format: CredentialFormat.ldpVc,
      claims: [
        DcqlClaim(
          path: ['credentialSubject', 'email'],
        ),
      ],
    ),
  ],
);

// Send the query to the holder
await verifierClient.queryHolderData(
  holderDid: holderDid,
  dcqlQuery: dcqlQuery,
  operation: 'registerAgent', // Optional operation identifier
  proofContext: VdspQueryDataProofContext(
    challenge: 'unique-challenge-string',
    domain: 'verifier.example.com',
  ),
  comment: 'Please share your email credential',
);
```

### 6. Holder Shares Credentials

The holder receives the query, filters existing credentials, and shares a verifiable presentation:

```dart
holderClient.listenForIncomingMessages(
  onDataRequest: (message) async {
    // Filter credentials based on the query
    final queryResult = await holderClient.filterVerifiableCredentials(
      requestMessage: message,
      verifiableCredentials: holderVerifiableCredentials, // Holder's credentials
    );

    // Create a signer for the verifiable presentation
    final holderSigner = await holderDidManager.getSigner(
      holderDidManager.assertionMethod.first,
    );

    // Share the filtered credentials as a verifiable presentation
    await holderClient.shareData(
      requestMessage: message,
      verifiableCredentials: queryResult.verifiableCredentials,
      verifiablePresentationSigner: holderSigner,
      verifiablePresentationProofSuite: DataIntegrityProofSuite.ecdsa_jcs_2019,
      operation: 'registerAgent',
      comment: 'Here is my email credential',
    );
  },
);
```

### 7. Process Data Response

The verifier receives the verifiable presentation and automatically verifies it:

```dart
verifierClient.listenForIncomingMessages(
  onDataResponse: ({
    required VdspDataResponseMessage message,
    required bool presentationAndCredentialsAreValid,
    VerifiablePresentation? verifiablePresentation,
    required VerificationResult presentationVerificationResult,
    required List<VerificationResult> credentialVerificationResults,
  }) async {
    print('Verification result: \$presentationAndCredentialsAreValid');

    if (presentationAndCredentialsAreValid) {
      // Extract claims from the verified presentation
      final email = verifiablePresentation
          ?.verifiableCredential
          .first
          .credentialSubject
          .first['email'];

      print('Verified email: \$email');

      // Send processing result to holder
      await verifierClient.sendDataProcessingResult(
        holderDid: message.from!,
        result: {
          'success': true,
          'email': email,
        },
      );
    } else {
      print('Verification failed:');
      print('Presentation: \${presentationVerificationResult.errors}');
      print('Credentials: \${credentialVerificationResults.map((r) => r.errors)}');
    }
  },
  onProblemReport: (message) {
    print('Problem reported: \${message.body}');
  },
);
```

## Complete Example

See [example/vdsp_example.dart](https://github.com/affinidi/affinidi-tdk/blob/main/clients/dart/didcomm_client/example/vdsp_example.dart) for a complete runnable example that demonstrates:

- Feature discovery between verifier and holder
- DCQL-based credential querying
- Verifiable presentation creation and sharing
- Automatic verification of presentations and credentials
- Processing result handling

## Security Features

- **Replay Attack Prevention**: Utilises proof context through unique challenge and domain parameters, ensuring each credential presentation is bound to a specific request and cannot be reused maliciously.

- **Robust Data Integrity**: Leverages the Data Integrity Proof Suite with support for both ECDSA and EdDSA algorithms to generate and verify digital signatures, guaranteeing the authenticity and tamper-evidence of credential data.

- **Automated Verification**: Enables seamless and automated validation of verifiable presentations upon credential sharing by the holder, streamlining trust establishment between parties.

## Support & Feedback

If you face any issues or have suggestions, please don't hesitate to contact us using [this link](https://share.hsforms.com/1i-4HKZRXSsmENzXtPdIG4g8oa2v).

### Reporting Technical Issues

If you have a technical issue with the DIDComm's codebase, you can also create an issue directly in GitHub.

1. Ensure the bug was not already reported by searching on GitHub under [Issues](https://github.com/affinidi/affinidi-tdk/issues).
2. If you're unable to find an open issue addressing the problem, [open a new one](https://github.com/affinidi/affinidi-tdk/issues/new). Be sure to include a title and clear description, as much relevant information as possible, and a code sample or an executable test case demonstrating the expected behaviour that is not occurring.

## Contributing

Want to contribute?

Head over to our [CONTRIBUTING](https://github.com/affinidi/affinidi-tdk/blob/main/CONTRIBUTING.md) guidelines.
