import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../atm_client.dart';
import '../common/vdsp_ssi_alignment.dart';
import '../extensions/did_manager_extention.dart';
import '../messages/vdsp/vdsp_data_response_message.dart';
import '../messages/vdsp/vdsp_query_data_message.dart';
import 'atm_base_client.dart';

class VdspVerifierClient extends AtmBaseClient {
  VdspVerifierClient({
    required super.didManager,
    required super.mediatorClient,
    super.clientOptions = const ClientOptions(),
  });

  static Future<VdspVerifierClient> init({
    required DidManager didManager,
    ClientOptions clientOptions = const ClientOptions(),
  }) async {
    final [mediatorDidDocument] = await Future.wait(
      [
        clientOptions.mediatorDid,
      ].map(UniversalDIDResolver.defaultResolver.resolveDid),
    );

    return VdspVerifierClient(
      didManager: didManager,
      clientOptions: clientOptions,
      mediatorClient: await didManager.getMediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        recipientDidDocuments: [],
      ),
    );
  }

  Future<QueryMessage> queryHolderFeatures({
    required String holderDid,
    required String accessToken,
    String? operation,
  }) async {
    final queries = _buildDiscoverFeaturesQueries(operation: operation);

    final message = QueryMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [holderDid],
      body: QueryBody(queries: queries),
    );

    await mediatorClient.packAndSendMessage(
      didManager: didManager,
      clientOptions: clientOptions,
      message: message,
      accessToken: accessToken,
    );

    return message;
  }

  Future<VdspQueryDataMessage> queryHolderData({
    required String holderDid,
    required String operation,
    required Map<String, dynamic> query,
    required String dataQueryLanguage,
    String responseFormat = 'application/json',
    VdspQueryDataProofContext? proofContext,
    String? comment,
    required String accessToken,
  }) async {
    final message = VdspQueryDataMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [holderDid],
      body: VdspQueryDataBody(
        operation: operation,
        dataQueryLanguage: dataQueryLanguage,
        responseFormat: responseFormat,
        query: query,
        comment: comment,
        proofContext: proofContext,
      ).toJson(),
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
    void Function(DiscloseMessage)? onDiscloseMessage,
    required void Function(VdspDataResponseMessage) onDataResponse,
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

        if (onDiscloseMessage != null &&
            unpacked.type == DiscloseMessage.messageType) {
          onDiscloseMessage(
            DiscloseMessage.fromJson(plainTextJson),
          );

          return;
        }

        if (unpacked.type == VdspDataResponseMessage.messageType) {
          onDataResponse(
            VdspDataResponseMessage(
              id: unpacked.id,
              from: unpacked.from,
              to: unpacked.to,
              createdTime: unpacked.createdTime,
              expiresTime: unpacked.expiresTime,
              threadId: unpacked.threadId,
              body: unpacked.body,
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
}
