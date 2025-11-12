# Browser Context Switch Example with HTTP Servers

This example demonstrates the complete browser context switch flow for credential issuance using VDIP (Verifiable Data Issuance Protocol) with real HTTP servers.

## Overview

The example showcases a realistic scenario where:

1. **Holder** requests a credential from an **Issuer**
2. **Issuer** determines that browser-based verification is needed
3. **Issuer** sends a Switch Context message with a verification URL
4. **Holder** receives the URL and simulates opening it in a browser
5. The URL redirects to a **Verification Server** (3rd party) with a simple HTML UI
6. User approves/denies the verification request via a button
7. **Verification Server** sends the result back to **Issuer Server**
8. **Issuer** validates the verification result and issues the credential
9. **Holder** receives the verifiable credential

## Architecture

```
┌─────────────┐         ┌─────────────────┐         ┌─────────────────────┐
│             │         │                 │         │                     │
│   Holder    │◄───────►│  Issuer Client  │◄───────►│  Verification      │
│   Client    │ DIDComm │  + HTTP Server  │  HTTP   │  Server (3rd party)│
│             │         │  (port 8080)    │         │  (port 8081)       │
└─────────────┘         └─────────────────┘         └─────────────────────┘
```

### Components

1. **Holder Client** (VDIP Holder)
   - Requests credentials
   - Receives switch context messages
   - Builds browser verification URLs
   - Receives issued credentials

2. **Issuer Server** (HTTP + VDIP Issuer)
   - Port: 8080
   - Handles `/vdip/issuance` endpoint (redirects to verification)
   - Handles `/verification-callback` endpoint (receives verification results)
   - Issues verifiable credentials after successful verification

3. **Verification Server** (HTTP)
   - Port: 8081
   - Serves `/verify` endpoint with HTML UI
   - Displays verification information
   - Allows user to approve/deny via button
   - Sends result back to Issuer Server

## Prerequisites

1. **Generate cryptographic keys** for Holder and Issuer:

   ```bash
   cd libs/dart/didcomm/vdip

   # Create keys directory if it doesn't exist
   mkdir -p example/keys

   # Generate Issuer key (Alice)
   openssl ecparam -name prime256v1 -genkey -noout -out example/keys/alice_private_key.pem

   # Generate Holder key (Bob)
   openssl ecparam -name prime256v1 -genkey -noout -out example/keys/bob_private_key.pem
   ```

