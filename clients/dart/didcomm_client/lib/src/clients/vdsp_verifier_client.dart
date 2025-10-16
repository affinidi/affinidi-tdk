import 'dart:async';
import 'dart:convert';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:dcql/dcql.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../didcomm_client.dart';
import '../messages/vdsp/vdsp_data_processing_result_message.dart';
import '../messages/vdsp/vdsp_data_response_message.dart';
import '../messages/vdsp/vdsp_query_data_message.dart';
import '../models/constants/data_query_language.dart';
import 'didcomm_mediator_client.dart';

class VdspVerifierClient {
  final DidcommMediatorClient mediatorClient;
  final DidManager didManager;

  VdspVerifierClient({
    required this.didManager,
    required this.mediatorClient,
  });

  static Future<VdspVerifierClient> init({
    required DidManager didManager,
    required DidDocument mediatorDidDocument,
    AuthorizationProvider? authorizationProvider,
    ClientOptions clientOptions = const ClientOptions(),
  }) async =>
      VdspVerifierClient(
        didManager: didManager,
        mediatorClient: await DidcommMediatorClient.init(
          didManager: didManager,
          mediatorDidDocument: mediatorDidDocument,
          authorizationProvider: authorizationProvider,
          clientOptions: clientOptions,
        ),
      );

  Future<QueryMessage> queryHolderFeatures({
    required String holderDid,
    required List<Query> featureQueries,
  }) async {
    final message = QueryMessage(
      id: const Uuid().v4(),
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
    DcqlCredentialQuery? dcqlQuery,
    DataQueryLanguage dataQueryLanguage = DataQueryLanguage.dcql,
    String responseFormat = 'application/json',
    VdspQueryDataProofContext? proofContext,
    String? comment,
  }) async {
    if (dataQueryLanguage == DataQueryLanguage.dcql && dcqlQuery == null) {
      throw ArgumentError(
        'dcqlQuery must be provided when dataQueryLanguage is DCQL',
      );
    }

    final message = VdspQueryDataMessage(
      id: const Uuid().v4(),
      to: [holderDid],
      body: VdspQueryDataBody(
        operation: operation,
        dataQueryLanguage: dataQueryLanguage,
        responseFormat: responseFormat,
        query: dcqlQuery!.toJson(),
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
    required void Function({
      required VdspDataResponseMessage message,
      required bool presentationAndCredentialsAreValid,
      VerifiablePresentation? verifiablePresentation,
      required VerificationResult presentationVerificationResult,
      required List<VerificationResult> credentialVerificationResults,
    }) onDataResponse,
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
            final credentialVerificationResults = await Future.wait(
              verifiablePresentation.verifiableCredential.map(
                universalCredentialVerifier.verify,
              ),
            );

            final credentialsValid = credentialVerificationResults.every(
              (result) => result.isValid,
            );

            if (credentialsValid) {
              onDataResponse(
                message: responseMessage,
                presentationAndCredentialsAreValid: true,
                verifiablePresentation: verifiablePresentation,
                presentationVerificationResult: presentationVerificationResult,
                credentialVerificationResults: credentialVerificationResults,
              );
            } else {
              onDataResponse(
                message: responseMessage,
                presentationAndCredentialsAreValid: false,
                presentationVerificationResult: presentationVerificationResult,
                credentialVerificationResults: credentialVerificationResults,
              );
            }
          } else {
            onDataResponse(
              message: responseMessage,
              presentationAndCredentialsAreValid: false,
              presentationVerificationResult: presentationVerificationResult,
              credentialVerificationResults: [],
            );
          }

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
