# Affinidi VDIP for Dart

A Dart package for implementing the Verifiable Data Issuance Protocol (VDIP), a protocol that facilitates secure, interoperable verifiable credential issuance between **Issuers** and **Holders** using the DIDComm v2.1 protocol, an open standard for decentralised communication.

The VDIP consist of two main classes:

- **`VdipIssuer`** that represents the credential-issuing authority (***Issuer***) that creates and signs verifiable credentials, such as diplomas, certificates, licenses, or identity documents, attesting to the claim about the subject (*Holder*).

- **`VdipHolder`** that represents the user or entity requesting and claiming the credential offer issued by the issuer.

These classes simplify the credential issuance using the DIDComm v2.1 protocol, including support for different credential formats such as W3C Data Model V1 and V2, JWT VC, and SD-JWT VC. Additionally, this package provides holder-bound assertions to bind the credential to the holder cryptographically, ensuring only the intended recipient of the credential offer can claim it.

The VDIP package provides developers with tools to build robust and secure credential issuance features into their applications. VDIP enables use cases such as:

- Verified identity credential issuance for onboarding and background screening
- Employee or student credential issuance to grant access to systems
- Issuance of certificates, such as training or course completion

These are a few scenarios from a wide range of use cases unlocked by VDIP that require the issuance of attested and verified information from a trusted issuer to the holders while maintaining privacy and control over their data.

## Table of Contents

