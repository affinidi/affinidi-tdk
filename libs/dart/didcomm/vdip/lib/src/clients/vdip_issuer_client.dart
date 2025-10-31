import 'dart:async';

import 'package:affinidi_tdk_mediator_didcomm_client/mediator_didcomm_client.dart';

import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../vdip.dart';

/// DIDComm issuer-side client for the VDIP protocol.
///
/// Handles feature disclosure responses and processing credential issuance
/// requests from holders (including holder-bound assertions).
class VdipIssuerClient {
  /// Underlying mediator DIDComm client used to send and receive messages.
  final MediatorDidcommClient mediatorClient;

  /// DID manager for DIDComm operations.
  final DidManager didManager;

  /// Static list of supported feature disclosures supported by this issuer.
  final List<Disclosure> featureDisclosures;

  /// Creates a new [VdipIssuerClient] with the provided dependencies.
  VdipIssuerClient({
    required this.didManager,
    required this.mediatorClient,
    required this.featureDisclosures,
  });

  /// Convenience initializer that creates the underlying [MediatorDidcommClient]
  /// prior to constructing the issuer client instance.
  static Future<VdipIssuerClient> init({
    required DidDocument mediatorDidDocument,
    required DidManager didManager,
    required List<Disclosure> featureDisclosures,
    AuthorizationProvider? authorizationProvider,
    ClientOptions clientOptions = const ClientOptions(),
  }) async =>
      VdipIssuerClient(
        didManager: didManager,
        featureDisclosures: featureDisclosures,
        mediatorClient: await MediatorDidcommClient.init(
          didManager: didManager,
          mediatorDidDocument: mediatorDidDocument,
          authorizationProvider: authorizationProvider,
          clientOptions: clientOptions,
        ),
      );

  /// Responds to a feature [queryMessage] by computing and sending a
  /// corresponding `disclose` message. Returns the sent message.
  Future<DiscloseMessage> disclose({
    required QueryMessage queryMessage,
  }) async {
    final holderDid = queryMessage.from;

    if (holderDid == null) {
      throw StateError('Query message is missing holder.');
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
      to: [holderDid],
      threadId: queryMessage.threadId ?? queryMessage.id,
      body: DiscloseBody(
        disclosures: FeatureDiscoveryHelper.getSupportedFeatures(
          featureDisclosures,
          queryBody.queries,
        ),
      ),
    );

    await mediatorClient.packAndSendMessage(message);
    return message;
  }

  /// Sends an issued credential to the given [holderDid].
  Future<VdipIssuedCredentialMessage> sendIssuedCredentials({
    required String holderDid,
    required VerifiableCredential verifiableCredential,
    String? comment,
  }) async {
    VdipIssuedCredentialBody issuedCredentialBody;

    switch (verifiableCredential) {
      case JwtVcDataModelV1():
        issuedCredentialBody = VdipIssuedCredentialBody.jwtVc(
          credential: verifiableCredential.jws,
          comment: comment,
        );
        break;

      case SdJwtDataModelV2():
        issuedCredentialBody = VdipIssuedCredentialBody.sdJwtVc(
          credential: verifiableCredential.sdJwt,
          comment: comment,
        );
        break;

      case VcDataModelV1():
        issuedCredentialBody = VdipIssuedCredentialBody.w3cV1(
          credential: verifiableCredential,
          comment: comment,
        );
        break;

      case VcDataModelV2():
        issuedCredentialBody = VdipIssuedCredentialBody.w3cV2(
          credential: verifiableCredential,
          comment: comment,
        );
        break;

      default:
        throw ArgumentError(
          'Unsupported credential format',
        );
    }

    final message = VdipIssuedCredentialMessage(
      id: const Uuid().v4(),
      to: [holderDid],
      body: issuedCredentialBody.toJson(),
    );

    await mediatorClient.packAndSendMessage(message);
    return message;
  }

  /// Listens for incoming VDIP issuer-related messages.
  ///
  /// Invokes [onRequestToIssueCredential] when a credential issuance request
  /// arrives, optionally passing assertion validation details. Returns the
  /// active subscription.
  StreamSubscription listenForIncomingMessages({
    void Function(QueryMessage)? onFeatureQuery,
    required void Function({
      required PlainTextMessage message,
      bool? isAssertionValid,
      String? holderDidFromAssertion,
    }) onRequestToIssueCredential,
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
            MessageWrappingType.anoncryptSignPlaintext,
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

        // Add fields to callback, assertion validity
        if (unpacked.type == VdipRequestIssuanceMessage.messageType) {
          final plainTextMessage = PlainTextMessage.fromJson(plainTextJson);

          final requestIssuanceMessageBody =
              VdipRequestIssuanceMessageBody.fromJson(plainTextMessage.body!);

          final isRequestForSpecificHolder =
              requestIssuanceMessageBody.holderDid != null;

          if (isRequestForSpecificHolder) {
            final assertion = requestIssuanceMessageBody.assertion!;
            final holderDid = requestIssuanceMessageBody.holderDid!;

            final isAssertionValid =
                await _isAssertionValid(assertion, holderDid);

            onRequestToIssueCredential(
              holderDidFromAssertion: holderDid,
              isAssertionValid: isAssertionValid,
              message: plainTextMessage,
            );
            return;
          }

          onRequestToIssueCredential(
            message: plainTextMessage,
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

  /// Validates that the signed JWS [jwsAssertion] subject matches [holderDid].
  Future<bool> _isAssertionValid(
    String jwsAssertion,
    String holderDid,
  ) async {
    final resolvedHolderDidDocument =
        await UniversalDIDResolver.defaultResolver.resolveDid(holderDid);
    final decodedJwsAssertion = JwtHelper.decodeAndVerify(
      serializedJwt: jwsAssertion,
      holderDidDocument: resolvedHolderDidDocument,
    );

    final assertionSubject = decodedJwsAssertion.payload['sub'];

    return assertionSubject == holderDid;
  }
}
