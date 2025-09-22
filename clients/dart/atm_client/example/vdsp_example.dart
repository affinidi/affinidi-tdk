import 'package:affinidi_tdk_atm_client/src/clients/vdsp_holder_client.dart';
import 'package:affinidi_tdk_atm_client/src/clients/vdsp_verifier_client.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../../../../tests/integration/dart/test/test_config.dart';

Future<void> main() async {
  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'mediator_client',
  );

  final verifierKeyStore = InMemoryKeyStore();
  final verifierWallet = PersistentWallet(verifierKeyStore);

  final verifierDidManager = DidPeerManager(
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
  final verifierDid = (await verifierDidManager.getDidDocument()).id;

  final holderKeyStore = InMemoryKeyStore();
  final holderWallet = PersistentWallet(holderKeyStore);

  final holderDidManager = DidPeerManager(
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
      final holderFeatures = message.body!['disclosedFeatures'] as Object;

      await verifierClient.queryHolderData(
        holderDid: holderDid,
        holderFeatures: holderFeatures,
        dsql: dsql,
        accessToken: verifierAuthTokens.accessToken,
      );
    },
    onDataResponse: (message) {
      prettyPrint(
        'holder vcs',
        object: message.body!['verifiable_presentation']['vcs'],
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
      // is trusted verifier
      if (message.from == verifierDid) {
        await holderClient.discloseFeatures(
          verifierDid: message.from!,
          accessToken: holderAuthTokens.accessToken,
        );
      }
    },
    onDataRequest: (message) async {
      final vcs = []; // run message.body.dcql to filter vc
      final vp = {'vc': vcs, 'proof': 'xyz'};

      // is trusted verifier
      if (message.from == verifierDid) {
        await holderClient.shareData(
          verifierDid: message.from!,
          verifiablePresentation: vp,
          accessToken: holderAuthTokens.accessToken,
        );
      }
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
