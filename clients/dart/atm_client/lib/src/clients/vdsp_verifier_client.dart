import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../atm_client.dart';
import '../common/atm_mediator_client.dart';
import '../common/vdsp_ssi_alignment.dart';

class VdspVerifierClient {
  final ClientOptions clientOptions;
  final AtmMediatorClient mediatorClient;
  final DidManager didManager;

  VdspVerifierClient({
    required this.clientOptions,
    required this.mediatorClient,
    required this.didManager,
  });

  static Future<VdspVerifierClient> init({
    required DidPeerManager didManager,
  }) {
    throw UnimplementedError();
  }

  Future<QueryMessage> queryHolderFeatures({
    required String holderDid,
    required String accessToken,
    String? operation,
  }) async {
    final holderDidDocument =
        await UniversalDIDResolver.defaultResolver.resolveDid(holderDid);

    final queries = _buildDiscoverFeaturesQueries(operation: operation);

    final queryMessage = QueryMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [holderDidDocument.id],
      body: QueryBody(queries: queries),
    );

    final packagedMessageForHolder =
        await DidcommMessage.packIntoSignedAndEncryptedMessages(
      queryMessage,
      recipientDidDocuments: [holderDidDocument],
      keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdh1Pu,
      encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
      keyPair: mediatorClient.keyPair,
      didKeyId: mediatorClient.didKeyId,
      signer: mediatorClient.signer,
    );

    final expiresTime =
        DateTime.now().toUtc().add(clientOptions.messageExpiration);

    final forwardMessage = ForwardMessage(
      id: const Uuid().v4(),
      to: [mediatorClient.mediatorDidDocument.id],
      next: holderDidDocument.id,
      expiresTime: expiresTime,
      attachments: [
        Attachment(
          mediaType: 'application/json',
          data: AttachmentData(
            base64: base64UrlEncodeNoPadding(
              packagedMessageForHolder.toJsonBytes(),
            ),
          ),
        ),
      ],
    );

    await mediatorClient.sendMessage(
      forwardMessage,
      accessToken: accessToken,
    );

    return queryMessage;
  }

  List<Query> _buildDiscoverFeaturesQueries({
    String? operation,
  }) {
    return <Query>[
      Query(
        featureType: 'protocol',
        match: 'https://affinidi.com/didcomm/protocols/vdsp/1.*',
      ),
      Query(
        featureType: 'data_query_lang',
        match: 'DCQL',
      ),
      for (final vcTypeId in supportedVcTypeIds)
        Query(
          featureType: 'vc_type',
          match: vcTypeId,
        ),
      for (final suite in supportedDataIntegritySuites)
        Query(
          featureType: 'data_integrity_proof_suite',
          match: suite,
        ),
      for (final alg in supportedJwsAlgs)
        Query(
          featureType: 'json_web_signature_algorithm',
          match: alg,
        ),
      if (operation != null)
        Query(
          featureType: 'operation',
          match: operation,
        ),
    ];
  }

  Future<StreamSubscription<PlainTextMessage>> listenForDiscloseFeatures({
    String? accessToken,
    String? refreshToken,
  }) async {
    throw UnimplementedError();
  }

  Future<void> queryHolderData({
    required String holderDid,
    required Object holderFeatures,
    required Map<String, dynamic> dsql,
    required String accessToken,
  }) async {
    throw UnimplementedError();
  }

  Future<StreamSubscription<PlainTextMessage>> listenForDataResponses({
    String? accessToken,
    String? refreshToken,
  }) async {
    throw UnimplementedError();
  }

  Future<AuthenticationTokens> authenticate({
    EncryptionAlgorithm encryptionAlgorithm = EncryptionAlgorithm.a256cbc,
  }) async {
    return await mediatorClient.authenticate(
      encryptionAlgorithm: encryptionAlgorithm,
    );
  }
}
