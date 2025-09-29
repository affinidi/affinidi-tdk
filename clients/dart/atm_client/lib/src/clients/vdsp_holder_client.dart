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
  VdspFeatureSelection? _featureSelectionCache;

  VdspHolderClient({
    required super.didManager,
    required super.mediatorClient,
    required this.featureDisclosures,
    super.clientOptions = const ClientOptions(),
  });

  VdspFeatureSelection? get selectedFeatures => _featureSelectionCache;

  VdspFeatureSelection negotiateDisclose(DiscloseMessage discloseMessage) {
    final result = FeatureDiscoveryHelper.negotiateFeatures(
      discloseMessage: discloseMessage,
      holderSupportedDisclosures: featureDisclosures,
    );
    _featureSelectionCache = result;
    return result;
  }

  void _handleDiscloseByDefault(
    VdspFeatureSelection selected,
  ) {
    if (selected.protocol == null) {
      throw UnsupportedError(
        'No mutually supported protocol found in default handler',
      );
    }

    if (selected.dataQueryLanguage == null) {
      throw UnsupportedError(
        'No mutually supported data query language found in default handler',
      );
    }
  }

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
    required VdspQueryDataMessage requestMessage,
    required Map<String, dynamic> dataResponse,
    DataQueryLanguage dataQueryLanguage = DataQueryLanguage.dcql,
    String? operation,
    String? comment,
    required String accessToken,
  }) async {
    if (requestMessage.from == null) {
      throw ArgumentError.notNull('message.from');
    }

    if (requestMessage.body == null) {
      throw ArgumentError.notNull('message.body');
    }

    final verifierDid = requestMessage.from!;
    final requestBody = VdspQueryDataBody.fromJson(requestMessage.body!);

    final responseMessage = VdspDataResponseMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [verifierDid],
      body: VdspDataResponseBody(
        operation: operation,
        dataQueryLanguage: dataQueryLanguage,
        responseFormat: requestBody.responseFormat,
        dataResponse: dataResponse,
        comment: comment,
      ).toJson(),
      threadId: requestMessage.threadId,
    );

    await mediatorClient.packAndSendMessage(
      didManager: didManager,
      clientOptions: clientOptions,
      message: responseMessage,
      accessToken: accessToken,
    );

    return responseMessage;
  }

  Future<StreamSubscription> listenForIncomingMessages({
    void Function(QueryMessage)? onFeatureQuery,
    void Function(DiscloseMessage)? onDiscloseMessage,
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

        if (unpacked.type == DiscloseMessage.messageType) {
          final discloseMessage = DiscloseMessage.fromJson(plainTextJson);
          final selection = negotiateDisclose(discloseMessage);

          if (onDiscloseMessage != null) {
            onDiscloseMessage(discloseMessage);
          } else {
            _handleDiscloseByDefault(selection);
          }

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