- [Affinidi VDIP for Dart](#affinidi-vdip-for-dart)
  - [Table of Contents](#table-of-contents)
  - [Core Concepts](#core-concepts)
  - [Key Features](#key-features)
    - [Supported Credential Formats](#supported-credential-formats)
    - [VDIP Protocol Support](#vdip-protocol-support)
  - [Protocol Flow](#protocol-flow)
    - [Basic Issuance Flow](#basic-issuance-flow)
    - [Holder-Bound Assertions](#holder-bound-assertions)
  - [Requirements](#requirements)
  - [Installation](#installation)
  - [Usage](#usage)
    - [1. Set up DID Managers and Mediator](#1-set-up-did-managers-and-mediator)
    - [2. Initialise VDIP Issuer](#2-initialise-vdip-issuer)
    - [3. Initialise VDIP Holder](#3-initialise-vdip-holder)
    - [4. Feature Discovery](#4-feature-discovery)
    - [5. Request Credential (Basic)](#5-request-credential-basic)
    - [6. Request Credential with Holder-Bound Assertion](#6-request-credential-with-holder-bound-assertion)
    - [7. Issue Credential](#7-issue-credential)
    - [8. Claim Credential](#8-claim-credential)
  - [Message References](#message-references)
    - [Request Issuance Message](#request-issuance-message)
    - [Issued Credential Message](#issued-credential-message)
  - [Security Features](#security-features)
    - [Message Wrapping Verification](#message-wrapping-verification)
    - [Addressing Consistency](#addressing-consistency)
    - [Assertion Verification](#assertion-verification)
  - [Problem Report Message](#problem-report-message)
  - [Complete Example](#complete-example)
  - [Support \& Feedback](#support--feedback)
    - [Reporting Technical Issues](#reporting-technical-issues)
  - [Contributing](#contributing)

## Core Concepts

The Verifiable Data Issuance Protocol (VDIP) uses existing open standards, such as DIDComm v2.1, and cryptographic techniques to provide a secure, private, and trusted credential issuance flow.

- **DIDComm v2.1 protocol** - An open standard for decentralised communication. Built on the foundation of Decentralised Identifiers (DIDs), it enables parties to exchange verifiable data such as credentials and establishes secure communication channels between parties without relying on centralised servers.

- **Verifiable Data Issuance Protocol (VDIP)** - A protocol built on top of DIDComm v2 that enables secure issuance of verifiable credentials between issuers and holders. VDIP defines message types, workflows, and security requirements for credential issuance. There are two main roles in the credential issuance flow:

  - **Issuer** - An entity that creates, signs, and issues verifiable credentials. The issuer validates requests, constructs credentials in a supported format, signs them, and delivers them to the holder via DIDComm message.

  - **Holder** - An entity requesting and claiming the verifiable credentials. The holder initiates the issuance flow by sending a request specifying the desired credential format and providing any required metadata.

- **Verifiable Credential** - A cryptographically secure, tamper-evident credential that contains claims about a subject (*Holder*), issued by a trusted issuer.

- **Holder-Bound Assertion** - A signed JWT token that proves the holder controls a specific DID. It allows issuing credentials to a DID different from the DIDComm message sender requesting for credential issuance, with cryptographic proof of ownership.

- **Feature Discovery** - A mechanism that allows holders and issuers to discover each other's supported features, credential formats, and operations before initiating credential issuance. It ensures compatibility and prevents protocol mismatches.

- **Credential Metadata** - An extensible data structure (`CredentialMeta`) that allows holders to pass auxiliary information to issuers during the credential request process, such as personal details or context needed for constructing a credential.

## Key Features

- Implements the Verifiable Data Issuance Protocol (VDIP) for secure credential issuance.
- Implements DIDComm v2.1 protocol for secure, end-to-end encrypted communication.
- Support for feature discovery between issuers and holders.
- Support multiple credential format, such as W3C VC Data Model v1 & v2, JWT VC, and SD-JWT VC.
- Holder-bound assertions to prove control of specific DIDs via signed JWT tokens.
- Extensible credential metadata to pass auxiliary information during issuance.
- Automatic security verification, such as message wrapping validation and addressing consistency checks.
- Problem reporting mechanism for error handling.

### Supported Credential Formats

| Format    | Description                                                                      | Use Case                                                           |
| --------- | -------------------------------------------------------------------------------- | ------------------------------------------------------------------ |
| `w3cV1`   | W3C Verifiable Credentials Data Model 1.0 with JSON-LD and Data Integrity proofs | Standard JSON-LD credentials with linked data semantics            |
| `w3cV2`   | W3C Verifiable Credentials Data Model 2.0 with enhanced proof options            | Next-generation W3C credentials with improved proof mechanisms     |
| `jwtVc`   | JWT-encoded Verifiable Credential (JWS)                                          | Compact JWT format for credentials, widely supported               |
| `sdJwtVc` | Selective Disclosure JWT-based Verifiable Credential                             | Privacy-preserving credentials allowing selective claim disclosure |

### VDIP Protocol Support

The package implements the following VDIP message types:

| Message Type                        | Purpose                     | Direction       |
| ----------------------------------- | --------------------------- | --------------- |
| `discover-features/2.0/queries`     | Query Supported Features    | Holder → Issuer |
| `discover-features/2.0/disclose`    | Disclose Supported Features | Issuer → Holder |
| `vdip/1.0/request-issuance`         | Request Credential Issuance | Holder → Issuer |
| `vdip/1.0/issued-credential`        | Deliver Issued Credential   | Issuer → Holder |
| `report-problem/2.0/problem-report` | Report Errors or Warnings   | Any → Any       |

Detailed protocol specification can be found [here](PROTOCOLS.md).

## Protocol Flow

### Basic Issuance Flow

The basic VDIP credential issuance flow follows these steps:

1. **Setup**: Holder and Issuer initialise their DID managers and establish connections to a DIDComm mediator.

2. **Feature Discovery**: 
   - Holder sends a `query` message to discover what credential formats and features the issuer supports.
   - Issuer responds with a `disclose` message listing supported formats (e.g., W3C v1, JWT VC, SD-JWT VC).

3. **Request Issuance**:
   - Holder sends a `request-issuance` message specifying:
     - `proposal_id`: References an external proposal or out-of-band offer.
     - `credential_format`: Desired format (optional, Issuer may choose).
     - `credential_meta`: Additional data needed to construct the credential (e.g., email, attributes).
   
4. **Validation**:
   - Issuer validates the request.
   - Issuer verifies holder-bound assertions if present.
   - Issuer determines if it can fulfil the request.

5. **Credential Construction**:
   - Issuer constructs the credential with verified claims.
   - Issuer signs the credential using the appropriate proof mechanism for the format.
   
6. **Credential Delivery**:
   - Issuer sends an `issued-credential` message containing the serialised credential.
   
7. **Claim Credential**:
   - Holder receives and processes the credential.
   - Holder stores it locally and presents it to verifiers.

### Holder-Bound Assertions

In some scenarios, the credential should be issued to a DID different from the DIDComm message sender requesting credential issuance. For example:

- Holder users different DIDs for DIDComm and Verifiable Credentials
- A parent requesting a credential for their child.
- A service requesting a credential on behalf of a user.
- An agent acting for a principal.

VDIP supports this through **holder-bound assertions**:

1. The Holder specifies `holder_did` in the request body – the DID that should receive the credential.

2. The Holder includes a signed `assertion` JWT proving control of that DID.

3. The assertion JWT contains:
   - `iss`: Holder DID (issuer of the assertion).
   - `sub`: Holder DID (subject of the assertion).
   - `aud`: Issuer DID (audience).
   - `proposalId`: Links to the credential request.
   - `exp`: Expiration timestamp (prevents replay attacks).
   - `iat`: Issuance timestamp.
   - Optional `challenge`: Additional anti-replay binding.

4. The Issuer:
   - Resolves the `holder_did` to get its DID Document.
   - Verifies the assertion JWT signature.
   - Validates that `sub` matches `holder_did`.
   - Checks expiration and challenge (if used).
   - Issues the credential to the verified `holder_did`.

The **holder-bound assertions** mechanism ensures cryptographic proof of DID ownership while securing credential issuance.

## Requirements

- Dart SDK version ^3.6.0

## Installation

Run:

```bash
dart pub add affinidi_tdk_vdip
```

or manually, add the package into your `pubspec.yaml` file:

```yaml
dependencies:
  affinidi_tdk_vdip: ^<version_number>
```

and then run the command below to install the package:

```bash
dart pub get
```

## Usage

Below is a step-by-step example of secure credential issuance between an issuer and holder using the VDIP protocol. The example demonstrates feature discovery, credential request, and issuance.

### 1. Set up DID Managers and Mediator

Both the issuer and holder need DID managers and a connection to a DIDComm mediator:

```dart
// Resolve the mediator's DID document
final mediatorDid = 'did:web:...'; // Your mediator's DID
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

### 2. Initialise VDIP Issuer

Create a VDIP issuer for issuing credentials:

```dart
final vdipIssuer = await VdipIssuer.init(
  mediatorDidDocument: mediatorDidDocument,
  didManager: issuerDidManager,
  featureDisclosures: FeatureDiscoveryHelper.vdipIssuerDisclosures,
);
```

### 3. Initialise VDIP Holder

Create a VDIP holder for requesting credentials:

```dart
final vdipHolder = await VdipHolder.init(
  mediatorDidDocument: mediatorDidDocument,
  didManager: holderDidManager,
  featureDisclosures: FeatureDiscoveryHelper.vdipHolderDisclosures,
);
```

### 4. Feature Discovery

The holder first queries the issuer to discover supported features:

```dart
await vdipHolder.queryIssuerFeatures(
  issuerDid: (await issuerDidManager.getDidDocument()).id,
  featureQueries: FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
    FeatureDiscoveryHelper.vdipIssuerDisclosures,
  ),
);

// Holder listens for disclose messages
vdipHolder.listenForIncomingMessages(
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
vdipIssuer.listenForIncomingMessages(
  onFeatureQuery: (message) async {
    await vdipIssuer.disclose(queryMessage: message);
  },
  onRequestToIssueCredential: ({required message, holderDidFromAssertion, isAssertionValid}) async {
    // Handle credential request (see section 6)
  },
);
```

### 5. Request Credential (Basic)

After feature discovery, the holder sends a credential request:

```dart
final requestMessage = await vdipHolder.requestCredential(
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
final requestWithAssertion = await vdipHolder.requestCredentialForHolder(
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

### 7. Issue Credential

The issuer receives and validates requests, then issues a credential:

```dart
vdipIssuer.listenForIncomingMessages(
  onFeatureQuery: (message) async {
    // Respond to feature discovery
    await vdipIssuer.disclose(queryMessage: message);
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
    await vdipIssuer.sendIssuedCredentials(
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

### 8. Claim Credential

The holder claims, receives, and processes issued credentials:

```dart
holder.listenForIncomingMessages(
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

## Message References

### Request Issuance Message

DIDComm message to request credential issuance to the issuer.

**Message Type**: `https://affinidi.com/didcomm/protocols/vdip/1.0/request-issuance`

**Body Fields** (`VdipRequestIssuanceMessageBody`):

| Field                          | Type              | Required    | Description                                                                         |
| ------------------------------ | ----------------- | ----------- | ----------------------------------------------------------------------------------- |
| `proposal_id`                  | `String`          | Yes         | Identifier referencing a credential proposal or out-of-band offer.                  |
| `holder_did`                   | `String?`         | Conditional | DID to issue the credential to (requires `assertion` if specified).                 |
| `assertion`                    | `String?`         | Conditional | Signed JWT proving control of `holder_did` (required if `holder_did` is specified). |
| `challenge`                    | `String?`         | Optional    | Anti-replay or session binding value                                                |
| `credential_format`            | `String?`         | Optional    | Requested credential format (e.g., "w3cV1", "jwtVc", "sdJwtVc").                    |
| `json_web_signature_algorithm` | `String?`         | Optional    | JWS algorithm for JWT-based credentials (e.g., "ES256").                            |
| `comment`                      | `String?`         | Optional    | Human-readable note from the requester.                                             |
| `credential_meta`              | `CredentialMeta?` | Optional    | Arbitrary metadata to assist credential construction.                               |

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

DIDComm message containing the issued credential to the holder.

**Message Type**: `https://affinidi.com/didcomm/protocols/vdip/1.0/issued-credential`

**Body Fields** (`VdipIssuedCredentialBody`):

| Field               | Type               | Required | Description                                                            |
| ------------------- | ------------------ | -------- | ---------------------------------------------------------------------- |
| `credential`        | `String`           | Yes      | Serialized credential payload (format depends on `credential_format`). |
| `credential_format` | `CredentialFormat` | Yes      | Format of the issued credential.                                       |
| `comment`           | `String?`          | Optional | Human-readable note from the issuer.                                   |

**Credential Formats**:
- `w3cV1`: JSON string of W3C VC Data Model 1.0 credential.
- `w3cV2`: JSON string of W3C VC Data Model 2.0 credential.
- `jwtVc`: JWT (JWS) string.
- `sdJwtVc`: SD-JWT string with selective disclosure.

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

## Security Features

### Message Wrapping Verification

Both `VdipHolder` and `VdipIssuer` enforce strict message wrapping requirements to prevent downgrade attacks:

**Accepted Message Wrapping Types**:
- `authcryptPlaintext` – Authenticated encryption (recommended default).
- `authcryptSignPlaintext` – Authenticated encryption with signature (highest security).
- `anoncryptSignPlaintext` – Anonymous encryption with signature (sender anonymous to intermediaries).
- `anoncryptAuthcryptPlaintext` – Layered encryption (advanced scenarios).

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
   - If a challenge was provided, it validates its uniqueness and binding to the session

The `VdipIssuer` performs these checks automatically and provides the verification result via the `isAssertionValid` parameter in the `onRequestToIssueCredential` callback.

**Why this matters**: Assertion verification ensures that only the legitimate controller of a DID can request credentials for that DID, preventing credential issuance to unauthorized parties.

## Problem Report Message

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

See [example/basic_example.dart](https://github.com/affinidi/affinidi-tdk/blob/main/libs/dart/didcomm/vdip/example/basic_example.dart) for a complete runnable example that demonstrates:

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
