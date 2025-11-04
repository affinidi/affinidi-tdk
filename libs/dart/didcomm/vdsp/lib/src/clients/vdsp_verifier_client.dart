import 'dart:async';
import 'dart:convert';

import 'package:affinidi_tdk_mediator_didcomm_client/affinidi_tdk_mediator_didcomm_client.dart';
import 'package:dcql/dcql.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../affinidi_tdk_vdsp.dart';

/// Implements the VDSP protocol for a verifier, supporting feature discovery,
/// data queries, and verification of presentations and credentials.
class VdspVerifierClient {
  /// The mediator client used for DIDComm communication.
  final MediatorDidcommClient mediatorClient;

  /// The DID manager for handling DIDs and keys.
  final DidManager didManager;

  /// Constructs a [VdspVerifierClient] for the VDSP protocol with the given [didManager] and [mediatorClient].
  VdspVerifierClient({
    required this.didManager,
    required this.mediatorClient,
  });

  /// Initializes a [VdspVerifierClient] for the VDSP protocol asynchronously with the provided mediator DID document and DID manager.
  static Future<VdspVerifierClient> init({
    required DidManager didManager,
    required DidDocument mediatorDidDocument,
    AuthorizationProvider? authorizationProvider,
    ClientOptions clientOptions = const ClientOptions(),
  }) async =>
      VdspVerifierClient(
        didManager: didManager,
        mediatorClient: await MediatorDidcommClient.init(
          didManager: didManager,
          mediatorDidDocument: mediatorDidDocument,
          authorizationProvider: authorizationProvider,
          clientOptions: clientOptions,
        ),
      );

  /// Sends a feature query to a holder to discover supported features.
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

    await mediatorClient.packAndSendMessage(message);
    return message;
  }

  /// Sends a data query to a holder to request a verifiable presentation.
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

    await mediatorClient.packAndSendMessage(message);
    return message;
  }

  /// Sends a data processing result message to a holder after processing received data.
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

    await mediatorClient.packAndSendMessage(message);
    return message;
  }

  /// Listens for incoming DIDComm messages and dispatches them to the appropriate handlers as defined by the VDSP protocol.
  ///
  /// [onDiscloseMessage] is called for VDSP disclose messages. Optional.
  /// [onDataResponse] is called for VDSP data response messages and provides verification results.
  /// [onProblemReport] is called for VDSP problem report messages. Optional.
  /// [onError], [onDone], and [cancelOnError] control the stream behavior. Optional.
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
        try {
          final unpacked = await DidcommMessage.unpackToPlainTextMessage(
            message: message,
            recipientDidManager: didManager,
            expectedMessageWrappingTypes: [
              MessageWrappingType.authcryptPlaintext,
              MessageWrappingType.anoncryptSignPlaintext,
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

            final universalPresentationVerifier =
                UniversalPresentationVerifier();
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
                  presentationVerificationResult:
                      presentationVerificationResult,
                  credentialVerificationResults: credentialVerificationResults,
                );
              } else {
                onDataResponse(
                  message: responseMessage,
                  presentationAndCredentialsAreValid: false,
                  presentationVerificationResult:
                      presentationVerificationResult,
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
        } catch (e) {
          if (onError != null) {
            (onError as void Function(Object))(e);
          }
        }
      },
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }
}
