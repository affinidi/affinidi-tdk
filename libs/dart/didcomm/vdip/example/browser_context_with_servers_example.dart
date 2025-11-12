import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart';
import 'package:affinidi_tdk_vdip/affinidi_tdk_vdip.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../../../../tests/integration/dart/test/test_config.dart';

/// This example demonstrates the complete browser context switch flow with real HTTP servers:
///
/// Flow:
/// 1. Holder requests a credential from Issuer
/// 2. Issuer responds with a Switch Context message containing a verification URL
/// 3. Holder builds a browser context URL and simulates opening it
/// 4. The URL redirects to a Verification Server (3rd party) with a simple HTML page
/// 5. User clicks a button to submit verification data (boolean)
/// 6. Verification Server sends the result back to Issuer Server
/// 7. Issuer validates the verification and issues the credential
/// 8. Holder receives the credential
///
/// Two servers are created:
/// - Issuer Server (port 8080): Handles verification callbacks
/// - Verification Server (port 8081): Displays verification UI

// Run commands below in your terminal to generate keys:
// openssl ecparam -name prime256v1 -genkey -noout -out example/keys/alice_private_key.pem
// openssl ecparam -name prime256v1 -genkey -noout -out example/keys/bob_private_key.pem

// Create and run a DIDComm mediator and copy its DID into example/mediator/mediator_did.txt

// Storage for pending verification requests
final Map<String, VerificationRequest> pendingVerifications = {};

class VerificationRequest {
  final String nonce;
  final String threadId;
  final String holderDid;
  final String email;
  final Completer<bool> completer;

  VerificationRequest({
    required this.nonce,
    required this.threadId,
    required this.holderDid,
    required this.email,
  }) : completer = Completer<bool>();
}

