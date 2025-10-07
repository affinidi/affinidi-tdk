import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../didcomm_client.dart';
import '../common/feature_discovery_helper.dart';
import '../extensions/did_manager_extention.dart';
import '../messages/vdsp/vdsp_data_processing_result_message.dart';
import '../messages/vdsp/vdsp_data_response_message.dart';
import '../messages/vdsp/vdsp_query_data_message.dart';
import '../models/constants/data_query_language.dart';
import 'didcomm_base_client.dart';

class VdspHolderClient extends DidcommBaseClient {
  final List<Disclosure> featureDisclosures;
  final DidSigner signer;

  VdspHolderClient({
    required super.didManager,
    required this.signer,
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

    final didDocument = await didManager.getDidDocument();

    return VdspHolderClient(
      didManager: didManager,
      featureDisclosures: featureDisclosures,
      clientOptions: clientOptions,
      signer: await didManager.getSigner(didDocument.assertionMethod.first.id),
      mediatorClient: await didManager.getMediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        recipientDidDocuments: [],
      ),
    );
  }

  Future<DiscloseMessage> disclose({
    required QueryMessage queryMessage,
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
      message: message,
    );

    return message;
  }

  Future<List<ParsedVerifiableCredential>> filterVerifiableCredentials({
    required VdspQueryDataMessage requestMessage,
    DataQueryLanguage dataQueryLanguage = DataQueryLanguage.dcql,
    required List<ParsedVerifiableCredential> verifiableCredentials,
  }) async {
    if (requestMessage.body == null) {
      throw ArgumentError.notNull('requestMessage.body');
    }

    final requestBody = VdspQueryDataBody.fromJson(requestMessage.body!);
    final query = requestBody.query;

    // TODO: implement filtering based on query and dataQueryLanguage
    return verifiableCredentials;
  }

  Future<VdspDataResponseMessage> shareData({
    required VdspQueryDataMessage requestMessage,
    DataQueryLanguage dataQueryLanguage = DataQueryLanguage.dcql,
    required List<ParsedVerifiableCredential> verifiableCredentials,
    required DidSigner verifiablePresentationSigner,
    String? operation,
    String? comment,
  }) async {
    if (requestMessage.from == null) {
      throw ArgumentError.notNull('requestMessage.from');
    }

    if (requestMessage.body == null) {
      throw ArgumentError.notNull('requestMessage.body');
    }

    final verifierDid = requestMessage.from!;

    final requestBody = VdspQueryDataBody.fromJson(requestMessage.body!);
    final proofContext = requestBody.proofContext;

    final unsignedVerifiablePresentation = MutableVpDataModelV1(
      context: [dmV1ContextUrl],
      id: Uri.parse(const Uuid().v4()),
      type: {'VerifiablePresentation'},
      holder: MutableHolder.uri(signer.did),
      verifiableCredential: verifiableCredentials,
    );

    // TODO: select proof generator based on key pair type
    final proofGenerator = DataIntegrityEcdsaJcsGenerator(
      signer: verifiablePresentationSigner,
      challenge: proofContext?.challenge,
      domain: proofContext != null ? [proofContext.domain] : null,
    );

    final suite = LdVpDm1Suite();

    final verifiablePresentation = await suite.issue(
      unsignedData: VpDataModelV1.fromMutable(
        unsignedVerifiablePresentation,
      ),
      proofGenerator: proofGenerator,
    );

    final responseMessage = VdspDataResponseMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [verifierDid],
      body: VdspDataResponseBody(
        operation: operation,
        dataQueryLanguage: dataQueryLanguage,
        responseFormat: requestBody.responseFormat,
        dataResponse: verifiablePresentation.toJson(),
        comment: comment,
      ).toJson(),
      threadId: requestMessage.threadId,
    );

    await mediatorClient.packAndSendMessage(
      message: responseMessage,
    );

    return responseMessage;
  }

  StreamSubscription listenForIncomingMessages({
    void Function(QueryMessage)? onFeatureQuery,
    required void Function(VdspQueryDataMessage) onDataRequest,
    void Function(VdspDataProcessingResultMessage)? onDataProcessingResult,
    void Function(ProblemReportMessage)? onProblemReport,
    Function? onError,
    void Function({int? closeCode, String? closeReason})? onDone,
    bool? cancelOnError,
  }) {
    return mediatorClient.listenForIncomingMessages(
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

        if (onDataProcessingResult != null &&
            unpacked.type == VdspDataProcessingResultMessage.messageType) {
          onDataProcessingResult(
            VdspDataProcessingResultMessage(
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
    );
  }
}
