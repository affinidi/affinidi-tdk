import 'dart:async';

import 'package:affinidi_tdk_mediator_didcomm_client/mediator_didcomm_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../vdip.dart';

/// DIDComm holder-side client for the VDIP protocol.
///
/// Provides convenience helpers for discovering issuer features and
/// requesting credential issuance.
class VdipHolderClient {
  /// Underlying mediator DIDComm client used for packing / sending messages.
  final MediatorDidcommClient mediatorClient;

  /// DID manager used for DIDComm operations.
  final DidManager didManager;

  /// Creates a new [VdipHolderClient] with the provided DID manager and
  /// mediator client instance.
  VdipHolderClient({
    required this.didManager,
    required this.mediatorClient,
  });

  /// Convenience initializer that creates the underlying [MediatorDidcommClient]
  /// before constructing the holder client.
  static Future<VdipHolderClient> init({
    required DidDocument mediatorDidDocument,
    required DidManager didManager,
    AuthorizationProvider? authorizationProvider,
    ClientOptions clientOptions = const ClientOptions(),
  }) async =>
      VdipHolderClient(
        didManager: didManager,
        mediatorClient: await MediatorDidcommClient.init(
          didManager: didManager,
          mediatorDidDocument: mediatorDidDocument,
          authorizationProvider: authorizationProvider,
          clientOptions: clientOptions,
        ),
      );

  /// Sends a DIDComm `feature query` message to an issuer asking for supported
  /// feature disclosures matching [featureQueries]. Returns the sent message.
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

  /// Requests credential issuance from [issuerDid] using the provided
  /// request [options]. The issuer will use `message.from` as holder DID.
  /// Returns the sent DIDComm message.
  Future<VdipRequestIssuanceMessage> requestCredential({
    required String issuerDid,
    required RequestCredentialsOptions options,
  }) async {
    final requestIssuanceMessage = VdipRequestIssuanceMessage(
      id: const Uuid().v4(),
      to: [issuerDid],
      body: VdipRequestIssuanceMessageBody(
        proposalId: options.proposalId,
        challenge: options.challenge,
        credentialFormat: options.credentialFormat.toString(),
        jsonWebSignatureAlgorithm: options.jsonWebSignatureAlgorithm.toString(),
        credentialMeta: options.credentialMeta,
        comment: options.comment,
      ),
    );
    await mediatorClient.packAndSendMessage(
      requestIssuanceMessage,
    );

    return requestIssuanceMessage;
  }

  /// Requests credential issuance for the specific [holderDid].
  /// Ownership of the DID is proven by signing an assertion JWT with
  /// [assertionSigner]. The [options] configure the issuance request.
  /// Throws [ArgumentError] if [holderDid] does not match the signer DID.
  Future<VdipRequestIssuanceMessage> requestCredentialForHolder(
    String holderDid, {
    required String issuerDid,
    required DidSigner assertionSigner,
    required RequestCredentialsOptions options,
  }) async {
    if (holderDid != assertionSigner.did) {
      throw ArgumentError('Holder DID does not match assertion signer DID.');
    }
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
    final signedAssertion = await JwtHelper.createAndSignJwt(
        payload, DidSignerAdapter(assertionSigner));

    final requestIssuanceMessage = VdipRequestIssuanceMessage(
      id: const Uuid().v4(),
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
      requestIssuanceMessage,
    );

    return requestIssuanceMessage;
  }

  /// Listens to incoming DIDComm messages related to VDIP holder flows.
  ///
  /// Handlers are invoked based on message type. Returns the active
  /// [StreamSubscription] which can be cancelled to stop listening.
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
            MessageWrappingType.anoncryptSignPlaintext,
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

        if (unpacked.type == VdipIssuedCredentialMessage.messageType) {
          onCredentialsIssuanceResponse(VdipIssuedCredentialMessage(
            id: unpacked.id,
            body: unpacked.body,
            from: unpacked.from,
            to: unpacked.to,
            createdTime: unpacked.createdTime,
            expiresTime: unpacked.expiresTime,
            threadId: unpacked.threadId,
          ));

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
