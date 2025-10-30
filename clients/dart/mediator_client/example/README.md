# Affinidi DIDComm for Dart Examples

Check the code snippets on the sample usage of this package with your project.

## DIDComm Message Examples

### 1. Pack and unpack the DIDComm message using the p256 key type

The example shows Alice composing a DIDComm message, signing it, and encrypting it using the p256 key type - [view example](https://github.com/affinidi/affinidi-didcomm-dart/blob/main/example/didcomm_example.dart).

### 2. Pack and unpack the DIDComm message using the Ed25519 key type

The example shows Alice composing a DIDComm message, signing it, and encrypting it using the Ed25519 key type - [view example](https://github.com/affinidi/affinidi-didcomm-dart/blob/main/example/didcomm_ed25519_example.dart).

## DIDComm Message with Mediator Workflow Examples

### 1. Forward the message through the Mediator

Authenticate and forward a DIDComm message from Alice to Bob using a Mediator service - [view example](https://github.com/affinidi/affinidi-didcomm-dart/blob/main/example/didcomm_mediator_example.dart).

### 2. Send a DIDComm message through the Mediator to another DID

Compose a DIDComm message signed and encrypted by the sender and forward it to the Mediator service for routing - [view example](https://github.com/affinidi/affinidi-didcomm-dart/blob/main/example/didcomm_mediator_sender_example.dart).

### 3. Received DIDComm message through Mediator from another DID

Fetch DIDComm messages from the Mediator addressed to the DID of the recipient - [view example](https://github.com/affinidi/affinidi-didcomm-dart/blob/main/example/didcomm_mediator_receiver_example.dart).

### 4. Forward message through Mediator using WebSocket

Forward DIDComm message from Alice to Bob using a Mediator service in WebSocket mode - [view example](https://github.com/affinidi/affinidi-didcomm-dart/blob/main/example/didcomm_mediator_web_sockets_example.dart).

### 5. Forward the message through the Mediator with ACL enabled

Authenticate and forward a DIDComm message from Alice to Bob using a Mediator (with ACL enabled) service - [view example](https://github.com/affinidi/affinidi-didcomm-dart/blob/main/example/didcomm_mediator_with_acl_example.dart).
