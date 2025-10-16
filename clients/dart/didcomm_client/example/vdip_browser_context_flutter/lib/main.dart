import 'dart:io';

import 'package:affinidi_tdk_didcomm_client/didcomm_client.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';
import 'package:veriff_flutter/veriff_flutter.dart';

Future<void> runVdipFlow() async {
  WidgetsFlutterBinding.ensureInitialized();

  final currentDir = Directory.current.path;
  final aliceKeyPath = path.normalize(
    path.join(currentDir, '../../example/keys/alice_private_key.pem'),
  );
  final bobKeyPath = path.normalize(
    path.join(currentDir, '../../example/keys/bob_private_key.pem'),
  );

  final issuerKeyStore = InMemoryKeyStore();
  final issuerWallet = PersistentWallet(issuerKeyStore);

  final issuerDidManager = DidKeyManager(
    wallet: issuerWallet,
    store: InMemoryDidStore(),
  );

  final issuerKeyId = 'issuer-key-1';

  final issuerPrivateKeyBytes = await extractPrivateKeyBytes(aliceKeyPath);

  await issuerKeyStore.set(
    issuerKeyId,
    StoredKey(
      keyType: KeyType.p256,
      privateKeyBytes: issuerPrivateKeyBytes,
    ),
  );

  await issuerDidManager.addVerificationMethod(issuerKeyId);

  final issuerSigner = await issuerDidManager.getSigner(
    issuerDidManager.assertionMethod.first,
  );

  final holderKeyStore = InMemoryKeyStore();
  final holderWallet = PersistentWallet(holderKeyStore);

  final holderDidManager = DidKeyManager(
    wallet: holderWallet,
    store: InMemoryDidStore(),
  );

  final holderKeyId = 'holder-key-1';

  final holderPrivateKeyBytes = await extractPrivateKeyBytes(bobKeyPath);

  await holderKeyStore.set(
    holderKeyId,
    StoredKey(
      keyType: KeyType.p256,
      privateKeyBytes: holderPrivateKeyBytes,
    ),
  );

  await holderDidManager.addVerificationMethod(holderKeyId);

  final vdipHolderClient = await VdipHolderClient.init(
    didManager: holderDidManager,
    featureDisclosures:
        FeatureDiscoveryHelper.defaultFeatureDisclosuresOfHolderForVdip,
  );

  final veriff = Veriff();
  final veriffApiKey = await File(
    '../veriff/veriff_api_key.txt',
  ).readAsString();

  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://stationapi.veriff.com/v1',
      headers: {
        'Content-Type': 'application/json',
        'X-AUTH-CLIENT': veriffApiKey.trim(),
      },
    ),
  );

  vdipHolderClient.listenForIncomingMessages(
    onSwitchContext: (switchContextMsg) async {
      prettyPrint(
        'Holder received Switch Context Message',
        object: switchContextMsg,
      );

      final issuerUrl = await vdipHolderClient.buildBrowserContextUrl(
        switchContextMessage: switchContextMsg,
      );

      prettyPrint(
        'Issuer URL built successfully (VDIP spec step 5)',
        object: issuerUrl,
      );

      prettyPrint(
        'Starting Veriff verification session',
        object: null,
      );

      final response = await dio.post<Map<String, dynamic>>(
        '/sessions',
        data: {
          'verification': {
            'callback': issuerUrl,
            'vendorData': switchContextMsg.switchContext.nonce,
          },
        },
      );

      final responseData = response.data as Map<String, dynamic>;
      final verificationData =
          responseData['verification'] as Map<String, dynamic>;
      final sessionUrl = verificationData['url'] as String;

      prettyPrint(
        'Veriff session created',
        object: {'sessionUrl': sessionUrl},
      );

      final config = Configuration(sessionUrl);
      final result = await veriff.start(config);

      prettyPrint(
        'Veriff verification completed',
        object: {
          'status': result.status.toString(),
          'error': result.error?.toString(),
        },
      );

      await ConnectionPool.instance.stopConnections();
    },
    onCredentialsIssuanceResponse: (message) async {
      prettyPrint(
        'Holder received Credentials Issuance Response Message',
        object: message,
      );

      await ConnectionPool.instance.stopConnections();
    },
    onProblemReport: (message) {
      prettyPrint(
        'A problem has occurred',
        object: message,
      );
    },
  );

  final issuerVdipClient = await VdipIssuerClient.init(
    didManager: issuerDidManager,
    featureDisclosures:
        FeatureDiscoveryHelper.defaultFeatureDisclosuresOfIssuerForVdip,
  );

  issuerVdipClient.listenForIncomingMessages(
    onFeatureQuery: (message) async {
      prettyPrint(
        'Issuer received Feature Query Message',
        object: message,
      );

      if (message.from == null) {
        throw ArgumentError.notNull('from');
      }

      await issuerVdipClient.sendSwitchContext(
        holderDid: message.from!,
        baseIssuerUrl: Uri.parse('https://issuer.example.com'),
        nonce: const Uuid().v4(),
        threadId: message.threadId ?? message.id,
      );
    },
    onRequestToIssueCredentials: (message) async {
      prettyPrint(
        'Issuer received Request to Issue Credentials Message',
        object: message,
      );
    },
    onProblemReport: (message) {
      prettyPrint(
        'A problem has occurred',
        object: message,
      );
    },
  );

  await vdipHolderClient.queryIssuerFeatures(
    issuerDid: issuerSigner.did,
    featureQueries: [
      Query(
        featureType: 'protocol',
        match: 'https://affinidi.com/didcomm/protocols/vdip/1.0',
      ),
    ],
  );

  await ConnectionPool.instance.startConnections();
}

void main() {
  runApp(const VdipBrowserContextApp());
}

class VdipBrowserContextApp extends StatelessWidget {
  const VdipBrowserContextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: runVdipFlow,
            child: Text('Run VDIP Browser Context Flow'),
          ),
        ),
      ),
    );
  }
}
