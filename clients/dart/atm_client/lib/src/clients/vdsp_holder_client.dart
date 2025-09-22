import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../atm_client.dart';
import '../extensions/did_manager_extention.dart';
import '../messages/vdsp/vdsp_data_response_message.dart';
import '../messages/vdsp/vdsp_query_data_message.dart';
import 'atm_base_client.dart';

class VdspHolderClient extends AtmBaseClient {
  VdspHolderClient({
    required super.didManager,
    required super.mediatorClient,
    super.clientOptions = const ClientOptions(),
  });

  static Future<VdspHolderClient> init({
    required DidManager didManager,
    ClientOptions clientOptions = const ClientOptions(),
  }) async {
    final [mediatorDidDocument] = await Future.wait(
      [
        clientOptions.mediatorDid,
      ].map(UniversalDIDResolver.defaultResolver.resolveDid),
    );

    return VdspHolderClient(
      didManager: didManager,
      clientOptions: clientOptions,
      mediatorClient: await didManager.getMediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        recipientDidDocuments: [],
      ),
    );
  }

  Future<DiscloseMessage> discloseFeatures({
    required String verifierDid,
    required String accessToken,
  }) async {
    // TODO: replace with the right message type
    final message = DiscloseMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [verifierDid],
      body: DiscloseBody(disclosures: []),
    );

    await mediatorClient.packAndSendMessage(
      didManager: didManager,
      clientOptions: clientOptions,
      message: message,
      accessToken: accessToken,
    );

    return message;
  }

  Future<VdspDataResponseMessage> shareData({
    required String verifierDid,
    required Object verifiablePresentation,
    required String accessToken,
  }) async {
    // TODO: replace with the right message type
    final message = VdspDataResponseMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [verifierDid],
    );

    await mediatorClient.packAndSendMessage(
      didManager: didManager,
      clientOptions: clientOptions,
      message: message,
      accessToken: accessToken,
    );

    return message;
  }

  Future<StreamSubscription> listenForIncomingMessages({
    void Function(QueryMessage)? onQueryFeatures,
    required void Function(VdspQueryDataMessage) onDataRequest,
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
          expectedMessageWrappingTypes: [
            MessageWrappingType.authcryptSignPlaintext,
          ],
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
        if (unpacked.type == VdspQueryDataMessage.messageType) {
          onDataRequest(
            VdspQueryDataMessage.fromJson(plainTextJson),
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
