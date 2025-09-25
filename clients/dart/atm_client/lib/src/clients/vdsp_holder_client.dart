import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../atm_client.dart';
import '../common/feature_discovery_helper.dart';
import '../extensions/did_manager_extention.dart';
import '../messages/vdsp/vdsp_data_response_message.dart';
import '../messages/vdsp/vdsp_query_data_message.dart';
import '../models/constants/data_query_language.dart';
import 'atm_base_client.dart';

class VdspHolderClient extends AtmBaseClient {
  final List<Disclosure> featureDisclosures;

  VdspHolderClient({
    required super.didManager,
    required super.mediatorClient,
    required this.featureDisclosures,
    super.clientOptions = const ClientOptions(),
  });

  static Future<VdspHolderClient> init({
    required DidManager didManager,
    required List<Disclosure> featureDisclosures,
    ClientOptions clientOptions = const ClientOptions(),
  }) async {
    final [mediatorDidDocument] = await Future.wait(
      [
        clientOptions.mediatorDid,
      ].map(UniversalDIDResolver.defaultResolver.resolveDid),
    );

    return VdspHolderClient(
      didManager: didManager,
      featureDisclosures: featureDisclosures,
      clientOptions: clientOptions,
      mediatorClient: await didManager.getMediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        recipientDidDocuments: [],
      ),
    );
  }

  Future<DiscloseMessage> disclose({
    required QueryMessage queryMessage,
    required String accessToken,
  }) async {
    final verifierDid = queryMessage.from;

    if (verifierDid == null) {
      throw StateError('Query message is missing verifier.');
    }

    final rawBody = queryMessage.body;

    if (rawBody == null) {
      throw StateError('Query message body is missing.');
    }

    final queryBody = QueryBody.fromJson(
      Map<String, dynamic>.from(rawBody),
    );

    final message = DiscloseMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [verifierDid],
      threadId: queryMessage.threadId ?? queryMessage.id,
      body: DiscloseBody(
        disclosures: FeatureDiscoveryHelper.getSupportedFeatures(
          featureDisclosures,
          queryBody.queries,
        ),
      ),
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
    required Map<String, dynamic> dataResponse,
    DataQueryLanguage dataQueryLanguage = DataQueryLanguage.dcql,
    String responseFormat = 'application/json',
    String? operation,
    String? comment,
    String? threadId,
    required String accessToken,
  }) async {
    // TODO: replace with the right message type
    final message = VdspDataResponseMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [verifierDid],
      body: VdspDataResponseBody(
        operation: operation,
        dataQueryLanguage: dataQueryLanguage,
        responseFormat: responseFormat,
        dataResponse: dataResponse,
        comment: comment,
      ).toJson(),
      threadId: threadId,
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
    void Function(QueryMessage)? onFeatureQuery,
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
            MessageWrappingType.authcryptPlaintext,
            MessageWrappingType.authcryptSignPlaintext,
            MessageWrappingType.anoncryptAuthcryptPlaintext,
          ],
        );

        final plainTextJson = unpacked.toJson();

        if (onFeatureQuery != null &&
            unpacked.type == QueryMessage.messageType) {
          onFeatureQuery(
            QueryMessage.fromJson(plainTextJson),
          );

          return;
        }

        // TODO: replace with DataResponse message
        if (unpacked.type == VdspQueryDataMessage.messageType) {
          onDataRequest(
            VdspQueryDataMessage(
              id: unpacked.id,
              from: unpacked.from,
              to: unpacked.to,
              createdTime: unpacked.createdTime,
              expiresTime: unpacked.expiresTime,
              body: unpacked.body,
              threadId: unpacked.threadId,
            ),
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
