import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../atm_client.dart';
import '../common/atm_mediator_client.dart';

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

  Future<void> queryHolderFeatures({
    required String holderDid,
    required String accessToken,
  }) async {
    final holderDidDocument =
        await UniversalDIDResolver.defaultResolver.resolveDid(holderDid);

    final queryMessage = PlainTextMessage(
      id: const Uuid().v4(),
      type: Uri.parse('https://didcomm.org/discover-features/2.0/queries'),
      from: mediatorClient.signer.did,
      to: [holderDidDocument.id],
      body: {
        'queries': [
          {
            'feature-type': 'protocol',
            'match': 'https://affinidi.com/didcomm/protocols/vdsp/1.*',
          },
          {
            'feature-type': 'operation',
            'match': '*',
          },
          {
            'feature-type': 'data_query_lang',
            'match': '*',
          },
          {
            'feature-type': 'vc_type',
            'match': '*',
          },
          {
            'feature-type': 'data_integrity_proof_suite',
            'match': '*',
          },
          {
            'feature-type': 'json_web_signature_algorithm',
            'match': '*',
          },
        ],
      },
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

    final createdTime = DateTime.now().toUtc();
    final expiresTime = createdTime.add(clientOptions.messageExpiration);

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
