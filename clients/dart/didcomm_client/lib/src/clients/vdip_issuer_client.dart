import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';

import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../didcomm_client.dart';
import '../common/feature_discovery_helper.dart';
import '../common/jwt_helper.dart';
import 'didcomm_mediator_client.dart';

class VdipIssuerClient {
  final DidcommMediatorClient mediatorClient;
  final DidManager didManager;
  final List<Disclosure> featureDisclosures;

  VdipIssuerClient({
    required this.didManager,
    required this.mediatorClient,
    required this.featureDisclosures,
  });

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
        mediatorClient: await DidcommMediatorClient.init(
          didManager: didManager,
          mediatorDidDocument: mediatorDidDocument,
          authorizationProvider: authorizationProvider,
          clientOptions: clientOptions,
        ),
      );

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

  Future<PlainTextMessage> sendIssuedCredentials({
    required String holderDid,
    required VerifiableCredential verifiableCredential,
    String comment = '',
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
          final isRequestForSpecificHolder =
              plainTextMessage.body!['holder_did'] != null;

          if (isRequestForSpecificHolder) {
            final assertion = plainTextMessage.body!['assertion'] as String;
            final holderDid = plainTextMessage.body!['holder_did'] as String;

            final isAssertionValid =
                await _isAssertionValid(assertion, holderDid);

            onRequestToIssueCredential(
              holderDidFromAssertion: holderDid,
              isAssertionValid: isAssertionValid,
              message: plainTextMessage,
            );
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

  Future<bool> _isAssertionValid(
    String jwsAssertion,
    String holderDid,
  ) async {
    final decodedJwsAssertion =
        await JwtHelper.decodeAndVerify(jwsAssertion, holderDid);

    final assertionSubject = decodedJwsAssertion.payload['sub'];

    return assertionSubject == holderDid;
  }
}
