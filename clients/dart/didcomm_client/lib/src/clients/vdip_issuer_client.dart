import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../didcomm_client.dart';
import '../common/feature_discovery_helper.dart';
import '../extensions/did_manager_extention.dart';
import '../messages/vdip/vdip_switch_context_message.dart';
import 'didcomm_base_client.dart';

class VdipIssuerClient extends DidcommBaseClient {
  final List<Disclosure> featureDisclosures;
  final DidSigner signer;

  VdipIssuerClient({
    required super.didManager,
    required this.signer,
    required super.mediatorClient,
    required this.featureDisclosures,
    super.clientOptions = const ClientOptions(),
  });

  static Future<VdipIssuerClient> init({
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

    return VdipIssuerClient(
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
      from: mediatorClient.signer.did,
      to: [holderDid],
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

  Future<PlainTextMessage> sendIssuedCredentials({
    required String holderDid,
    required List<ParsedVerifiableCredential> verifiableCredentials,
  }) async {
    throw UnimplementedError();
  }

  Future<VdipSwitchContextMessage> sendSwitchContext({
    required String holderDid,
    required Uri baseIssuerUrl,
    required String nonce,
    required String threadId,
  }) async {
    final holderDidDocument =
        await UniversalDIDResolver.defaultResolver.resolveDid(holderDid);

    final message = VdipSwitchContextMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [holderDid],
      threadId: threadId,
      body: VdipSwitchContextBody(
        baseIssuerUrl: baseIssuerUrl.toString(),
        nonce: nonce,
      ).toJson(),
    );

    await sendMessage(
      message,
      recipientDidDocument: holderDidDocument,
    );

    return message;
  }

  StreamSubscription listenForIncomingMessages({
    void Function(QueryMessage)? onFeatureQuery,
    required void Function(PlainTextMessage) onRequestToIssueCredentials,
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