Future<void> main() async {
  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'vdip',
  );

  final mediatorDid = await readDid(config.mediatorDidPath);
  final mediatorDidDocument =
      await UniversalDIDResolver.defaultResolver.resolveDid(mediatorDid);

  // Initialize Issuer
  final issuerKeyStore = InMemoryKeyStore();
  final issuerWallet = PersistentWallet(issuerKeyStore);
  final issuerDidManager = DidKeyManager(
    wallet: issuerWallet,
    store: InMemoryDidStore(),
  );

  final issuerKeyId = 'issuer-key-1';
  final issuerPrivateKeyBytes =
      await extractPrivateKeyBytes(config.alicePrivateKeyPath);

  await issuerKeyStore.set(
    issuerKeyId,
    StoredKey(
      keyType: KeyType.p256,
      privateKeyBytes: issuerPrivateKeyBytes,
    ),
  );

  await issuerDidManager.addVerificationMethod(issuerKeyId);

  final issuerSigner =
      await issuerDidManager.getSigner(issuerDidManager.assertionMethod.first);

  // Initialize Holder
  final holderKeyStore = InMemoryKeyStore();
  final holderWallet = PersistentWallet(holderKeyStore);
  final holderDidManager = DidKeyManager(
    wallet: holderWallet,
    store: InMemoryDidStore(),
  );

  final holderKeyId = 'holder-key-1';
  final holderPrivateKeyBytes =
      await extractPrivateKeyBytes(config.bobPrivateKeyPath);

  await holderKeyStore.set(
    holderKeyId,
    StoredKey(
      keyType: KeyType.p256,
      privateKeyBytes: holderPrivateKeyBytes,
    ),
  );

  await holderDidManager.addVerificationMethod(holderKeyId);

  final holderSigner =
      await holderDidManager.getSigner(holderDidManager.assertionMethod.first);

  // Configure ACLs
  await Future.wait([
    config.configureAcl(
      mediatorDidDocument: mediatorDidDocument,
      didManager: issuerDidManager,
      theirDids: [holderSigner.did],
    ),
    config.configureAcl(
      mediatorDidDocument: mediatorDidDocument,
      didManager: holderDidManager,
      theirDids: [issuerSigner.did],
    ),
  ]);

  // Start servers
  final issuerServer = await startIssuerServer();
  final verificationServer = await startVerificationServer();

  print('\nServers started:');
  print('   - Issuer Server: http://localhost:8080');
  print('   - Verification Server: http://localhost:8081');
  print('\n');

  // Initialize VDIP Clients
  final issuerClient = await VdipIssuer.init(
    mediatorDidDocument: mediatorDidDocument,
    didManager: issuerDidManager,
    featureDisclosures: FeatureDiscoveryHelper.vdipIssuerDisclosures,
    authorizationProvider: await AffinidiAuthorizationProvider.init(
      mediatorDidDocument: mediatorDidDocument,
      didManager: issuerDidManager,
    ),
    clientOptions: const AffinidiClientOptions(),
  );

  final holderClient = await VdipHolder.init(
    mediatorDidDocument: mediatorDidDocument,
    didManager: holderDidManager,
    authorizationProvider: await AffinidiAuthorizationProvider.init(
      mediatorDidDocument: mediatorDidDocument,
      didManager: holderDidManager,
    ),
    clientOptions: const AffinidiClientOptions(),
  );

  // Set up Holder message listeners
  holderClient.listenForIncomingMessages(
    onDiscloseMessage: (message) async {
      prettyPrint(
        'Holder: Received Feature Disclose Message',
        object: message,
      );
    },
    onSwitchContext: (message) async {
      prettyPrint(
        'Holder: Received Switch Context Message',
        object: message,
      );

      final verificationUrl = await holderClient.buildBrowserContextUrl(
        switchContextMessage: message,
      );

      prettyPrint(
        'Holder: Browser context URL built',
        object: {'url': verificationUrl},
      );

      print('\n${'=' * 80}');
      print('SIMULATING BROWSER OPEN');
      print('   In a real app, this URL would open in a browser:');
      print('   $verificationUrl');
      print('=' * 80 + '\n');

      // Store nonce and request credential with it
      final nonce = message.switchContext.nonce;

      // Simulate delay before requesting credential
      await Future<void>.delayed(const Duration(seconds: 1));

      print(
          'Holder: Sending credential request with nonce from context switch\n');

      await holderClient.requestCredential(
        issuerDid: issuerSigner.did,
        options: RequestCredentialsOptions(
          proposalId: 'proposal_browser_verification',
          credentialMeta: CredentialMeta(
            data: {
              'email': 'holder@example.com',
              'nonce': nonce,
            },
          ),
        ),
      );
    },
    onCredentialsIssuanceResponse: (message) async {
      prettyPrint(
        'Holder: CREDENTIAL RECEIVED!',
        object: message,
      );

      print('\n${'=' * 80}');
      print('SUCCESS! The complete flow is finished:');
      print('  1. Holder requested credential');
      print('  2. Issuer sent switch context');
      print('  3. Browser verification completed');
      print('  4. Issuer validated and issued credential');
      print('  5. Holder received credential');
      print('=' * 80 + '\n');

      // Clean up
      await Future<void>.delayed(const Duration(seconds: 2));
      await issuerServer.close();
      await verificationServer.close();
      await ConnectionPool.instance.stopConnections();
      exit(0);
    },
    onProblemReport: (message) {
      prettyPrint('Holder: Problem occurred', object: message);
    },
  );

  // Set up Issuer message listeners
  issuerClient.listenForIncomingMessages(
    onFeatureQuery: (message) async {
      prettyPrint(
        'Issuer: Received Feature Query',
        object: message,
      );

      await issuerClient.disclose(queryMessage: message);
    },
    onRequestToIssueCredential: ({
      required message,
      holderDidFromAssertion,
      isAssertionValid,
    }) async {
      prettyPrint(
        'Issuer: Received Request to Issue Credential',
        object: message,
      );

      final vdipRequestBody =
          VdipRequestIssuanceMessageBody.fromJson(message.body!);

      final email = vdipRequestBody.credentialMeta?.data?['email'] as String?;
      final nonce = vdipRequestBody.credentialMeta?.data?['nonce'] as String?;

      if (email == null || message.from == null) {
        throw ArgumentError('Missing required fields');
      }

      // Check if this is the first request (no nonce yet)
      if (nonce == null) {
        print('Issuer: No nonce found, initiating browser context switch\n');

        final contextNonce = const Uuid().v4();
        final threadId = message.threadId ?? message.id;

        // Store verification request
        pendingVerifications[contextNonce] = VerificationRequest(
          nonce: contextNonce,
          threadId: threadId,
          holderDid: message.from!,
          email: email,
        );

        await issuerClient.sendSwitchContext(
          holderDid: message.from!,
          baseIssuerUrl: Uri.parse('http://localhost:8080'),
          nonce: contextNonce,
          threadId: threadId,
        );

        print(
            'Issuer: Switch context sent. Waiting for browser verification...\n');
        return;
      }

      // If we have a nonce, wait for verification result
      print('Issuer: Nonce received, waiting for verification result...\n');

      final verificationRequest = pendingVerifications[nonce];
      if (verificationRequest == null) {
        throw StateError('No pending verification for nonce: $nonce');
      }

      // Wait for verification to complete (with timeout)
      final verificationResult =
          await verificationRequest.completer.future.timeout(
        const Duration(minutes: 5),
        onTimeout: () {
          print('Verification timed out\n');
          return false;
        },
      );

      if (!verificationResult) {
        print('Issuer: Verification failed or denied\n');
        // Could send a problem report here
        return;
      }

      print('Issuer: Verification successful! Issuing credential...\n');

      // Issue the credential
      final unsignedCredential = VcDataModelV1(
        context: [
          dmV1ContextUrl,
          'https://d2oeuqaac90cm.cloudfront.net/TTestMusicSubscriptionV1R0.jsonld',
        ],
        credentialSchema: [
          CredentialSchema(
            id: Uri.parse(
              'https://d2oeuqaac90cm.cloudfront.net/TTestMusicSubscriptionV1R0.json',
            ),
            type: 'JsonSchemaValidator2018',
          ),
        ],
        id: Uri.parse(const Uuid().v4()),
        issuer: Issuer.uri(issuerSigner.did),
        type: {'VerifiableCredential', 'TestMusicSubscription'},
        issuanceDate: DateTime.now().toUtc(),
        credentialSubject: [
          CredentialSubject.fromJson({
            'id': message.from!,
            'email': email,
            'subscriptionType': 'premium',
            'verified': true,
            'verificationMethod': 'browser_context_switch',
          }),
        ],
      );

      final suite = LdVcDm1Suite();
      final issuedCredential = await suite.issue(
        unsignedData: unsignedCredential,
        proofGenerator: DataIntegrityEcdsaJcsGenerator(
          signer: issuerSigner,
        ),
      );

      await issuerClient.sendIssuedCredentials(
        holderDid: message.from!,
        verifiableCredential: issuedCredential,
      );

      // Clean up
      pendingVerifications.remove(nonce);

      print('Issuer: Credential sent to holder!\n');
    },
    onProblemReport: (message) {
      prettyPrint('Issuer: Problem occurred', object: message);
    },
  );

  // Start the flow: Holder requests credential
  print('\n${'=' * 80}');
  print('STARTING BROWSER CONTEXT SWITCH FLOW');
  print('=' * 80 + '\n');

  print('Holder: Initiating credential request...\n');

  await holderClient.requestCredential(
    issuerDid: issuerSigner.did,
    options: RequestCredentialsOptions(
      proposalId: 'proposal_browser_verification',
      credentialMeta: CredentialMeta(
        data: {
          'email': 'holder@example.com',
        },
      ),
    ),
  );

  await ConnectionPool.instance.startConnections();
}

