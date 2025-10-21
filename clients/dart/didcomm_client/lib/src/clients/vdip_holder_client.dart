import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../didcomm_client.dart';
import '../common/did_signer_adapter.dart';
import '../common/feature_discovery_helper.dart';
import '../common/jwt_helper.dart';
import '../messages/vdip/vdip_request_issuance_body.dart';
import '../messages/vdip/vdip_request_issuance_message.dart';
import 'didcomm_mediator_client.dart';
import 'request_credentials_options.dart' show RequestCredentialsOptions;

class VdipHolderClient {
  final DidcommMediatorClient mediatorClient;
  final DidManager didManager;
  final List<Disclosure> featureDisclosures;

  VdipHolderClient({
    required this.didManager,
    required this.mediatorClient,
    required this.featureDisclosures,
  });

  static Future<VdipHolderClient> init({
    required DidDocument mediatorDidDocument,
    required DidManager didManager,
    required List<Disclosure> featureDisclosures,
    AuthorizationProvider? authorizationProvider,
    ClientOptions clientOptions = const ClientOptions(),
  }) async =>
      VdipHolderClient(
        didManager: didManager,
        featureDisclosures: featureDisclosures,
        mediatorClient: await DidcommMediatorClient.init(
          didManager: didManager,
          mediatorDidDocument: mediatorDidDocument,
          authorizationProvider: authorizationProvider,
          clientOptions: clientOptions,
        ),
      );

  Future<QueryMessage> queryIssuerFeatures({
    required String issuerDid,
    required List<Query> featureQueries,
  }) async {
    final message = QueryMessage(
      id: const Uuid().v4(),
      to: [issuerDid],
      body: QueryBody(
        queries: featureQueries,
      ),
    );

    await mediatorClient.packAndSendMessage(message);
    return message;
  }

  Future<DiscloseMessage> disclose({
    required QueryMessage queryMessage,
  }) async {
    final issuerDid = queryMessage.from;

    if (issuerDid == null) {
      throw StateError('Query message is missing issuer.');
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
      to: [issuerDid],
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

  Future<VdipRequestIssuanceMessage> requestCredentials({
    required String issuerDid,
    required String holderDid,
    required RequestCredentialsOptions options,
  }) async {
    final requestIssuanceMessage = VdipRequestIssuanceMessage(
      id: const Uuid().v4(),
      from: holderDid,
      to: [issuerDid],
      body: VdipRequestIssuanceMessageBody(
        proposalId: options.proposalId,
        challenge: options.challenge,
        credentialFormat: options.credentialFormat.toString(),
        jsonWebSignatureAlgorithm: options.jsonWebSignatureAlgorithm.toString(),
      ),
    );

    await mediatorClient.packAndSendMessage(
      message: requestIssuanceMessage,
    );

    return requestIssuanceMessage;
  }

  Future<VdipRequestIssuanceMessage> requestCredentialsForHolder({
    required String issuerDid,
    required String holderDid,
    required DidSigner didSigner,
    required RequestCredentialsOptions options,
  }) async {
    final issueTime =
        (DateTime.timestamp().millisecondsSinceEpoch / 1000).floor();
    final payload = {
      'proposalId': options.proposalId,
      'iss': holderDid,
      'sub': holderDid,
      'aud': issuerDid,
      'jti': const Uuid().v4(),
      'exp': issueTime + options.tokenExpiration.inSeconds,
      'iat': issueTime,
    };
    final signedAssertion =
        JwtHelper.createAndSignJwt(payload, DidSignerAdapter(didSigner));

    final requestIssuanceMessage = VdipRequestIssuanceMessage(
      id: const Uuid().v4(),
      from: holderDid,
      to: [issuerDid],
      body: VdipRequestIssuanceMessageBody(
        assertion: signedAssertion.toString(),
        proposalId: options.proposalId,
        holderDid: holderDid,
        challenge: options.challenge,
        credentialFormat: options.credentialFormat.toString(),
        jsonWebSignatureAlgorithm: options.jsonWebSignatureAlgorithm.toString(),
        comment: options.comment,
        credentialMeta: options.credentialMeta,
      ),
    );

    await mediatorClient.packAndSendMessage(
      message: requestIssuanceMessage,
    );

    return requestIssuanceMessage;
  }

  StreamSubscription listenForIncomingMessages({
    void Function(QueryMessage)? onFeatureQuery,
    void Function(DiscloseMessage)? onDiscloseMessage,
    required void Function(
      PlainTextMessage,
    ) onCredentialsIssuanceResponse,
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

        if (onDiscloseMessage != null &&
            unpacked.type == DiscloseMessage.messageType) {
          onDiscloseMessage(
            DiscloseMessage.fromJson(plainTextJson),
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
