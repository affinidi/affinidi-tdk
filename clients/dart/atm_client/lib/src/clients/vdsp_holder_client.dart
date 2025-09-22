import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../../atm_client.dart';
import '../extensions/did_manager_extention.dart';
import 'atm_base_client.dart';

class VdspHolderClient extends AtmBaseClient {
  VdspHolderClient({
    required super.didManager,
    required super.mediatorClient,
    super.clientOptions = const ClientOptions(),
  });

  static Future<VdspHolderClient> init({
    required DidPeerManager didManager,
    String? verifierDid,
    ClientOptions clientOptions = const ClientOptions(),
  }) async {
    final [mediatorDidDocument, atlasDidDocument] = await Future.wait(
      [
        clientOptions.mediatorDid,
        if (verifierDid != null) verifierDid,
      ].map(UniversalDIDResolver.defaultResolver.resolveDid),
    );

    return VdspHolderClient(
      didManager: didManager,
      clientOptions: clientOptions,
      mediatorClient: await didManager.getMediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        recipientDidDocuments: [
          atlasDidDocument,
        ],
      ),
    );
  }

  Future<void> discloseFeatures({
    required String verifierDid,
    required String accessToken,
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

  Future<StreamSubscription> listenForIncomingMessages({
    void Function(QueryMessage)? onQueryFeatures,
    required void Function(PlainTextMessage) onDataRequest,
    void Function(ProblemReportMessage)? onProblemReport,
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
    String? accessToken,
    // TODO: refresh connection
    String? refreshToken,
  }) async {
    return await mediatorClient.listenForIncomingMessagesAndFetchMissing(
      (message) async {
        final unpacked = await DidcommMessage.unpackToPlainTextMessage(
          message: message,
          recipientDidManager: didManager,
        );

        final plainTextJson = unpacked.toJson();

        if (onQueryFeatures != null &&
            unpacked.type == QueryMessage.messageType) {
          onQueryFeatures(
            QueryMessage.fromJson(plainTextJson),
          );

          return;
        }

        // TODO: replace with DataResponse message
        if (unpacked.type == QueryMessage.messageType) {
          onDataRequest(
            QueryMessage.fromJson(plainTextJson),
          );

          return;
        }

        if (onProblemReport != null &&
            unpacked.type == ProblemReportMessage.messageType) {
          onProblemReport(
            ProblemReportMessage.fromJson(plainTextJson),
          );

          return;
        }
      },
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
      accessToken: accessToken,
    );
  }
}