/// Starts the Issuer Server that handles verification callbacks
Future<HttpServer> startIssuerServer() async {
  final server = await HttpServer.bind('localhost', 8080);

  server.listen((HttpRequest request) async {
    // Enable CORS for browser requests
    request.response.headers.add('Access-Control-Allow-Origin', '*');
    request.response.headers
        .add('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
    request.response.headers
        .add('Access-Control-Allow-Headers', 'Content-Type');

    if (request.method == 'OPTIONS') {
      request.response.statusCode = HttpStatus.ok;
      await request.response.close();
      return;
    }

    final uri = request.uri;

    // Handle VDIP issuance endpoint - redirects to verification server
    if (uri.path == '/vdip/issuance' &&
        uri.queryParameters.containsKey('token')) {
      print(
          'Issuer Server: Received browser request, redirecting to verification...\n');

      final token = uri.queryParameters['token']!;

      // Redirect to verification server with the token
      final redirectUrl = 'http://localhost:8081/verify?token=$token';

      request.response.statusCode = HttpStatus.movedTemporarily;
      request.response.headers.add('Location', redirectUrl);
      await request.response.close();
      return;
    }

    // Handle verification callback from the verification server
    if (uri.path == '/verification-callback' && request.method == 'POST') {
      final body =
          await request.cast<List<int>>().transform(const Utf8Decoder()).join();
      final data = Uri.splitQueryString(body);

      final nonce = data['nonce'];
      final verified = data['verified'] == 'true';

      print('Issuer Server: Verification callback received');
      print('   - Nonce: $nonce');
      print('   - Verified: $verified\n');

      final verificationRequest = pendingVerifications[nonce];
      if (verificationRequest != null &&
          !verificationRequest.completer.isCompleted) {
        verificationRequest.completer.complete(verified);
      }

      request.response.statusCode = HttpStatus.ok;
      request.response.write('OK');
      await request.response.close();
      return;
    }

    // 404 for other paths
    request.response.statusCode = HttpStatus.notFound;
    request.response.write('Not Found');
    await request.response.close();
  });

  return server;
}

/// Starts the Verification Server that displays the verification UI
Future<HttpServer> startVerificationServer() async {
  final server = await HttpServer.bind('localhost', 8081);

  server.listen((HttpRequest request) async {
    final uri = request.uri;

    // Serve the verification page
    if (uri.path == '/verify' && uri.queryParameters.containsKey('token')) {
      final token = uri.queryParameters['token']!;

      print('Verification Server: Serving verification page\n');
      print('=' * 80);
      print('BROWSER VERIFICATION PAGE');
      print('   Please open: http://localhost:8081/verify?token=$token');
      print('   Or run: open "http://localhost:8081/verify?token=$token"');
      print('=' * 80 + '\n');

      // For this example, we'll auto-submit after a delay
      // In a real scenario, user would click the button
      Future.delayed(const Duration(seconds: 3), () async {
        print('Auto-submitting verification (simulating user click)...\n');

        // Simulate form submission
        final client = HttpClient();
        try {
          final nonce = _extractNonceFromToken(token);
          final request = await client.postUrl(
            Uri.parse('http://localhost:8080/verification-callback'),
          );
          request.headers.contentType =
              ContentType('application', 'x-www-form-urlencoded');
          request.write('nonce=$nonce&verified=true');
          final response = await request.close();
          await response.drain<void>();
        } finally {
          client.close();
        }
      });

      request.response.headers.contentType = ContentType.html;
      request.response.write(_getVerificationHtml(token));
      await request.response.close();
      return;
    }

    // 404 for other paths
    request.response.statusCode = HttpStatus.notFound;
    request.response.write('Not Found');
    await request.response.close();
  });

  return server;
}

/// Extracts nonce from JWT token (simplified for demo)
String _extractNonceFromToken(String token) {
  try {
    // JWT format: header.payload.signature
    final parts = token.split('.');
    if (parts.length != 3) return '';

    // Decode payload (base64url)
    final payload = parts[1];
    final normalized = base64Url.normalize(payload);
    final decoded = utf8.decode(base64Url.decode(normalized));

    // Parse JSON and extract nonce
    final json = jsonDecode(decoded) as Map<String, dynamic>;
    return json['nonce'] as String? ?? '';
  } catch (e) {
    print('Error extracting nonce: $e');
    return '';
  }
}

/// Returns the HTML for the verification page
String _getVerificationHtml(String token) {
  final nonce = _extractNonceFromToken(token);

  return '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verification Required</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Helvetica Neue', Arial, sans-serif;
            background: linear-gradient(180deg, #0F0F23 0%, #1A1A2E 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }
        .container {
            background: #FFFFFF;
            border-radius: 16px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.12);
            max-width: 540px;
            width: 100%;
            padding: 48px;
            text-align: center;
        }
        .icon {
            width: 64px;
            height: 64px;
            margin: 0 auto 24px;
            background: linear-gradient(135deg, #6C4AE0 0%, #8B5CF6 100%);
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 32px;
        }
        h1 {
            color: #0F0F23;
            margin-bottom: 12px;
            font-size: 32px;
            font-weight: 700;
            letter-spacing: -0.5px;
        }
        .subtitle {
            color: #525266;
            margin-bottom: 32px;
            font-size: 16px;
            line-height: 1.6;
            font-weight: 400;
        }
        .info-box {
            background: #F8F9FA;
            border: 1px solid #E9ECEF;
            border-radius: 12px;
            padding: 24px;
            margin-bottom: 32px;
            text-align: left;
        }
        .info-item {
            margin-bottom: 16px;
            font-size: 14px;
        }
        .info-item:last-child {
            margin-bottom: 0;
        }
        .info-label {
            font-weight: 600;
            color: #0F0F23;
            margin-bottom: 4px;
            font-size: 13px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        .info-value {
            color: #525266;
            word-break: break-all;
            font-family: 'SF Mono', 'Monaco', 'Courier New', monospace;
            font-size: 13px;
            line-height: 1.5;
        }
        .button-group {
            display: flex;
            gap: 12px;
            margin-top: 32px;
        }
        button {
            flex: 1;
            padding: 16px 32px;
            font-size: 15px;
            font-weight: 600;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.2s cubic-bezier(0.4, 0, 0.2, 1);
            letter-spacing: 0.3px;
            font-family: inherit;
        }
        .btn-approve {
            background: linear-gradient(135deg, #6C4AE0 0%, #8B5CF6 100%);
            color: #FFFFFF;
            box-shadow: 0 2px 8px rgba(108, 74, 224, 0.25);
        }
        .btn-approve:hover {
            transform: translateY(-1px);
            box-shadow: 0 4px 12px rgba(108, 74, 224, 0.35);
        }
        .btn-approve:active {
            transform: translateY(0);
        }
        .btn-deny {
            background: #FFFFFF;
            color: #525266;
            border: 1px solid #E9ECEF;
        }
        .btn-deny:hover {
            background: #F8F9FA;
            border-color: #DEE2E6;
        }
        button:disabled {
            opacity: 0.5;
            cursor: not-allowed;
            transform: none !important;
        }
        .status {
            margin-top: 24px;
            padding: 16px;
            border-radius: 8px;
            font-weight: 500;
            font-size: 14px;
            display: none;
        }
        .status.success {
            background: #D1FAE5;
            color: #065F46;
            border: 1px solid #A7F3D0;
            display: block;
        }
        .status.error {
            background: #FEE2E2;
            color: #991B1B;
            border: 1px solid #FECACA;
            display: block;
        }
        .spinner {
            border: 3px solid #E9ECEF;
            border-top: 3px solid #6C4AE0;
            border-radius: 50%;
            width: 18px;
            height: 18px;
            animation: spin 0.8s linear infinite;
            display: inline-block;
            margin-right: 8px;
            vertical-align: middle;
        }
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
        .auto-submit-info {
            margin-top: 24px;
            padding: 16px;
            background: #FEF3C7;
            border: 1px solid #FDE68A;
            border-radius: 8px;
            color: #92400E;
            font-size: 13px;
            font-weight: 500;
        }
        .auto-submit-info strong {
            font-weight: 700;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="icon">
            <svg width="32" height="32" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M12 2L4 6V11C4 16.55 7.84 21.74 13 23C18.16 21.74 22 16.55 22 11V6L12 2Z" fill="white" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M9 12L11 14L15 10" stroke="#6C4AE0" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
        </div>
        <h1>Identity Verification</h1>
        <p class="subtitle">
            A credential issuer is requesting to verify your identity.
            Please review the details below and approve or deny the request.
        </p>

        <div class="info-box">
            <div class="info-item">
                <div class="info-label">Verification ID</div>
                <div class="info-value">$nonce</div>
            </div>
            <div class="info-item">
                <div class="info-label">Purpose</div>
                <div class="info-value">Issue Verifiable Credential</div>
            </div>
        </div>

        <div class="auto-submit-info">
            <strong>Demo Mode:</strong> This will auto-submit in 3 seconds
        </div>

        <div class="button-group">
            <button class="btn-deny" onclick="submitVerification(false)">
                Deny
            </button>
            <button class="btn-approve" onclick="submitVerification(true)">
                Approve
            </button>
        </div>

        <div id="status" class="status"></div>
    </div>

    <script>
        let submitted = false;

        async function submitVerification(approved) {
            if (submitted) return;
            submitted = true;

            const buttons = document.querySelectorAll('button');
            buttons.forEach(btn => btn.disabled = true);

            const status = document.getElementById('status');
            status.innerHTML = '<div class="spinner"></div> Processing...';
            status.className = 'status';
            status.style.display = 'block';

            try {
                const response = await fetch('http://localhost:8080/verification-callback', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    body: new URLSearchParams({
                        nonce: '$nonce',
                        verified: approved.toString()
                    })
                });

                if (response.ok) {
                    status.innerHTML = approved
                        ? 'Verification approved successfully!'
                        : 'Verification denied';
                    status.className = 'status ' + (approved ? 'success' : 'error');

                    setTimeout(() => {
                        window.close();
                    }, 2000);
                } else {
                    throw new Error('Request failed');
                }
            } catch (error) {
                status.innerHTML = 'Error: ' + error.message;
                status.className = 'status error';
                buttons.forEach(btn => btn.disabled = false);
                submitted = false;
            }
        }

        // // Auto-submit after 3 seconds (TODO: check failing state!!!)
        // setTimeout(() => {
        //     if (!submitted) {
        //         submitVerification(true);
        //     }
        // }, 3000);
    </script>
</body>
</html>
''';
}
