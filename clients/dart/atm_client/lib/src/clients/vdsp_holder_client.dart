import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../../atm_client.dart';
import '../common/atm_mediator_client.dart';

class VdspHolderClient {
  final ClientOptions clientOptions;
  final AtmMediatorClient mediatorClient;
  final DidManager didManager;

  VdspHolderClient({
    required this.clientOptions,
    required this.mediatorClient,
    required this.didManager,
  });

  static Future<VdspHolderClient> init({
    required DidPeerManager didManager,
  }) {
    throw UnimplementedError();
  }

  Future<void> discloseFeatures({
    required String verifierDid,
    required String accessToken,
  }) async {
    throw UnimplementedError();
  }

  Future<StreamSubscription<PlainTextMessage>> listenForQeuryFeatures({
    String? accessToken,
    String? refreshToken,
  }) async {
    throw UnimplementedError();
  }

  Future<void> shareData({
    required String verifierDid,
    required Object verifiablePresentation,
    required String accessToken,
  }) async {
    throw UnimplementedError();
  }

  Future<StreamSubscription<PlainTextMessage>> listenForDataRequests({
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
