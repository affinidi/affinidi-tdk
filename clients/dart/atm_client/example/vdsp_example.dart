import 'dart:convert';

import 'package:affinidi_tdk_atm_client/src/clients/vdsp_holder_client.dart';
import 'package:affinidi_tdk_atm_client/src/clients/vdsp_verifier_client.dart';
import 'package:affinidi_tdk_atm_client/src/common/feature_discovery_helper.dart';
import 'package:affinidi_tdk_atm_client/src/messages/vdsp/vdsp_query_data_message.dart';
import 'package:affinidi_tdk_atm_client/src/models/constants/feature_type.dart';
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

  final featureQueries = [
    ...FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
      FeatureDiscoveryHelper.defaultFeatureDisclosuresOfHolder,
    ),
    Query(
      featureType: FeatureType.operation.value,
      match: 'registerAgent',
    ),
  ];

  await verifierClient.queryHolderFeatures(
    holderDid: (await holderDidManager.getDidDocument()).id,
    featureQueries: featureQueries,
    accessToken: verifierAuthTokens.accessToken,
  );

  await verifierClient.listenForIncomingMessages(
    onDiscloseMessage: (message) async {
      prettyPrint(
        'Verifier received Disclose Message',
        object: message,
      );

      if (message.from == null) {
        throw ArgumentError.notNull('from');
      }

      if (message.body == null) {
        throw ArgumentError.notNull('body');
      }

      final holderDid = message.from!;
      final body = DiscloseBody.fromJson(message.body!);

      final expectedFeatures = [
        ...FeatureDiscoveryHelper.defaultFeatureDisclosuresOfHolder,
        Disclosure(
          featureType: FeatureType.operation.value,
          id: 'registerAgent',
        ),
      ];

      final unsupportedFeatureDisclosures =
          FeatureDiscoveryHelper.getUnsupportedFeatures(
        expectedFeatureDisclosures: expectedFeatures,
        actualFeatureDisclosures: body.disclosures,
      );

      if (unsupportedFeatureDisclosures.isNotEmpty) {
        throw UnsupportedError(
          'Unsupported features: ${jsonEncode(unsupportedFeatureDisclosures)}',
        );
      }

      await verifierClient.queryHolderData(
        holderDid: holderDid,
        query: dsql,
        operation: 'registerAgent',
        proofContext: VdspQueryDataProofContext(
          challenge: const Uuid().v4(),
          domain: 'verifier.example',
        ),
        accessToken: verifierAuthTokens.accessToken,
      );
    },
    onDataResponse: (message) async {
      prettyPrint(
        'Verifier received Data Response Message',
        object: message,
      );

      await verifierClient.mediatorClient.disconnect();
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
    featureDisclosures: [
      ...FeatureDiscoveryHelper.defaultFeatureDisclosuresOfHolder,
      Disclosure(
        featureType: FeatureType.operation.value,
        id: 'registerAgent',
      ),
    ],
  );

  final holderAuthTokens = await holderClient.authenticate();

  await holderClient.listenForIncomingMessages(
    onFeatureQuery: (message) async {
      prettyPrint(
        'Holder received Feature Query Message',
        object: message,
      );

      // is trusted verifier
      // if (message.from == verifierDid) {
      await holderClient.disclose(
        queryMessage: message,
        accessToken: holderAuthTokens.accessToken,
      );
      // }
    },
    onDataRequest: (message) async {
      prettyPrint(
        'Holder received Data Request Message',
        object: message,
      );

      final vcs = <Map<String, dynamic>>[];
      final vp = {'vc': vcs, 'proof': 'xyz'};

      // is trusted verifier
      // if (message.from == verifierDid) {
      await holderClient.shareData(
        requestMessage: message,
        dataResponse: vp,
        accessToken: holderAuthTokens.accessToken,
      );
      // }

      await holderClient.mediatorClient.disconnect();
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
