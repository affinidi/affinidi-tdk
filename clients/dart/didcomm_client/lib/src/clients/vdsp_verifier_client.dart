import 'dart:async';
import 'dart:convert';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../didcomm_client.dart';
import '../extensions/did_manager_extention.dart';
import '../messages/vdsp/vdsp_data_processing_result_message.dart';
import '../messages/vdsp/vdsp_data_response_message.dart';
import '../messages/vdsp/vdsp_query_data_message.dart';
import '../models/constants/data_query_language.dart';
import 'didcomm_base_client.dart';

class VdspVerifierClient extends DidcommBaseClient {
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
    required List<Query> featureQueries,
  }) async {
    final message = QueryMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [holderDid],
      body: QueryBody(
        queries: featureQueries,
      ),
    );

    await mediatorClient.packAndSendMessage(
      message: message,
    );

    return message;
  }

  Future<VdspQueryDataMessage> queryHolderData({
    required String holderDid,
    String? operation,
    required Map<String, dynamic> query,
    DataQueryLanguage dataQueryLanguage = DataQueryLanguage.dcql,
    String responseFormat = 'application/json',
    VdspQueryDataProofContext? proofContext,
    String? comment,
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
      message: message,
    );

    return message;
  }

  Future<VdspDataProcessingResultMessage> sendDataProcessingResult({
    required String holderDid,
    String? operation,
    required Map<String, dynamic> result,
  }) async {
    final message = VdspDataProcessingResultMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [holderDid],
      body: VdspDataProcessingResultBody(
        operation: operation,
        result: result,
      ).toJson(),
    );

    await mediatorClient.packAndSendMessage(
      message: message,
    );

    return message;
  }

  StreamSubscription listenForIncomingMessages({
    void Function(DiscloseMessage)? onDiscloseMessage,
    required void Function(
      VdspDataResponseMessage,
      bool,
      VerifiablePresentation? verifiablePresentation,
    ) onDataResponse,
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

        if (onDiscloseMessage != null &&
            unpacked.type == DiscloseMessage.messageType) {
          onDiscloseMessage(
            DiscloseMessage.fromJson(plainTextJson),
          );

          return;
        }

        if (unpacked.type == VdspDataResponseMessage.messageType) {
          final responseMessage = VdspDataResponseMessage(
            id: unpacked.id,
            from: unpacked.from,
            to: unpacked.to,
            createdTime: unpacked.createdTime,
            expiresTime: unpacked.expiresTime,
            threadId: unpacked.threadId,
            body: unpacked.body,
          );

          if (responseMessage.body == null) {
            throw ArgumentError.notNull('responseMessage.body');
          }

          final body = VdspDataResponseBody.fromJson(responseMessage.body!);

          final verifiablePresentation = UniversalPresentationParser.parse(
            jsonEncode(body.dataResponse),
          );

          final universalPresentationVerifier = UniversalPresentationVerifier();
          final universalCredentialVerifier = UniversalVerifier();

          final presentationVerificationResult =
              await universalPresentationVerifier.verify(
            verifiablePresentation,
          );

          if (presentationVerificationResult.isValid) {
            final credentialsVerificationResult = await Future.wait(
              verifiablePresentation.verifiableCredential.map(
                universalCredentialVerifier.verify,
              ),
            );

            final credentialsValid = credentialsVerificationResult.every(
              (result) => result.isValid,
            );

            if (credentialsValid) {
              onDataResponse(
                responseMessage,
                true,
                verifiablePresentation,
              );
            } else {
              onDataResponse(
                responseMessage,
                false,
                null,
              );
            }

            return;
          }

          onDataResponse(
            responseMessage,
            false,
            null,
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
