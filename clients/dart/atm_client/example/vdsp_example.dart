import 'package:affinidi_tdk_atm_client/src/clients/vdsp_holder_client.dart';
import 'package:affinidi_tdk_atm_client/src/clients/vdsp_verifier_client.dart';
import 'package:affinidi_tdk_atm_client/src/messages/vdsp/vdsp_query_data_message.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../../../tests/integration/dart/test/test_config.dart';

Future<void> main() async {
  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'mediator_client',
  );

  final verifierKeyStore = InMemoryKeyStore();
  final verifierWallet = PersistentWallet(verifierKeyStore);

  final verifierDidManager = DidKeyManager(
    wallet: verifierWallet,
    store: InMemoryDidStore(),
  );

  final verifierKeyId = 'verifier-key-1';

  final verifierPrivateKeyBytes = await extractPrivateKeyBytes(
    config.alicePrivateKeyPath,
  );

  await verifierKeyStore.set(
    verifierKeyId,
    StoredKey(
      keyType: KeyType.p256,
      privateKeyBytes: verifierPrivateKeyBytes,
    ),
  );

  await verifierDidManager.addVerificationMethod(verifierKeyId);

  final holderKeyStore = InMemoryKeyStore();
  final holderWallet = PersistentWallet(holderKeyStore);

  final holderDidManager = DidKeyManager(
    wallet: holderWallet,
    store: InMemoryDidStore(),
  );

  final holderKeyId = 'holder-key-1';

  final holderPrivateKeyBytes = await extractPrivateKeyBytes(
    config.bobPrivateKeyPath,
  );

  await holderKeyStore.set(
    holderKeyId,
    StoredKey(
      keyType: KeyType.p256,
      privateKeyBytes: holderPrivateKeyBytes,
    ),
  );

  await holderDidManager.addVerificationMethod(holderKeyId);
  final holderDid = (await holderDidManager.getDidDocument()).id;

  const dsql = {
    'credentials': [
      {
        'id': 'my_credential',
        'format': 'mso_mdoc',
        'meta': {'doctype_value': 'org.iso.7367.1.mVRC'},
        'claims': [
          {
            'path': ['org.iso.7367.1', 'vehicle_holder'],
            'intent_to_retain': true,
          },
          {
            'path': ['org.iso.18013.5.1', 'first_name'],
          },
        ],
      },
    ],
  };

  // verifier

  final verifierClient = await VdspVerifierClient.init(
    didManager: verifierDidManager,
  );

  final verifierAuthTokens = await verifierClient.authenticate();

  await verifierClient.queryHolderFeatures(
    holderDid: holderDid,
    accessToken: verifierAuthTokens.accessToken,
  );

  await verifierClient.listenForIncomingMessages(
    onDiscloseMessage: (message) async {
      prettyPrint(
        'Verifier received Disclose Message',
        object: message,
      );

      await verifierClient.queryHolderData(
        holderDid: holderDid,
        operation: 'registerAgent',
        query: dsql,
        dataQueryLanguage: 'DCQL',
        responseFormat: 'application/json',
        proofContext: VdspQueryDataProofContext(
          challenge: const Uuid().v4(),
          domain: 'verifier.example',
        ),
        accessToken: verifierAuthTokens.accessToken,
      );
    },
    onDataResponse: (message) {
      prettyPrint(
        'Verifier received Data Response Message',
        object: message,
      );
    },
    onProblemReport: (message) {
      prettyPrint(
        'A problem has occurred',
        object: message,
      );
    },
    accessToken: verifierAuthTokens.accessToken,
    refreshToken: verifierAuthTokens.refreshToken,
  );

  // holder

  final holderClient = await VdspHolderClient.init(
    didManager: holderDidManager,
  );

  final holderAuthTokens = await holderClient.authenticate();

  await holderClient.listenForIncomingMessages(
    onQueryFeatures: (message) async {
      prettyPrint(
        'Holder received Feature Query Message',
        object: message,
      );

      // is trusted verifier
      // if (message.from == verifierDid) {
      await holderClient.discloseFeatures(
        verifierDid: message.from!,
        accessToken: holderAuthTokens.accessToken,
      );
      // }
    },
    onDataRequest: (message) async {
      prettyPrint(
        'Holder received Data Request Message',
        object: message,
      );

      final requestBody = VdspQueryDataBody.fromJson(message.body!);

      final vcs = <Map<String, dynamic>>[];
      final vp = {'vc': vcs, 'proof': 'xyz'};

      // is trusted verifier
      // if (message.from == verifierDid) {
      await holderClient.shareData(
        verifierDid: message.from!,
        operation: requestBody.operation,
        dataResponse: vp,
        dataQueryLanguage: requestBody.dataQueryLanguage,
        responseFormat: requestBody.responseFormat,
        threadId: message.threadId ?? message.id,
        accessToken: holderAuthTokens.accessToken,
      );
      // }
    },
    onProblemReport: (message) {
      prettyPrint(
        'A problem has occurred',
        object: message,
      );
    },
    accessToken: holderAuthTokens.accessToken,
    refreshToken: holderAuthTokens.refreshToken,
  );
}
