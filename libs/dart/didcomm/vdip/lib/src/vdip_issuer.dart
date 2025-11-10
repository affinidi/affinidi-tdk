import 'dart:async';

import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart';

import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../affinidi_tdk_vdip.dart';
import '../messages/switch_context/vdip_switch_context_message.dart';

/// Implements the VDIP protocol for an issuer, handling feature disclosure queries and credential issuance requests.
class VdipIssuer {
  /// Underlying mediator DIDComm client used to send and receive messages.
  final DidcommMediatorClient mediatorClient;

  /// DID manager for DIDComm operations.
  final DidManager didManager;

  /// Static list of supported feature disclosures supported by this issuer.
  final List<Disclosure> featureDisclosures;

  /// Creates a new [VdipIssuer] with the provided dependencies.
  VdipIssuer({
    required this.didManager,
    required this.mediatorClient,
    required this.featureDisclosures,
  });

  /// Convenience initializer that creates the underlying [DidcommMediatorClient]
  /// prior to constructing the issuer client instance.
  static Future<VdipIssuer> init({
    required DidDocument mediatorDidDocument,
    required DidManager didManager,
    required List<Disclosure> featureDisclosures,
    AuthorizationProvider? authorizationProvider,
    ClientOptions clientOptions = const ClientOptions(),
  }) async =>
      VdipIssuer(
        didManager: didManager,
        featureDisclosures: featureDisclosures,
        mediatorClient: await DidcommMediatorClient.init(
          didManager: didManager,
          mediatorDidDocument: mediatorDidDocument,
          authorizationProvider: authorizationProvider,
          clientOptions: clientOptions,
        ),
      );

  /// Responds to a feature [queryMessage] by computing and sending a
  /// corresponding `disclose` message. Returns the sent message.
  Future<DiscloseMessage> disclose({required QueryMessage queryMessage}) async {
    final holderDid = queryMessage.from;

    if (holderDid == null) {
      throw StateError('Query message is missing holder.');
    }

    final rawBody = queryMessage.body;

    if (rawBody == null) {
      throw StateError('Query message body is missing.');
    }

    final queryBody = QueryBody.fromJson(Map<String, dynamic>.from(rawBody));

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
        throw ArgumentError('Unsupported credential format');
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
          onFeatureQuery(QueryMessage.fromJson(plainTextJson));

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

            final vcIssuerDidDocument = await didManager.getDidDocument();

            final isAssertionValid = await _isAssertionValid(
              jwsAssertion: assertion,
              holderDid: holderDid,
              proposalId: requestIssuanceMessageBody.proposalId,
              vcIssuerDid: vcIssuerDidDocument.id,
            );

            onRequestToIssueCredential(
              holderDidFromAssertion: holderDid,
              isAssertionValid: isAssertionValid,
              message: plainTextMessage,
            );
            return;
          }

          onRequestToIssueCredential(message: plainTextMessage);

          return;
        }

        if (onProblemReport != null &&
            unpacked.type == ProblemReportMessage.messageType) {
          onProblemReport(ProblemReportMessage.fromJson(plainTextJson));

          return;
        }
      },
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }

  /// Validates that the signed JWS [jwsAssertion] subject matches [holderDid].
  Future<bool> _isAssertionValid({
    required String jwsAssertion,
    required String holderDid,
    required String proposalId,
    required String vcIssuerDid,
  }) async {
    final resolvedHolderDidDocument =
        await UniversalDIDResolver.defaultResolver.resolveDid(holderDid);
    final decodedJwsAssertion = JwtHelper.decodeAndVerify(
      serializedJwt: jwsAssertion,
      holderDidDocument: resolvedHolderDidDocument,
    );

    final payload = decodedJwsAssertion.payload;

    final assertionSubject = payload['sub'];
    final assertionProposalId = payload['proposalId'];
    final assertionAudienceId = payload['aud'];

    return assertionSubject == holderDid &&
        assertionProposalId == proposalId &&
        assertionAudienceId == vcIssuerDid;
  }

  /// Sends a switch context message to the given [holderDid].
  Future<VdipSwitchContextMessage> sendSwitchContext({
    required String holderDid,
    required Uri baseIssuerUrl,
    required String nonce,
    required String threadId,
  }) async {
    if (!baseIssuerUrl.hasScheme ||
        (baseIssuerUrl.scheme != 'http' && baseIssuerUrl.scheme != 'https')) {
      throw ArgumentError.value(
        baseIssuerUrl,
        'baseIssuerUrl',
        'Must have http or https scheme',
      );
    }

    final message = VdipSwitchContextMessage(
      id: const Uuid().v4(),
      to: [holderDid],
      threadId: threadId,
      body: VdipSwitchContextBody(
        baseIssuerUrl: baseIssuerUrl.toString(),
        nonce: nonce,
      ).toJson(),
    );

    await mediatorClient.packAndSendMessage(message);

    return message;
  }
}
