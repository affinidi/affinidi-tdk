# Affinidi DIDComm for Dart - VDIP Clients

A Dart package for implementing the Verifiable Data Issuance Protocol (VDIP) using DIDComm v2 Messaging. VDIP enables secure, privacy-preserving issuance of verifiable credentials between issuers and holders through decentralized communication channels. It supports feature discovery, credential issuance workflows with multiple formats (W3C VC Data Model v1 & v2, JWT VC, SD-JWT VC), and optional holder-bound assertions for advanced use cases.

VDIP is ideal for scenarios like digital identity onboarding, credential provisioning for employees or students, certification issuance, and any context where a trusted issuer needs to securely deliver verifiable credentials to holders while maintaining privacy and control.

VDIP clients facilitate secure, standardized issuance of verifiable credentials between two parties: issuers and holders. The `VdipIssuerClient` represents the credential-issuing authority that creates and signs verifiable credentials (such as diplomas, certificates, licenses, or identity documents), while the `VdipHolderClient` represents the user or entity requesting and receiving these credentials. These clients abstract away the complexity of DIDComm v2 messaging, credential formatting, cryptographic signing, and assertion verification, providing developers with a simple, high-level API for building credential issuance applications.

## Table of Contents

- [Core Concepts](#core-concepts)
- [Key Features](#key-features)
  - [Supported Credential Formats](#supported-credential-formats)
  - [Protocol Messages](#protocol-messages)
- [Protocol Flow](#protocol-flow)
  - [Basic Issuance Flow](#basic-issuance-flow)
  - [Holder-Bound Assertions](#holder-bound-assertions)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
  - [1. Set up DID Managers and Mediator Connection](#1-set-up-did-managers-and-mediator-connection)
  - [2. Initialize VDIP Clients](#2-initialize-vdip-clients)
  - [3. Discover Issuer Features](#3-discover-issuer-features)
  - [4. Request Credential (Basic)](#4-request-credential-basic)
  - [5. Request Credential with Holder-Bound Assertion](#5-request-credential-with-holder-bound-assertion)
  - [6. Issue Credentials](#6-issue-credentials)
  - [7. Receive Credentials](#7-receive-credentials)
- [Message Reference](#message-reference)
  - [Request Issuance Message](#request-issuance-message)
  - [Issued Credential Message](#issued-credential-message)
- [Security Features](#security-features)
  - [Message Wrapping Verification](#message-wrapping-verification)
  - [Addressing Consistency](#addressing-consistency)
  - [Assertion Verification](#assertion-verification)
- [Problem Report Messages](#problem-report-messages)
- [Complete Example](#complete-example)
- [Support & Feedback](#support--feedback)
  - [Reporting Technical Issues](#reporting-technical-issues)
- [Contributing](#contributing)

## Core Concepts

The DIDComm for Dart package implements the Verifiable Data Issuance Protocol (VDIP) using existing open standards and cryptographic techniques to provide secure, private, and verifiable communication.

- **Verifiable Data Issuance Protocol (VDIP)** - A protocol built on top of DIDComm v2 that enables secure issuance of verifiable credentials between issuers and holders. VDIP defines message types, workflows, and security requirements for credential issuance.

- **Issuer** - An entity that creates and issues verifiable credentials. The issuer validates requests, constructs credentials in the appropriate format, signs them, and delivers them to the holder via DIDComm messages.

- **Holder** - An entity requesting and receiving verifiable credentials. The holder initiates the issuance flow by sending a request specifying the desired credential format and providing any required metadata.

- **Verifiable Credential** - A cryptographically secure, tamper-evident credential that contains claims about a subject, issued by a trusted issuer.

- **Holder-Bound Assertion** - A signed JWT token that proves the holder controls a specific DID. This allows credentials to be issued to a DID different from the DIDComm message sender, with cryptographic proof of ownership.

- **Feature Discovery** - A mechanism that allows holders and issuers to discover each other's supported features, credential formats, and operations before initiating credential issuance. This ensures compatibility and prevents protocol mismatches.

- **Credential Metadata** - Extensible data structure (`CredentialMeta`) that allows holders to pass auxiliary information to issuers during the credential request process, such as personal details or context needed for credential construction.

## Key Features

- Implements the Verifiable Data Issuance Protocol (VDIP) for secure credential issuance.
- Support for feature discovery between holders and issuers.
- Multiple credential format support including W3C VC Data Model v1 & v2, JWT VC, and SD-JWT VC.
- Holder-bound assertions for proving control of specific DIDs via signed JWT tokens.
- Extensible credential metadata for passing auxiliary information during issuance.
- Automatic security verification including message wrapping validation and addressing consistency checks.
- Uses DIDComm v2 Messaging for secure, encrypted communication.
- Problem reporting mechanism for error handling.

### Supported Credential Formats

| Format | Description | Use Case |
|--------|-------------|----------|
| `w3cV1` | W3C Verifiable Credentials Data Model 1.0 with JSON-LD and Data Integrity proofs | Standard JSON-LD credentials with linked data semantics |
| `w3cV2` | W3C Verifiable Credentials Data Model 2.0 with enhanced proof options | Next-generation W3C credentials with improved proof mechanisms |
| `jwtVc` | JWT-encoded Verifiable Credential (JWS) | Compact JWT format for credentials, widely supported |
| `sdJwtVc` | Selective Disclosure JWT-based Verifiable Credential | Privacy-preserving credentials allowing selective claim disclosure |

### VDIP Protocol Support

The package implements the following VDIP message types:

| Message Type | Purpose | Direction |
|---|---|---|
| `discover-features/2.0/queries` | Query supported features | Holder → Issuer |
| `discover-features/2.0/disclose` | Disclose supported features | Issuer → Holder |
| `vdip/1.0/request-issuance` | Request credential issuance | Holder → Issuer |
| `vdip/1.0/issued-credential` | Deliver issued credential | Issuer → Holder |
| `report-problem/2.0/problem-report` | Report errors or warnings | Any → Any |

## Protocol Flow

### Basic Issuance Flow

The typical VDIP credential issuance flow follows these steps:

1. **Setup**: Both Holder and Issuer initialize their DID managers and establish connections to a DIDComm mediator.

2. **Feature Discovery**: 
   - Holder sends a `query` message to discover what credential formats and features the Issuer supports.
   - Issuer responds with a `disclose` message listing supported formats (e.g., W3C v1, JWT VC, SD-JWT VC).

3. **Request Issuance**:
   - Holder sends a `request-issuance` message specifying:
     - `proposal_id`: References an external proposal or out-of-band offer
     - `credential_format`: Desired format (optional, Issuer may choose)
     - `credential_meta`: Additional data needed for credential construction (e.g., email, attributes)
   
4. **Validation**:
   - Issuer validates the request
   - Issuer verifies any holder-bound assertions if present
   - Issuer determines if it can fulfill the request

5. **Credential Construction**:
   - Issuer constructs the credential with appropriate claims
   - Issuer signs the credential using the appropriate proof mechanism for the format
   
6. **Credential Delivery**:
   - Issuer sends `issued-credential` message containing the serialized credential
   
7. **Receipt**:
   - Holder receives and processes the credential
   - Holder can store it locally or present it to verifiers

### Holder-Bound Assertions

In some scenarios, the credential should be issued to a DID that is different from the DIDComm message sender. For example:

- A parent requesting a credential for their child
- A service requesting a credential on behalf of a user
- An agent acting for a principal

VDIP supports this through **holder-bound assertions**:

1. The Holder specifies `holder_did` in the request body – the DID that should receive the credential.

2. The Holder includes a signed `assertion` JWT proving control of that DID.

3. The assertion JWT contains:
   - `iss`: Holder DID (issuer of the assertion)
   - `sub`: Holder DID (subject of the assertion)
   - `aud`: Issuer DID (audience)
   - `proposalId`: Links to the credential request
   - `exp`: Expiration timestamp (prevents replay attacks)
   - `iat`: Issuance timestamp
   - Optional `challenge`: Additional anti-replay binding

4. The Issuer:
   - Resolves the `holder_did` to get its DID Document
   - Verifies the assertion JWT signature
   - Validates that `sub` matches `holder_did`
   - Checks expiration and challenge (if used)
   - Issues the credential to the verified `holder_did`

This mechanism ensures cryptographic proof of DID ownership while keeping the credential issuance secure.

## Requirements

- Dart SDK version ^3.6.0

## Installation

Run:

```bash
dart pub add affinidi_tdk_vdip_didcomm_client
```

or manually, add the package into your `pubspec.yaml` file:

```yaml
dependencies:
  affinidi_tdk_vdip_didcomm_client: ^<version_number>
```

and then run the command below to install the package:

```bash
dart pub get
```

## Usage

Below is a step-by-step example of secure credential issuance between an issuer and holder using the VDIP protocol. The example demonstrates feature discovery, credential requesting, and issuance.

### 1. Set up DID Managers and Mediator

Both the issuer and holder need DID managers and a connection to a DIDComm mediator:

```dart
// Resolve the mediator's DID document
final mediatorDid = 'did:peer:...'; // Your mediator's DID
final mediatorDidDocument = await UniversalDIDResolver.defaultResolver.resolveDid(
  mediatorDid,
);

// Set up issuer's DID manager
final issuerKeyStore = InMemoryKeyStore();
final issuerWallet = PersistentWallet(issuerKeyStore);
final issuerDidManager = DidKeyManager(
  wallet: issuerWallet,
  store: InMemoryDidStore(),
);

final issuerKeyId = 'issuer-key-1';
await issuerWallet.generateKey(
  keyId: issuerKeyId,
  keyType: KeyType.p256,
);
await issuerDidManager.addVerificationMethod(issuerKeyId);

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

### 2. Initialize VDIP Issuer Client

Create an issuer client for issuing credentials:

```dart
final issuerClient = await VdipIssuerClient.init(
  mediatorDidDocument: mediatorDidDocument,
  didManager: issuerDidManager,
  featureDisclosures: FeatureDiscoveryHelper.vdipIssuerDisclosures,
);
```

### 3. Initialize VDIP Holder Client

Create a holder client for requesting credentials:

```dart
final holderClient = await VdipHolderClient.init(
  mediatorDidDocument: mediatorDidDocument,
  didManager: holderDidManager,
  featureDisclosures: FeatureDiscoveryHelper.vdipHolderDisclosures,
);
```

### 4. Feature Discovery

The holder first queries the issuer to discover supported features:

```dart
await holderClient.queryIssuerFeatures(
  issuerDid: (await issuerDidManager.getDidDocument()).id,
  featureQueries: FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
    FeatureDiscoveryHelper.vdipIssuerDisclosures,
  ),
);

// Holder listens for disclose messages
holderClient.listenForIncomingMessages(
  onDiscloseMessage: (message) async {
    print('Issuer supports: \${message.body}');
    // Check if issuer supports required features
    final body = DiscloseBody.fromJson(message.body!);
    // Proceed with credential request if features are supported
  },
  onCredentialsIssuanceResponse: (/* ... */) {
    // Handle credential receipt (see section 7)
  },
);

// Issuer listens for feature queries and responds
issuerClient.listenForIncomingMessages(
  onFeatureQuery: (message) async {
    await issuerClient.disclose(queryMessage: message);
  },
  onRequestToIssueCredential: ({required message, holderDidFromAssertion, isAssertionValid}) async {
    // Handle credential request (see section 6)
  },
);
```

### 5. Request Credential (Basic)

After feature discovery, the holder sends a credential request:

```dart
final requestMessage = await holderClient.requestCredential(
  issuerDid: issuerDidManager.getDidDocument().id,
  options: RequestCredentialsOptions(
    proposalId: 'proposal-123',
    credentialFormat: CredentialFormat.w3cV1,
    credentialMeta: CredentialMeta(
      data: {
        'email': 'holder@example.com',
        'name': 'Alice Holder',
      },
    ),
    comment: 'Requesting email verification credential',
  ),
);
```

### 6. Request Credential with Holder-Bound Assertion

Request a credential for a specific DID with proof of control (optional):

```dart
// Get the signer for the holder DID
final holderSigner = await holderDidManager.getSigner(
  holderDidManager.assertionMethod.first,
);

// Request credential with assertion
final requestWithAssertion = await holderClient.requestCredentialForHolder(
  holderSigner.did,
  issuerDid: issuerDidManager.getDidDocument().id,
  assertionSigner: holderSigner,
  options: RequestCredentialsOptions(
    proposalId: 'proposal-456',
    credentialFormat: CredentialFormat.jwtVc,
    jsonWebSignatureAlgorithm: JsonWebSignatureAlgorithm.es256,
    challenge: 'random-challenge-12345',
    credentialMeta: CredentialMeta(
      data: {'membershipLevel': 'premium'},
    ),
    tokenExpiration: Duration(minutes: 5),
  ),
);
```

### 7. Issue Credentials

The issuer receives requests and issues credentials:

```dart
issuerClient.listenForIncomingMessages(
  onFeatureQuery: (message) async {
    // Respond to feature discovery
    await issuerClient.disclose(queryMessage: message);
  },
  onRequestToIssueCredential: ({
    required message,
    holderDidFromAssertion,
    isAssertionValid,
  }) async {
    // Parse the request
    final body = VdipRequestIssuanceMessageBody.fromJson(message.body!);
    
    // Validate assertion if present
    if (holderDidFromAssertion != null) {
      if (isAssertionValid != true) {
        // Send problem report
        return;
      }
    }
    
    // Extract metadata
    final email = body.credentialMeta?.data?['email'] as String?;
    if (email == null) {
      throw ArgumentError('Email is required');
    }
    
    // Determine credential subject DID
    final subjectDid = holderDidFromAssertion ?? message.from!;
    
    // Get issuer signer
    final issuerSigner = await issuerDidManager.getSigner(
      issuerDidManager.assertionMethod.first,
    );
    
    // Construct unsigned credential (W3C v1 example)
    final unsignedVc = VcDataModelV1(
      context: [
        dmV1ContextUrl,
        'https://example.com/contexts/EmailCredentialV1.jsonld',
      ],
      credentialSchema: [
        CredentialSchema(
          id: Uri.parse('https://example.com/schemas/EmailCredentialV1.json'),
          type: 'JsonSchemaValidator2018',
        ),
      ],
      id: Uri.parse('urn:uuid:${const Uuid().v4()}'),
      issuer: Issuer.uri(issuerSigner.did),
      type: {'VerifiableCredential', 'EmailVerificationCredential'},
      issuanceDate: DateTime.now().toUtc(),
      credentialSubject: [
        CredentialSubject.fromJson({
          'id': subjectDid,
          'email': email,
          'verified': true,
        }),
      ],
    );
    
    // Sign the credential
    final suite = LdVcDm1Suite();
    final issuedVc = await suite.issue(
      unsignedData: unsignedVc,
      proofGenerator: DataIntegrityEcdsaJcsGenerator(signer: issuerSigner),
    );
    
    // Send the issued credential
    await issuerClient.sendIssuedCredentials(
      holderDid: message.from!,
      verifiableCredential: issuedVc,
      comment: 'Email verification credential issued successfully',
    );
  },
  onProblemReport: (message) {
    print('Problem reported: ${message.body}');
  },
);
```

### 8. Receive Credentials

The holder receives and processes issued credentials:

```dart
holderClient.listenForIncomingMessages(
  onCredentialsIssuanceResponse: (message) {
    // Parse the issued credential
    final body = VdipIssuedCredentialBody.fromJson(message.body!);
    
    print('Received credential in format: ${body.credentialFormat}');
    print('Credential: ${body.credential}');
    
    if (body.comment != null) {
      print('Issuer comment: ${body.comment}');
    }
    
    // Store or process the credential
    // For W3C v1 credentials:
    if (body.credentialFormat == CredentialFormat.w3cV1) {
      final credential = VcDataModelV1.fromJson(
        jsonDecode(body.credential) as Map<String, dynamic>,
      );
      // Verify the credential
      // Store in wallet
      // Present to verifier
    }
  },
  onProblemReport: (message) {
    print('Problem reported: ${message.body}');
  },
);
```

## Message Reference

### Request Issuance Message

**Message Type**: `https://affinidi.com/didcomm/protocols/vdip/1.0/request-issuance`

**Body Fields** (`VdipRequestIssuanceMessageBody`):

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `proposal_id` | `String` | Yes | Identifier referencing a credential proposal or out-of-band offer |
| `holder_did` | `String?` | Conditional | DID to issue the credential to (requires `assertion` if specified) |
| `assertion` | `String?` | Conditional | Signed JWT proving control of `holder_did` (required if `holder_did` is specified) |
| `challenge` | `String?` | Optional | Anti-replay or session binding value |
| `credential_format` | `String?` | Optional | Requested credential format (e.g., "w3cV1", "jwtVc", "sdJwtVc") |
| `json_web_signature_algorithm` | `String?` | Optional | JWS algorithm for JWT-based credentials (e.g., "ES256") |
| `comment` | `String?` | Optional | Human-readable note from the requester |
| `credential_meta` | `CredentialMeta?` | Optional | Arbitrary metadata to assist credential construction |

**Example**:
```json
{
  "type": "https://affinidi.com/didcomm/protocols/vdip/1.0/request-issuance",
  "id": "123e4567-e89b-12d3-a456-426614174000",
  "from": "did:peer:holder123",
  "to": ["did:peer:issuer456"],
  "body": {
    "proposal_id": "proposal-789",
    "credential_format": "w3cV1",
    "credential_meta": {
      "data": {
        "email": "holder@example.com"
      }
    },
    "comment": "Please issue my email credential"
  }
}
```

### Issued Credential Message

**Message Type**: `https://affinidi.com/didcomm/protocols/vdip/1.0/issued-credential`

**Body Fields** (`VdipIssuedCredentialBody`):

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `credential` | `String` | Yes | Serialized credential payload (format depends on `credential_format`) |
| `credential_format` | `CredentialFormat` | Yes | Format of the issued credential |
| `comment` | `String?` | Optional | Human-readable note from the issuer |

**Credential Formats**:
- `w3cV1`: JSON string of W3C VC Data Model 1.0 credential
- `w3cV2`: JSON string of W3C VC Data Model 2.0 credential
- `jwtVc`: JWT (JWS) string
- `sdJwtVc`: SD-JWT string with selective disclosure

**Example**:
```json
{
  "type": "https://affinidi.com/didcomm/protocols/vdip/1.0/issued-credential",
  "id": "234e5678-e89b-12d3-a456-426614174111",
  "from": "did:peer:issuer456",
  "to": ["did:peer:holder123"],
  "thid": "123e4567-e89b-12d3-a456-426614174000",
  "body": {
    "credential": "{\"@context\":[...],\"type\":[...],\"credentialSubject\":{...}}",
    "credential_format": "w3cV1",
    "comment": "Email verification credential issued"
  }
}
```


### Message Wrapping Verification

Both `VdipHolderClient` and `VdipIssuerClient` enforce strict message wrapping requirements to prevent downgrade attacks:

**Accepted Message Wrapping Types**:
- `authcryptPlaintext` – Authenticated encryption (recommended default)
- `authcryptSignPlaintext` – Authenticated encryption with signature (highest security)
- `anoncryptSignPlaintext` – Anonymous encryption with signature (sender anonymous to intermediaries)
- `anoncryptAuthcryptPlaintext` – Layered encryption (advanced scenarios)

These restrictions ensure that messages cannot be downgraded to plaintext or improperly wrapped formats. The library automatically validates the wrapping when unpacking messages using `DidcommMessage.unpackToPlainTextMessage`.

**Why this matters**: Without envelope validation, an attacker could strip encryption or signatures, exposing sensitive credential data or enabling message forgery.

### Addressing Consistency

The library enforces DIDComm v2 addressing consistency rules:

- The `from` field in the plaintext message must match the `skid` (sender key ID) in the encryption layer
- The `to` field must contain the `kid` (recipient key ID) in the encryption layer
- For signed messages, the `from` field must match the signer's key ID

These checks are performed automatically during message unpacking. If consistency checks fail, the message is rejected with an error.

**Why this matters**: Addressing consistency prevents message spoofing and ensures that the claimed sender actually encrypted/signed the message.

### Assertion Verification

When a Holder requests a credential with a holder-bound assertion, the Issuer performs comprehensive verification:

1. **Signature Verification**: 
   - Resolves the `holder_did` to obtain its DID Document
   - Verifies the assertion JWT signature using the public key from the DID Document

2. **Claims Validation**:
   - Validates that `iss` matches `holder_did`
   - Validates that `sub` matches `holder_did`
   - Validates that `aud` matches the Issuer's DID
   - Checks that `proposalId` matches the request

3. **Expiration Check**:
   - Verifies that the current time is before the `exp` (expiration) timestamp
   - Prevents replay of old assertions

4. **Challenge Validation** (optional):
   - If a challenge was provided, validates its uniqueness and binding to the session

The `VdipIssuerClient` performs these checks automatically and provides the verification result via the `isAssertionValid` parameter in the `onRequestToIssueCredential` callback.

**Why this matters**: Assertion verification ensures that only the legitimate controller of a DID can request credentials for that DID, preventing credential issuance to unauthorized parties.

## Problem Report Messages

VDIP uses DIDComm's standard problem-report mechanism to communicate errors and issues during the protocol flow.

**When to send problem reports**:
- Invalid or missing required fields in request
- Unsupported credential format requested
- Assertion verification failure
- Authorization failure
- Internal issuer errors

**Problem Report Structure**:
```json
{
  "type": "https://didcomm.org/report-problem/2.0/problem-report",
  "id": "345e6789-e89b-12d3-a456-426614174222",
  "pthid": "123e4567-e89b-12d3-a456-426614174000",
  "body": {
    "code": "e.p.vdip.invalid-request",
    "comment": "The credential_meta.email field is required",
    "args": ["email"]
  }
}
```

**Handling problem reports**:
```dart
// In your message listener
onProblemReport: (message) {
  final body = ProblemReportBody.fromJson(message.body!);
  print('Error code: ${body.code}');
  print('Description: ${body.comment}');
  
  // Take appropriate action based on the error
  switch (body.code.descriptors.first) {
    case 'invalid-request':
      // Fix request and retry
      break;
    case 'unsupported-format':
      // Try different credential format
      break;
    default:
      // Log and handle other errors
  }
},
```

## Complete Example

See [example/vdip_basic_example.dart](example/vdip_basic_example.dart) for a complete runnable example that demonstrates:

- Feature discovery between holder and issuer
- Credential request workflows with and without holder-bound assertions
- Credential issuance in multiple formats (W3C v1, JWT VC, SD-JWT VC)
- Security verification and error handling
- Problem report messaging

## Support & Feedback

If you face any issues or have suggestions, please don't hesitate to contact us using [this link](https://share.hsforms.com/1i-4HKZRXSsmENzXtPdIG4g8oa2v).

### Reporting Technical Issues

If you have a technical issue with the DIDComm's codebase, you can also create an issue directly in GitHub.

1. Ensure the bug was not already reported by searching on GitHub under [Issues](https://github.com/affinidi/affinidi-tdk/issues).
2. If you're unable to find an open issue addressing the problem, [open a new one](https://github.com/affinidi/affinidi-tdk/issues/new). Be sure to include a title and clear description, as much relevant information as possible, and a code sample or an executable test case demonstrating the expected behaviour that is not occurring.

## Contributing

Want to contribute?

Head over to our [CONTRIBUTING](https://github.com/affinidi/affinidi-tdk/blob/main/CONTRIBUTING.md) guidelines.
