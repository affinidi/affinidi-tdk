import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/src/did/did_manager/did_peer_manager.dart';
import 'package:ssi/ssi.dart';

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
    throw UnimplementedError();
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
