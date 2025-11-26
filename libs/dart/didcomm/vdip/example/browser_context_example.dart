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

  VerificationRequest({
    required this.nonce,
    required this.threadId,
    required this.holderDid,
    required this.email,
  });
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

  // Initialize VDIP issuer
  final vdipIssuer = await VdipIssuer.init(
    mediatorDidDocument: mediatorDidDocument,
    didManager: issuerDidManager,
    featureDisclosures: FeatureDiscoveryHelper.vdipIssuerDisclosures,
    authorizationProvider: await AffinidiAuthorizationProvider.init(
      mediatorDidDocument: mediatorDidDocument,
      didManager: issuerDidManager,
    ),
    clientOptions: const AffinidiClientOptions(),
  );

  // Start servers
  final issuerServer = await startIssuerServer(
    vdipIssuer: vdipIssuer,
    issuerSigner: issuerSigner,
  );
  final verificationServer = await startVerificationServer();

  print('\nServers started:');
  print('   - Issuer Server: http://localhost:8080');
  print('   - Verification Server: http://localhost:8081');
  print('\n');

  final vdipHolder = await VdipHolder.init(
    mediatorDidDocument: mediatorDidDocument,
    didManager: holderDidManager,
    authorizationProvider: await AffinidiAuthorizationProvider.init(
      mediatorDidDocument: mediatorDidDocument,
      didManager: holderDidManager,
    ),
    clientOptions: const AffinidiClientOptions(),
  );

  // Set up Holder message listeners
  vdipHolder.listenForIncomingMessages(
    onDiscloseMessage: (message) async {
      prettyPrint(
        'Holder: Received Feature Disclose Message',
        object: message,
      );

      await vdipHolder.requestCredential(
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
    },
    onSwitchContext: (message) async {
      prettyPrint(
        'Holder: Received Switch Context Message',
        object: message,
      );

      final verificationUrl = await vdipHolder.buildBrowserContextUrl(
        switchContextMessage: message,
      );

      prettyPrint(
        'Holder: Browser context URL built',
        object: {'url': verificationUrl},
      );

      print('\n${'=' * 80}');
      print('BROWSER OPEN');
      print('   $verificationUrl');
      print('=' * 80 + '\n');

      /// Opens verification URL in the browser
      await Process.run(
        'open',
        [verificationUrl.toString()],
      );

      print(
          'Holder: Sending credential request with nonce from context switch\n');
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
  vdipIssuer.listenForIncomingMessages(
    onFeatureQuery: (message) async {
      prettyPrint(
        'Issuer: Received Feature Query',
        object: message,
      );

      await vdipIssuer.disclose(queryMessage: message);
    },
    onRequestToIssueCredential: ({
      required message,
      holderDidFromAssertion,
      isAssertionValid,
      challenge,
    }) async {
      prettyPrint(
        'Issuer: Received Request to Issue Credential',
        object: message,
      );

      final vdipRequestIssuanceBody = VdipRequestIssuanceMessageBody.fromJson(
        Map<String, dynamic>.from(message.body!),
      );

      print('Issuer: No nonce found, initiating browser context switch\n');
      final email = vdipRequestIssuanceBody.credentialMeta?.data?['email'];

      if (email == null) {
        throw StateError('Issuer: Email is missing in credential meta\n');
      }

      final contextNonce = const Uuid().v4();
      final threadId = message.threadId ?? message.id;

      // Store verification request
      pendingVerifications[contextNonce] = VerificationRequest(
        nonce: contextNonce,
        threadId: threadId,
        holderDid: message.from!,
        email: email as String,
      );

      await vdipIssuer.sendSwitchContext(
        holderDid: message.from!,
        baseIssuerUrl: Uri.parse('http://localhost:8080'),
        nonce: contextNonce,
        threadId: threadId,
      );

      print(
          'Issuer: Switch context sent. Waiting for browser verification...\n');

      // If we have a nonce, wait for verification result
      print('Issuer: Nonce received, waiting for verification result...\n');
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

  await vdipHolder.requestCredential(
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
Future<HttpServer> startIssuerServer({
  required VdipIssuer vdipIssuer,
  required DidSigner issuerSigner,
}) async {
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

      final token = data['token'];
      final nonce = data['nonce'];
      final verified = data['verified'] == 'true';

      print('Issuer Server: Verification callback received');
      print('   - Token: ${token?.substring(0, 20)}...');
      print('   - Nonce: $nonce');
      print('   - Verified: $verified\n');

      if (token == null) {
        request.response.statusCode = HttpStatus.badRequest;
        request.response.write('Missing token');
        await request.response.close();
        return;
      }

      if (nonce == null) {
        request.response.statusCode = HttpStatus.badRequest;
        request.response.write('Missing nonce');
        await request.response.close();
        return;
      }

      // Get the pending verification for this nonce
      final verificationRequest = pendingVerifications[nonce];
      if (verificationRequest == null) {
        print('Issuer: No pending verification found for nonce: $nonce\n');
        request.response.statusCode = HttpStatus.notFound;
        request.response.write('No pending verification found');
        await request.response.close();
        return;
      }

      // Validate the token
      final isValid = await vdipIssuer.validateHolderToken(
        token: token,
        holderDid: verificationRequest.holderDid,
        expectedNonce: nonce,
        expectedThreadId: verificationRequest.threadId,
      );

      if (!isValid) {
        print('Issuer: Token validation failed\n');
        request.response.statusCode = HttpStatus.unauthorized;
        request.response.write('Invalid or expired token');
        await request.response.close();
        return;
      }

      print('Issuer: Token validated successfully!\n');

      if (verified) {
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
              'id': verificationRequest.holderDid,
              'email': verificationRequest.email,
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

        await vdipIssuer.sendIssuedCredentials(
          holderDid: verificationRequest.holderDid,
          verifiableCredential: issuedCredential,
        );

        print('Issuer: Credential sent to holder!\n');
      } else {
        print('Issuer: Verification denied by user\n');
      }

      // Clean up
      pendingVerifications.remove(nonce);

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
      print('   Waiting for user to click Approve or Deny button...');
      print('=' * 80 + '\n');

      request.response.headers.contentType = ContentType.html;
      request.response.write(await _getVerificationHtml(token));
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
Future<String> _getVerificationHtml(String token) async {
  final nonce = _extractNonceFromToken(token);

  // Read HTML template from file
  final htmlFile = File('example/verification_page.html');
  final htmlTemplate = await htmlFile.readAsString();

  // Replace placeholders with actual values
  return htmlTemplate.replaceAll('{{NONCE}}', nonce);
}