2. **Set up a DIDComm mediator**:
   - Option A: Use [Affinidi Portal](https://portal.affinidi.com)
   - Option B: Run [affinidi-tdk-rs mediator](https://github.com/affinidi/affinidi-tdk-rs/tree/main/crates/affinidi-messaging/affinidi-messaging-mediator)

   After setting up, copy the mediator's DID into:

   ```bash
   mkdir -p example/mediator
   echo "did:peer:..." > example/mediator/mediator_did.txt
   ```

## Running the Example

```bash
cd libs/dart/didcomm/vdip
dart run example/browser_context_with_servers_example.dart
```

### What to Expect

1. **Server Startup**:

   ```
   Servers started:
      - Issuer Server: http://localhost:8080
      - Verification Server: http://localhost:8081
   ```

2. **Flow Initiation**:

   ```
   STARTING BROWSER CONTEXT SWITCH FLOW
   Holder: Initiating credential request...
   ```

3. **Switch Context**:

   ```
   Holder: Received Switch Context Message
   Holder: Browser context URL built

   ================================================================================
    SIMULATING BROWSER OPEN
      In a real app, this URL would open in a browser:
      http://localhost:8080/vdip/issuance?token=eyJ...
   ================================================================================
   ```

4. **Verification Page**:

   ```
   Verification Server: Serving verification page

   ================================================================================
   BROWSER VERIFICATION PAGE
      Please open: http://localhost:8081/verify?token=eyJ...
      Or run: open "http://localhost:8081/verify?token=eyJ..."
   ================================================================================
   ```

   The page will:
   - Display verification details
   - Show approve/deny buttons
   - Auto-submit after 3 seconds (for demo purposes)

5. **Verification Callback**:

   ```
    Issuer Server: Verification callback received
      - Nonce: abc-123-xyz
      - Verified: true

    Issuer: Verification successful! Issuing credential...
   ```

6. **Credential Issuance**:

   ```
   Holder: CREDENTIAL RECEIVED!

   SUCCESS! The complete flow is finished:
     1. ✓ Holder requested credential
     2. ✓ Issuer sent switch context
     3. ✓ Browser verification completed
     4. ✓ Issuer validated and issued credential
     5. ✓ Holder received credential

   ```

## Manual Testing

For a more realistic experience, you can manually open the verification page:

1. Run the example
2. When you see the verification URL, open it in your browser:

   ```bash
   open "http://localhost:8081/verify?token=eyJ..."
   ```

3. You'll see a basic verification UI with:
   - Verification details (request type, ID, purpose)
   - Approve and Deny buttons
   - Real-time status updates

## Flow Details

### 1. Initial Credential Request

The Holder sends a credential request without a nonce:

```dart
await holderClient.requestCredential(
  issuerDid: issuerSigner.did,
  options: RequestCredentialsOptions(
    proposalId: 'proposal_browser_verification',
    credentialMeta: CredentialMeta(
      data: {'email': 'holder@example.com'},
    ),
  ),
);
```

### 2. Switch Context Initiation

The Issuer determines verification is needed and sends a switch context message:

```dart
await issuerClient.sendSwitchContext(
  holderDid: message.from!,
  baseIssuerUrl: Uri.parse('http://localhost:8080'),
  nonce: contextNonce,
  threadId: threadId,
);
```

### 3. Browser Context URL Building

The Holder builds a verification URL with a JWT token:

```dart
final verificationUrl = await holderClient.buildBrowserContextUrl(
  switchContextMessage: message,
);
// Returns: http://localhost:8080/vdip/issuance?token=eyJ...
```

### 4. Verification Flow

- Issuer Server redirects to Verification Server
- User sees HTML verification page
- User clicks Approve/Deny
- Result is sent back to Issuer Server via POST

### 5. Credential Issuance

After successful verification, the Issuer issues a credential:

```dart
final unsignedCredential = VcDataModelV1(
  // ... credential details
  credentialSubject: [
    CredentialSubject.fromJson({
      'id': holderDid,
      'email': email,
      'verified': true,
      'verificationMethod': 'browser_context_switch',
    }),
  ],
);
```

## Security Considerations

1. **Nonce Validation**: The nonce from the switch context is validated when the holder requests the credential
2. **JWT Tokens**: Browser context URLs use JWT tokens with expiration (15 minutes by default)
3. **Thread ID**: Ensures messages are part of the same conversation

## Customization

### Change Server Ports

Modify the port numbers in the server initialization:

```dart
final issuerServer = await HttpServer.bind('localhost', 8080);
final verificationServer = await HttpServer.bind('localhost', 8081);
```

### Customize Verification UI

Edit the `_getVerificationHtml()` function to customize:

- Styling (CSS)
- Information displayed
- Button labels
- Auto-submit behavior

### Adjust Timeouts

```dart
// JWT token expiration
buildBrowserContextUrl(
  switchContextMessage: message,
  tokenExpiration: const Duration(minutes: 30), // Custom expiration
);

// Verification timeout
await verificationRequest.completer.future.timeout(
  const Duration(minutes: 10), // Custom timeout
);
```

## Troubleshooting

### Servers won't start

- Ensure ports 8080 and 8081 are not already in use
- Check firewall settings

### Verification page not loading

- Verify the verification server is running
- Check the console for the correct URL
- Try manually opening the URL in a browser

### Credential not issued

- Check that verification was approved (not denied)
- Ensure the nonce matches between requests
- Verify mediator is running and accessible

### Connection issues

- Confirm mediator DID is correct in `example/mediator/mediator_did.txt`
- Ensure private keys are valid
- Check ACL configuration

## API Reference

### Key Classes

- **`VdipHolderClient`**: Client for holders requesting credentials
- **`VdipIssuerClient`**: Client for issuers providing credentials
- **`VdipSwitchContextMessage`**: Message for browser context switching
- **`VerificationRequest`**: Stores pending verification state

### Key Methods

- `sendSwitchContext()`: Issuer sends browser verification request
- `buildBrowserContextUrl()`: Holder builds verification URL
- `requestCredential()`: Holder requests credential with verification nonce
- `sendIssuedCredentials()`: Issuer sends final credential
