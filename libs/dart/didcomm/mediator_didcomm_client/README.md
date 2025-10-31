# Affinidi Mediator DIDComm Client for Dart

A Dart package for implementing secure and private communication on your app using DIDComm v2 Messaging protocol. DIDComm v2 Messaging is a decentralised communication protocol that uses a Decentralised Identifier (DID) to establish a secure communication channel and send a private and verifiable message.

The DIDComm for Dart package provides the tools and libraries to enable your app to send DIDComm messages. It supports various encryption algorithms and DID methods, such as `did:peer`, `did:key`, and `did:web` for signing and encrypting to ensure the secure and private transport of messages to the intended recipient, establishing verifiable and trusted communication.


## Table of Contents

  - [Core Concepts](#core-concepts)
  - [Key Features](#key-features)
    - [Supported Curves and Algorithms](#supported-curves-and-algorithms)
    - [Supported DID Methods](#supported-did-methods)
  - [DIDComm Message Envelopes](#didcomm-message-envelopes)
    - [Combining Different Envelope Types](#combining-different-envelope-types)
    - [Security Features of Envelope Type Combinations](#security-features-of-envelope-type-combinations)
  - [Requirements](#requirements)
  - [Installation](#installation)
  - [Usage](#usage)
    - [1. Set up DID Manager and DIDs](#1-set-up-did-manager-and-dids)
    - [2. Compose a Plain Text Message](#2-compose-a-plain-text-message)
    - [3. Sign the Message](#3-sign-the-message)
    - [4. Encrypt the Message](#4-encrypt-the-message)
  - [Pack and Unpack DIDComm Message Helpers](#pack-and-unpack-didcomm-message-helpers)
    - [packIntoEncryptedMessage](#packintoencryptedmessage)
    - [packIntoSignedMessage](#packintosignedmessage)
    - [packIntoSignedAndEncryptedMessages](#packintosignedandencryptedmessages)
    - [packIntoAnoncryptAndAuthcryptMessages](#packintoanoncryptandauthcryptmessages)
    - [unpackToPlainTextMessage](#unpacktoplaintextmessage)
  - [More Usage Examples](#more-usage-examples)
  - [Key Type Selection for Authcrypt and Anoncrypt](#key-type-selection-for-authcrypt-and-anoncrypt)
  - [Security Safeguards](#security-safeguards)
    - [Message Layer Addressing Consistency](#message-layer-addressing-consistency)
    - [Message Wrapping Verification](#message-wrapping-verification)
    - [Signers Verification](#signers-verification)
    - [Custom Message Verification and Processing](#custom-message-verification-and-processing)
  - [Problem Report Messages](#problem-report-messages)
    - [Structure of a Problem Report](#structure-of-a-problem-report)
    - [Usage in Dart](#usage-in-dart)
  - [Discovery Features](#discovery-features)
    - [Query Message](#query-message)
    - [Disclose Message](#disclose-message)
    - [Constructing Query and Disclose Messages in Dart](#constructing-query-and-disclose-messages-in-dart)
  - [Ed25519/X25519 Key Derivation](#ed25519x25519-key-derivation)
  - [Support & feedback](#support--feedback)
    - [Reporting technical issues](#reporting-technical-issues)
  - [Contributing](#contributing)


## Core Concepts

The Mediator DIDComm for Dart package utilises existing open standards and cryptographic techniques to provide secure, private, and verifiable communication.

- **Decentralised Identifier (DID)** - A globally unique identifier that enables secure interactions. The DID is the cornerstone of Self-Sovereign Identity (SSI), a concept that aims to put individuals or entities in control of their digital identities.

- **DID Document** - A DID is a URI (Uniform Resource Identifier) that resolves into a DID Document that contains information such as cryptographic public keys, authentication methods, and service endpoints. It allows others to verify signatures, authenticate interactions, and validate messages cryptographically.

- **DIDComm Message** - is a JSON Web Message (JWM), a lightweight, secure, and standardised format for structured communication using JSON. It represents headers, message types, routing metadata, and payloads designed to enable secure and interoperable communication across different systems.

- **Mediator** - A service that handles and routes messages sent between participants (e.g., users, organisations, another mediator, or even AI agents).

- **DID Manager** - Establishes the relationship between DID methods and key pairs from the Wallet, supporting different algorithms for signing and verifying messages.

## Key Features

- Implements the DIDComm Message v2.0 protocol.

- Support for DIDComm Messaging Envelope types. Refer to the [DIDComm Message Envelopes](#didcomm-message-envelopes) section to learn more.

- Support for digital wallets under [Affinidi Dart SSI](https://pub.dev/packages/ssi) to manage cryptographic keys.

- Connect and authenticate with different mediator services that follow the DIDComm Message v2.0 protocol.

### Supported Curves and Algorithms

The Mediator DIDComm package supports the following curves and algorithms for signing and encrypting content.

#### Curves and Signing Algorithms
| Curve                   | Signing Algorithm           | Used in Content Encryption           | Notes                  |
|-------------------------|-----------------------------|-----------------------------|------------------------|
| Ed25519                 | EdDSA                       | ✅ Yes*                     | Ed25519 is for signing only; **X25519** is used for encryption/key exchange through [Ed25519/X25519 key derivation](#ed25519x25519-key-derivation) |
| P-384                   | _ES384_                     | ✅ Yes                      | _ES384_ support for signing is not listed in the [DIDComm spec](https://identity.foundation/didcomm-messaging/spec/#algorithms)   |
| P-521                   | _ES521_                     | ✅ Yes                      | _ES521_ support for signing is not listed in the [DIDComm spec](https://identity.foundation/didcomm-messaging/spec/#algorithms)   |
| _secp256k1_              | ES256K                     | ✅ Yes                      | _secp256k1_ support for encryption is not listed in the [DIDComm spec](https://identity.foundation/didcomm-messaging/spec/#curves-and-content-encryption-algorithms) |
| P-256                   | ES256                       | ✅ Yes                      | Deprecated in DIDComm v2 in favor of P-384  |


#### Content Encryption Algorithms

| Encryption Algorithm       | Notes                       |
|----------------------------|-----------------------------|
| A256CBC-HS512              | Used for Authcrypt/Anoncrypt|
| A256GCM                    | Used for Anoncrypt          |
| XC20P                      | Not supported yet           |

> Note: **XC20P** is part of the DIDComm spec, but not yet supported by the Affinidi SSI.

### Supported DID Methods

The Mediator DIDComm package supports the following DID methods to represent the identity of each entity.

| DID Method                         | Note                                                                  |
|------------------------------------|-----------------------------------------------------------------------|
| did:key                            | Fully supported by Affinidi Dart SSI's DID Manager          |
| did:peer                           | Fully supported by Affinidi Dart SSI's DID Manager          |
| did:web                            | Only DID resolution is supported   |

## DIDComm Message Envelopes

DIDComm v2 messages can be sent in the following formats: plaintext, signed, and encrypted. Each format, called "envelope", provides different security and privacy guarantees and can be combined in various ways.

![didcomm messages](assets/didcomm-messages.svg)

- **Plaintext message**: A message that is neither signed nor encrypted. It is readable by anyone and provides no integrity or authenticity guarantees. Used for non-sensitive data, debugging, or as the inner content of other envelopes.
- **Signed message**: A message that is digitally signed but not encrypted. Anyone can read it, but the recipient can prove who signed it (non-repudiation)—used when the message's origin must be provable to the recipient or third parties.
- **Encrypted message**: An encrypted message for one or more recipients. Only the intended recipients can read the content of the message. Encryption can be:

  - **Authenticated encryption (authcrypt, ECDH-1PU)**: Proves the sender's identity to the recipient (but not to intermediaries). Used when both confidentiality and sender authenticity are required.

    It uses the **ECDH-1PU** for authenticated encryption (authcrypt), where the sender's key is involved in the encryption process, allowing the recipient to verify the sender's identity.

  - **Anonymous encryption (anoncrypt, ECDH-ES)**: Hides the sender's identity from the recipient and intermediaries. It is used when the sender's anonymity is required.

    It uses **ECDH-ES** for anonymous encryption (anoncrypt), where only the recipient's key is used, and the sender remains anonymous.

### Combining Different Envelope Types

You can combine the DIDComm Message Envelope types in the following ways:

| Envelope Type                      | Purpose                          | Use case                             |
|------------------------------------|----------------------------------|--------------------------------------|
| **plaintext**                      | Used as the building block of higher-level protocols, but rarely transmitted directly, since it lacks security guarantees. | Public announcements, non-confidential data, debugging, or as the inner content of other envelopes.                   |
| **signed(plaintext)**              | Adds non-repudiation to a plaintext message; whoever receives a message wrapped in this way can prove its origin to any external party. | Audit trails, legal or regulatory messages, or when recipients need to prove message origin to third parties. |
| **anoncrypt(plaintext)**           | Guarantees confidentiality and integrity without revealing the identity of the sender. | Anonymous tips, whistleblowing, or when sender's identity must be hidden.                                                                              |
| **authcrypt(plaintext)**           | It guarantees confidentiality and integrity. It also proves the sender's identity—but in a way that only the recipient can verify. This is the default wrapping choice that should be used unless a different goal is clearly identified. | Most secure communications where both privacy and sender authenticity are required.                                                                                                      |
| **anoncrypt(sign(plaintext))**     | Guarantees confidentiality, integrity, and non-repudiation – but prevents an observer of the outer envelope from accessing the signature. Relative to authcrypt(plaintext), this increases guarantees to the recipient since non-repudiation is stronger than simple authentication. However, it also forces the sender to talk “on the record” and is thus not assumed to be desirable by default. | Sensitive communications where sender wants to prove authorship to the recipient but remain anonymous to intermediaries.                                                                            |
| **authcrypt(sign(plaintext))**     | It adds no useful guarantees over the previous choice and is slightly more expensive. This wrapping combination should not be emitted by conforming implementations. However, implementations may accept it. If they choose to do so, they must emit an error if the signer of the plaintext is different from the sender identified by the authcrypt layer. | Rarely used; only for compatibility or special cases.              |
| **anoncrypt(authcrypt(plaintext))** | A specialized combination that hides the sender key ID (skid) header in the authcrypt envelope, so the hop immediately sourceward of a mediator cannot discover an identifier for the sender. | Advanced scenarios requiring layered security and sender anonymity from intermediaries. |


### Security Features of Envelope Type Combinations

Refer to the table below how security features are affected by combining each envelope type.


**Confidentiality** - only a recipients can see a message, but not mediators and other intermediates.

**Sender Authenticity** - a recipient can see sender's identity.

**Non-repudiation** - a sender is held accountable for their message – they cannot later deny having sent it.

**Sender Anonymity** - mediators and other intermediates can not see sender's identity.

| Envelope Type                      | Confidentiality | Sender Authenticity | Non-repudiation | Sender Anonymity |
|------------------------------------|-----------------|---------------------|-----------------|------------------|
| plaintext (no envelope)            | ❌              | ❌                  | ❌              | ❌               |
| signed(plaintext)                  | ❌              | ✅                  | ✅              | ❌               |
| anoncrypt(plaintext)               | ✅              | ❌                  | ❌              | ✅               |
| authcrypt(plaintext)               | ✅              | ✅                  | ❌              | ❌               |
| anoncrypt(sign(plaintext))         | ✅              | ✅                  | ✅              | ✅               |
| authcrypt(sign(plaintext))         | ✅              | ✅                  | ✅              | ❌               |
| anoncrypt(authcrypt(plaintext))    | ✅              | ✅                  | ❌              | ✅               |

**In Summary**

- Use **plaintext** for non-sensitive data.
- Use **signed(plaintext)** for integrity and non-repudiation.
- Use **anoncrypt(plaintext)** for confidential, sender-anonymous messages.
- Use **authcrypt(plaintext)** for confidential, authenticated messages.
- Use **anoncrypt(sign(plaintext))** for confidential, non-repudiable, sender-anonymous messages.
- Use **authcrypt(sign(plaintext))** for the highest level of security and auditability (rarely needed).
- Use **anoncrypt(authcrypt(plaintext))** for advanced layered security and sender anonymity from intermediaries.

For more details, see the [DIDComm Messaging specification](https://identity.foundation/didcomm-messaging/spec/#iana-media-types).

## Requirements

- Dart SDK version ^3.6.0

## Installation

Run:

```bash
dart pub add affinidi_tdk_mediator_didcomm_client
```

or manually, add the package into your `pubspec.yaml` file:

```yaml
dependencies:
  affinidi_tdk_mediator_didcomm_client: ^<version_number>
```

and then run the command below to install the package:

```bash
dart pub get
```

Visit the pub.dev install page of the Dart package for more information.

## Usage

Below is a step-by-step example of secure communication between Alice and Bob using the Mediator DIDComm Dart package. The example demonstrates how to construct, sign, encrypt, and unpack messages according to the [DIDComm Messaging spec](https://identity.foundation/didcomm-messaging/spec).

### 1. Set up DID Manager and DIDs

```dart
final aliceKeyStore = InMemoryKeyStore();
final aliceWallet = PersistentWallet(aliceKeyStore);
final aliceDidManager = DidKeyManager(
  wallet: aliceWallet,
  store: InMemoryDidStore(),
);

final bobKeyStore = InMemoryKeyStore();
final bobWallet = PersistentWallet(bobKeyStore);
final bobDidManager = DidKeyManager(
  wallet: bobWallet,
  store: InMemoryDidStore(),
);

final aliceKeyId = 'alice-key-1';
await aliceWallet.generateKey(
  keyId: aliceKeyId,
  keyType: KeyType.p256,
);

await aliceDidManager.addVerificationMethod(aliceKeyId);
final aliceDidDocument = await aliceDidManager.getDidDocument();

final bobKeyId = 'bob-key-1';
await bobWallet.generateKey(
  keyId: bobKeyId,
  keyType: KeyType.p256,
);

await bobDidManager.addVerificationMethod(bobKeyId);
final bobDidDocument = await bobDidManager.getDidDocument();
```

### 2. Compose a Plain Text Message

A plain text message is a simple JSON message with headers and a body.

```dart
final plainTextMessage = PlainTextMessage(
  id: '041b47d4-9c8f-4a24-ae85-b60ec91b025c', // Unique message ID
  from: aliceDidDocument.id,                   // Sender's DID
  to: [bobDidDocument.id],                     // Recipient's DID(s)
  type: Uri.parse('https://didcomm.org/example/1.0/message'), // Message type URI
  body: {'content': 'Hello, Bob!'},            // Message payload
);

plainTextMessage['custom-header'] = 'custom-value'; // Add custom headers if needed
```

### 3. Sign the Message

Signing a message is optional in DIDComm. It is required when you need to provide non-repudiation—proof that the sender cannot deny authorship of the message. Signing a message is essential for scenarios where:

- The recipient must prove to a third party that the sender authored the message (e.g., legal, regulatory, or audit requirements).
- The message may be forwarded or relayed, and recipients must verify its origin independently of the transport channel.
- You want to ensure message integrity and origin even if the message is not encrypted.

```dart
final aliceSigner = await aliceDidManager.getSigner(
  aliceDidDocument.assertionMethod.first.id,
);

final signedMessage = await SignedMessage.pack(
  plainTextMessage,
  signer: aliceSigner, // The signer instance
);
```

### 4. Encrypt the Message

Although optional, encrypting DIDComm messages is highly recommended to protect their confidentiality. DIDComm supports two main types of encryption:

- **Authenticated Encryption (authcrypt, ECDH-1PU):**
  - Proves the sender's identity to the recipient (but not to intermediaries).
  - Used when both confidentiality and sender authenticity are required.
  - Only the intended recipient can read the message and verify that the sender's key encrypts the message.
  - Protects the sender's identity from intermediaries and eavesdroppers.

Choose **authcrypt** when you want the recipient to know who sent the message (authenticated, private communication).

- **Anonymous Encryption (anoncrypt, ECDH-ES):**
  - Hides the sender's identity from both the recipient and intermediaries.
  - Used when sender anonymity is required.
  - Only the intended recipient can read the message but cannot determine who sent it.

Choose **anoncrypt** when you want to keep the sender's identity hidden (anonymous tips, whistleblowing, or privacy-preserving scenarios).

#### Example: Authenticated Encryption (authcrypt)

```dart
final aliceMatchedKeyIds = aliceDidDocument.matchKeysInKeyAgreement(
  otherDidDocuments: [bobDidDocument],
);

final encryptedMessage = await EncryptedMessage.packWithAuthentication(
  message, // The signed or plain text message to encrypt
  keyPair: await aliceDidManager.getKeyPairByDidKeyId(aliceMatchedKeyIds.first),
  didKeyId: aliceMatchedKeyIds.first,
  recipientDidDocuments: [bobDidDocument],
);

```
- `keyPair`: Alice's key pair used for authenticated encryption.
- `didKeyId`: The key ID from Alice's DID Document for key agreement.
- `recipientDidDocuments`: The recipient's DID Document(s).
- `encryptionAlgorithm`: The encryption algorithm to use (e.g., `a256cbc`).

#### Example: Anonymous Encryption (anoncrypt)

If you want to encrypt a message without revealing the sender's identity, use `packAnonymously`:

```dart
final anonymousEncryptedMessage = await EncryptedMessage.packAnonymously(
  message, // The signed or plain text message to encrypt
  keyType: KeyType.p256, // Key type for recipient's key agreement (required)
  recipientDidDocuments: [bobDidDocument], // List of recipient DID Documents
  encryptionAlgorithm: EncryptionAlgorithm.a256cbc, // Encryption algorithm
);
```
- `message`: The message to encrypt (can be plain or signed).
- `recipientDidDocuments`: The recipient's DID Document(s).
- `encryptionAlgorithm`: The encryption algorithm to use.
- `keyType`: The key type for the recipient's key agreement key (e.g., `KeyType.p256`, `KeyType.ed25519`).

In this case, Bob can decrypt and read the message but cannot determine who sent it. This approach is helpful for scenarios where sender anonymity is required.

More details about the [key type selection for authcrypt and anoncrypt](#key-type-selection-for-authcrypt-and-anoncrypt).


## Pack and Unpack DIDComm Message Helpers

The `DidcommMessage` class provides high-level helper methods for common packing and unpacking workflows. These helpers simplify signing and encrypting messages according to your security and privacy requirements.

### packIntoEncryptedMessage

Packs a plain text message into an encrypted message. Use this for confidential messages (authcrypt or anoncrypt, depending on parameters).

```dart
// Authenticated encryption (authcrypt)
final aliceMatchedKeyIds = aliceDidDocument.matchKeysInKeyAgreement(
  otherDidDocuments: [bobDidDocument],
);

final encrypted = await DidcommMessage.packIntoEncryptedMessage(
  plainTextMessage,
  keyPair: await aliceDidManager.getKeyPairByDidKeyId(aliceMatchedKeyIds.first),
  didKeyId: aliceMatchedKeyIds.first,
  recipientDidDocuments: [bobDidDocument],
  keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdh1Pu,
  encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
);

// Anonymous encryption (anoncrypt)
final anonEncrypted = await DidcommMessage.packIntoEncryptedMessage(
  plainTextMessage,
  keyType: KeyType.p256,
  recipientDidDocuments: [bobDidDocument],
  keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdh1Es,
  encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
);
```

### packIntoSignedMessage

Packs a plain text message into a signed message. Use this for non-repudiation and message integrity.

```dart
final signed = await DidcommMessage.packIntoSignedMessage(
  plainTextMessage,
  signer: aliceSigner,
);
```

### packIntoSignedAndEncryptedMessages

Packs a plain text message into a signed message and then encrypts it. Use this for both non-repudiation and confidentiality in a single step. Encryption can be anonymous (anoncrypt) or authenticated (authcrypt), depending on the provided parameters. `anoncrypt(sign(plaintext))` should be preferred over `authcrypt(sign(plaintext))` (see [here](https://identity.foundation/didcomm-messaging/spec/#iana-media-types))

```dart
// Anonymous encryption - anoncrypt(sign(plaintext))
// this is a preferred way
final signedAndAnonEncrypted = await DidcommMessage.packIntoSignedAndEncryptedMessages(
  plainTextMessage,
  keyType: KeyType.p256,
  recipientDidDocuments: [bobDidDocument],
  keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdh1Es,
  encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
  signer: aliceSigner,
);

// Authenticated encryption with signed message - authcrypt(sign(plaintext)))
final signedAndEncrypted = await DidcommMessage.packIntoSignedAndEncryptedMessages(
  plainTextMessage,
  keyPair: aliceKeyPair,
  didKeyId: aliceDidDocument.keyAgreement[0].id,
  recipientDidDocuments: [bobDidDocument],
  keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdh1Pu,
  encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
  signer: aliceSigner,
);
```

### packIntoAnoncryptAndAuthcryptMessages

Packs a plain text message into two [envelopes](#didcomm-message-envelopes) using authenticated (authcrypt) and anonymous (anoncrypt) encryption layers. This method first wraps the message with authenticated encryption (authcrypt, ECDH-1PU) and then the resulting message is wrapped with anonymous encryption (anoncrypt, ECDH-ES).

Use this when you want to provide sender authenticity (authcrypt) and sender anonymity from intermediaries (anoncrypt). Only the final recipient can verify the sender's identity. The result is a message with the envelope type anoncrypt(authcrypt(plaintext)).

```dart
final doublyEncrypted = await DidcommMessage.packIntoAnoncryptAndAuthcryptMessages(
  plainTextMessage,
  keyPair: aliceKeyPair,
  didKeyId: aliceDidDocument.keyAgreement[0].id,
  recipientDidDocuments: [bobDidDocument],
  // algorithm for content encryption of the outer anoncrypt layer
  encryptionAlgorithm: EncryptionAlgorithm.a256cbc, 
);
```

### unpackToPlainTextMessage
Bob receives the encrypted message and unpacks it:

```dart
final unpackedMessage = await DidcommMessage.unpackToPlainTextMessage(
  message: jsonDecode(sentMessageByAlice) as Map<String, dynamic>, // The received message
  recipientDidManager: bobDidManager, // Bob's DID manager for decryption
  expectedMessageWrappingTypes: [MessageWrappingType.authcryptSignPlaintext], // Expected wrapping
  expectedSigners: [aliceSigner.didKeyId], // List of expected signers' key IDs
);
```

- `message`: The received message as a decoded JSON map.
- `recipientDidManager`: The DID manager instance used to decrypt the message.
- `expectedMessageWrappingTypes`: List of expected message wrapping types. This argument ensures the unpacked message matches the expected security and privacy guarantees. 

  The values are from the `MessageWrappingType` enum, which maps to the [DIDComm IANA media types](https://identity.foundation/didcomm-messaging/spec/#iana-media-types), such as `authcryptPlaintext` for authenticated encryption, `signedPlaintext` for signed messages, and `plaintext` for unprotected messages. It helps prevent downgrade attacks and ensures the message is processed as intended.

  **Note:** If `expectedMessageWrappingTypes` is omitted or set to `null`, the default expected wrapping type is `[MessageWrappingType.authcryptPlaintext]` according to the DIDComm specification. This means only authenticated encrypted messages will be accepted by default unless you explicitly specify otherwise.

- `expectedSigners`: List of key IDs whose signatures are expected and will be verified.

## More Usage Examples

See [`example/didcomm_example.dart`](https://github.com/affinidi/affinidi-didcomm-dart/blob/main/example/didcomm_example.dart) for a complete runnable example.

For more sample usage, including a mediator workflow, see the [example folder](https://github.com/affinidi/affinidi-didcomm-dart/tree/main/example).

## Key Type Selection for Authcrypt and Anoncrypt

When encrypting messages, you must select a key type for a key agreement that all parties support.

- **Authcrypt (authenticated encryption, ECDH-1PU):**
  - For key agreement, both the sender and all recipients must use compatible key types (e.g., both must have P-256 or X25519 keys in their DID Documents).
  - You typically use the sender's DidManager to find a compatible key pair and key agreement method with each recipient.
  - Use the `matchKeysInKeyAgreement` extension method to find compatible key IDs from the sender's wallet for all recipients.

- **Anoncrypt (anonymous encryption, ECDH-ES):**
  - Only uses the recipients' key agreement keys; does not involve the sender's key pair.
  - You must select a key type that all recipients for key agreement support.
  - Use the `getCommonKeyTypesInKeyAgreements` extension method on the list of recipient DID Documents to determine the set of key types common to all recipients.

Examples:

**Authcrypt:**
```dart
final compatibleKeyIds = aliceDidDocument.matchKeysInKeyAgreement(
  otherDidDocuments: [
    bobDidDocument
    // and other recipients
  ],
);

if (compatibleKeyIds.isEmpty) {
  throw Exception('No compatible key agreement method found between Alice and Bob');
}

final aliceDidKeyId = compatibleKeyIds.first; // Use this key ID for Alice
```

**Anoncrypt:**
```dart
final commonKeyTypes = [
  bobDidDocument,
  // and other recipients
].getCommonKeyTypesInKeyAgreements();

if (commonKeyTypes.isEmpty) {
  throw Exception('No common key type found for anoncrypt between recipients');
}

final keyType = commonKeyTypes.first; // Use this key type for anoncrypt
```

This ensures that the correct and compatible keys are used for ECDH-1PU (authcrypt) and ECDH-ES (anoncrypt) operations, and that all recipients can decrypt the message using a supported key agreement method.

## Security Safeguards

The DIDComm package performs different verification processes to ensure the integrity and authenticity of the messages received, including a custom verification and processing after the message is unpacked.

### Message Layer Addressing Consistency

To ensure trust and prevent message tampering or misrouting, DIDComm v2 enforces message layer addressing consistency between the plaintext message and its cryptographic envelopes. According to the [DIDComm v2 spec](https://identity.foundation/didcomm-messaging/spec/#message-layer-addressing-consistency):

- The `from` attribute in the plaintext message **must match** the `skid` (sender key ID) in the encryption layer.
- The `to` attribute in the plaintext message **must contain** the `kid` (recipient key ID) in the encryption layer.
- The `from` attribute in the plaintext message **must match** the signer's `kid` in a signed message.

Envelope's layout:

```yaml
encrypted message:
  header:
    skid: did:example:alice#key-1
  recipients:
    - kid: did:example:bob#key-1
  payload:
    signed message:
      signatures:
        - kid: did:example:alice#key-1
      payload:
        plain text message:
          from: did:example:alice#key-1
          to: did:example:bob#key-1
          body: ...

```

If any of these checks fail, the message is considered invalid and an error is raised.

When you call `unpackToPlainTextMessage` in this Dart library, addressing consistency checks are performed automatically. If any inconsistency is detected, `unpackToPlainTextMessage` throws an error, preventing further processing of potentially malicious or misrouted messages. This strict enforcement helps maintain the integrity and authenticity of DIDComm messages, as required by the specification.

For development or debugging purposes, you can disable addressing consistency checks by passing `validateAddressingConsistency: false` to `unpackToPlainTextMessage`. This allows you to inspect or process messages that would otherwise be rejected due to addressing mismatches. 

**Important:** Disabling these checks should only be done in trusted, non-production environments, as it weakens security guarantees and may expose your application to spoofed or misrouted messages.

### Message Wrapping Verification

The `expectedMessageWrappingTypes` argument of `unpackToPlainTextMessage` lets you specify which message wrapping types (e.g., authenticated encryption, signed, plaintext) are allowed when unpacking a message. This is an important security feature that helps prevent downgrade attacks and ensures the message you receive matches your security expectations.

- If you provide a list of wrapping types (such as `[MessageWrappingType.authcryptSignPlaintext, MessageWrappingType.authcryptPlaintext, MessageWrappingType.anoncryptPlaintext]`), only messages with those wrappings will be accepted. Any message with a different wrapping will be rejected.
- If you do **not** specify `expectedMessageWrappingTypes` (i.e., leave it `null` or omit it), the default is `[MessageWrappingType.authcryptPlaintext]` as recommended by the DIDComm v2 specification. This means only authenticated encrypted messages will be accepted by default.

**Tip:** Always set `expectedMessageWrappingTypes` explicitly to match your protocol or application's requirements. This helps ensure you are not tricked into processing a message with weaker security than intended.

Example how to use:

```dart
final plainTextMessage =
    await DidcommMessage.unpackToPlainTextMessage(
  message: json,
  recipientDidManager: bobDidManager,
  expectedMessageWrappingTypes: [
    MessageWrappingType.anoncryptSignPlaintext,
    MessageWrappingType.authcryptSignPlaintext,
    MessageWrappingType.authcryptPlaintext,
    MessageWrappingType.anoncryptAuthcryptPlaintext,
  ],
);
```

### Signers Verification

When unpacking a message, every signature present is automatically and individually verified by the library to be cryptographically correct and to match the claimed key. If you want to make sure that a certain signers signed the message, you can use the `expectedSigners` argument.

The `expectedSigners` argument of `unpackToPlainTextMessage` lets you specify a set of signers' key IDs that you require to have signed the message. This is especially important for signed messages that may contain multiple signatures (for example, in multi-party workflows or protocols requiring multiple approvals).

Example with multiple signatures:

```json
{
   "payload":"<decoded plain text message>",
   "signatures":[
      {
         "protected":"...",
         "signature":"<signature-1 base64>",
         "header":{
            "kid":"did:example:alice#key-1"
         }
      },
      {
         "protected":"...",
         "signature":"<signature-2 base64>",
         "header":{
            "kid":"did:example:bob#key-1"
         }
      }
   ]
}
```

When you provide a list of key IDs in `expectedSigners`, the function will check that **all** of the provided signers have actually signed the message. Additional signatures beyond those listed in `expectedSigners` are allowed, but if any of the expected signers are missing from the message's signatures, the message will be rejected. This ensures that all required parties have signed the message, and prevents partial or incomplete multi-signature messages from being processed.

If you do not specify `expectedSigners`, the function will not enforce any signer requirements beyond the addressing consistency checks (i.e., it will only check that the `from` field matches at least one signature's key ID, as required by the DIDComm spec).

**Tip:** Always use `expectedSigners` when you need to ensure that a message was signed by at least a specific set of parties, especially in scenarios where multiple signatures are possible or required. This is critical for protocols that require multi-party approval or consensus.

Example how to use:

```dart
final plainTextMessage =
    await DidcommMessage.unpackToPlainTextMessage(
  message: json,
  recipientDidManager: bobDidManager,
  expectedMessageWrappingTypes: [
    MessageWrappingType.anoncryptSignPlaintext,
    MessageWrappingType.authcryptSignPlaintext,
    MessageWrappingType.signPlaintext,
  ],
  expectedSigners: [
    'did:example:alice#key-1',
    'did:example:bob#key-1',
  ],
);
```

### Custom Message Verification and Processing

The `onUnpacked` callback argument of `unpackToPlainTextMessage` allows you to perform custom verification and processing after a message has been unpacked, but before it is returned to your application. This is useful for advanced scenarios where you want to enforce additional business rules, audit message metadata, or trigger application-specific logic based on the unpacked message content or its signatures.

`onUnpacked` callback will be called with two arguments:

- `foundMessages`: A list of all message layers that were found and unpacked (e.g., encrypted, signed, and plaintext layers). This allows you to inspect the full message envelope stack and perform checks or logging at any layer.
- `foundSigners`: A list of key IDs (KIDs) that were found to have signed the message. This is especially useful for multi-signature workflows, auditing, or enforcing custom signer policies beyond what is provided by the `expectedSigners` argument.

Within your `onUnpacked` callback, you can:

- Inspect the unpacked message and its metadata.
- Perform additional verification (e.g., check for specific custom headers, enforce application-specific signature requirements, or validate message content).
- Throw an error or return a failed Future to abort processing if your custom checks fail.
- Trigger application logic, logging, or analytics based on the message or its signers.

```dart
final unpackedMessage = await DidcommMessage.unpackToPlainTextMessage(
  message: json,
  recipientDidManager: bobDidManager,
  expectedMessageWrappingTypes: [
    MessageWrappingType.anoncryptSignPlaintext,
    MessageWrappingType.authcryptSignPlaintext,
    MessageWrappingType.signPlaintext,
  ],
  onUnpacked: (foundMessages, foundSigners) {
    final plainText = foundMessages.last;

    // Custom verification: ensure a specific header is present
    if (plainText['my-custom-header'] == null) {
      throw Exception('Missing required custom header');
    }

    // Custom signer policy: log all signers
    print('Signers found: $foundSigners');
  },
);
```

This mechanism gives you full control over post-unpacking validation and processing, making it easy to extend DIDComm workflows with your own security, compliance, or business logic.

## Problem Report Messages

DIDComm v2 defines a standard mechanism for reporting problems between parties using a special message type: `problem-report`. Problem reports help communicate errors, warnings, or issues encountered during protocol execution, improving robustness and interoperability.

This is similar to HTTP status codes (400, 401, 500), where each code provides a standardized way to indicate the nature and category of a problem. In DIDComm, problem report codes are structured to convey both the severity (error or warning) and the context (protocol, message, or state), followed by specific descriptors.

### Structure of a Problem Report

A problem report is a DIDComm message with the type `https://didcomm.org/report-problem/2.0/problem-report`. Its `body` contains a required `code` field and optional fields for human-readable comments, arguments, and escalation information.

**Example:**

```json
{
  "type": "https://didcomm.org/report-problem/2.0/problem-report",
  "id": "123",
  "pthid": "thread-1",
  "ack": ["122"],
  "body": {
    "code": "e.p.xfer.cant-use-endpoint",
    "comment": "Unable to use the {1} endpoint for {2}.",
    "args": [
      "https://mediator.com/inbox",
      "did:example:123"
    ],
    "escalate_to": "mailto:admin@foo.org"
  }
}
```

- `code`: A structured, lower-kebab-case string describing the problem (e.g., `e.p.xfer.cant-use-endpoint`). The code starts with a sorter (`e` for error, `w` for warning), followed by scope (`p` for protocol, `m` for message, or a state name), and one or more descriptors (e.g., `xfer`, `msg`, `trust.crypto`).
- `comment`: (Optional) Human-friendly, static text describing the problem, with `{1}`, `{2}` placeholders for `args`.
- `args`: (Optional) Values interpolated into `comment` for context.
- `pthid`: The parent thread ID where the problem occurred.
- `ack`: (Optional) Message IDs being acknowledged if the problem is a direct response.
- `escalate_to`: (Optional) URI for escalation or support.


### Usage in Dart

You can construct, serialize, and deserialize a problem report message using the Dart API as shown below (see `test/problem_report_message_test.dart` for a full test):

```dart
final message = ProblemReportMessage(
  id: '123',
  parentThreadId: 'thread-1',
  acknowledged: ['122'],
  body: ProblemReportBody(
    code: ProblemCode(
      sorter: SorterType.error,
      scope: Scope(scope: ScopeType.protocol),
      descriptors: [DescriptorType.xfer.code, 'cant-use-endpoint'],
    ),
    comment: 'Unable to use the {1} endpoint for {2}.',
    arguments: ['https://mediator.com/inbox', 'did:example:123'],
    escalateTo: 'mailto:admin@foo.org',
  ),
);
```

This approach ensures your problem reports are fully compatible with the DIDComm v2 spec.

## Discovery Features

DIDComm v2 supports a protocol for feature discovery between agents, using two main message types: **Query Message** and **Disclose Message**.

The `feature-type` field in Query and Disclose messages indicates the type of feature being described or requested. This library provides the `FeatureType` enum for this purpose:

| FeatureType value     | JSON value      | Description                                      |
|-----------------------|-----------------|--------------------------------------------------|
| FeatureType.protocol  | "protocol"      | DIDComm protocol supported by the agent          |
| FeatureType.goalCode  | "goal-code"     | Goal code supported by the agent                 |
| FeatureType.unknown   | (any other)     | Used for unknown or unrecognized feature types   |

`FeatureType.unknown` is a special value that ensures robust deserialization. If a message contains a `feature-type` value that is not recognized (e.g., a future extension or typo), it will be mapped to `FeatureType.unknown` instead of causing an error. This allows your code to handle unknown feature types gracefully and remain compatible with future versions of the protocol.

### Query Message

- A DIDComm message with the type `https://didcomm.org/discover-features/2.0/queries`.
- Sent by an agent to request information about supported features (protocols, goal-codes, etc.) from another agent.
- The message body contains a list of queries, each specifying a `feature-type` and a `match` pattern (such as a protocol URI or wildcard).

**Example:**

```json
{
  "type": "https://didcomm.org/discover-features/2.0/queries",
  "id": "yWd8wfYzhmuXX3hmLNaV5bVbAjbWaU",
  "body": {
    "queries": [
      {
        "feature-type": "protocol",
        "match": "https://didcomm.org/tictactoe/1.*"
      },
      {
        "feature-type": "goal-code",
        "match": "org.didcomm.*"
      },
      {
        "feature-type": "custom-type",
        "match": "*"
      }
    ]
  }
}
```

## Disclose Message

- A DIDComm message with the type `https://didcomm.org/discover-features/2.0/disclose`.
- Sent in response to a Query Message, listing the features supported by the agent.
- The message body contains a list of disclosures, each specifying a `feature-type`, an `id` (such as a protocol URI or goal-code), and optionally a list of `roles` supported for that feature.

**Example:**
```json
{
  "type": "https://didcomm.org/discover-features/2.0/disclose",
  "thid": "yWd8wfYzhmuXX3hmLNaV5bVbAjbWaU",
  "body": {
    "disclosures": [
      {
        "feature-type": "protocol",
        "id": "https://didcomm.org/tictactoe/1.0",
        "roles": ["player"]
      },
      {
        "feature-type": "goal-code",
        "id": "org.didcomm.sell.goods.consumer"
      },
      {
        "feature-type": "custom-type",
        "id": "org.didcomm.future.feature"
      }
    ]
  }
}
```

### Constructing Query and Disclose Messages in Dart

You can easily construct and parse these messages using the classes provided by this library.

**Query Message:**

```dart
final queryMessage = QueryMessage(
  id: 'yWd8wfYzhmuXX3hmLNaV5bVbAjbWaU',
  body: QueryBody(
    queries: [
      Query(
        featureType: FeatureType.protocol,
        match: 'https://didcomm.org/tictactoe/1.*',
      ),
      Query(
        featureType: FeatureType.goalCode,
        match: 'org.didcomm.*',
      ),
    ],
  ),
);
```

**Disclose Message:**

```dart
final discloseMessage = DiscloseMessage(
  id: 'a8Fj3kLzQw9Xv2R6sT1bN4yP0eHcVmZq',
  parentThreadId: 'yWd8wfYzhmuXX3hmLNaV5bVbAjbWaU',
  body: DiscloseBody(
    disclosures: [
      Disclosure(
        featureType: FeatureType.protocol,
        id: 'https://didcomm.org/tictactoe/1.0',
        roles: ['player'],
      ),
      Disclosure(
        featureType: FeatureType.goalCode,
        id: 'org.didcomm.sell.goods.consumer',
        roles: null,
      ),
    ],
  ),
);
```


## Ed25519/X25519 Key Derivation

If you select an Ed25519 key (Edwards curve) for your DID or wallet for key agreement purposes, the [Dart SSI package](https://pub.dev/packages/ssi) automatically derives an X25519 key from the Ed25519 key.

Read more about [Ed25519/X25519 Key Derivation](https://pub.dev/packages/ssi#ed25519x25519-key-derivation) from the Dart SSI project.

## Support & feedback

If you face any issues or have suggestions, please don't hesitate to contact us using [this link](https://share.hsforms.com/1i-4HKZRXSsmENzXtPdIG4g8oa2v).

### Reporting technical issues

If you have a technical issue with the DIDComm's codebase, you can also create an issue directly in GitHub.

1. Ensure the bug was not already reported by searching on GitHub under
   [Issues](https://github.com/affinidi/affinidi-didcomm-dart/issues).

2. If you're unable to find an open issue addressing the problem,
   [open a new one](https://github.com/affinidi/affinidi-didcomm-dart/issues/new).
   Be sure to include a **title and clear description**, as much relevant information as possible,
   and a **code sample** or an **executable test case** demonstrating the expected behaviour that is not occurring.

## Contributing

Want to contribute?

Head over to our [CONTRIBUTING](https://github.com/affinidi/affinidi-didcomm-dart/blob/main/CONTRIBUTING.md) guidelines.
