import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../didcomm_client.dart';
import '../extensions/did_manager_extention.dart';
import '../messages/vdip/vdip_switch_context_message.dart';
import 'didcomm_base_client.dart';

class VdipIssuerClient extends DidcommBaseClient {
  VdipIssuerClient({
    required super.didManager,
    required super.mediatorClient,
    super.clientOptions = const ClientOptions(),
  });

  static Future<VdipIssuerClient> init({
    required DidManager didManager,
    ClientOptions clientOptions = const ClientOptions(),
  }) async {
    final [mediatorDidDocument] = await Future.wait(
      [
        clientOptions.mediatorDid,
      ].map(UniversalDIDResolver.defaultResolver.resolveDid),
    );

    return VdipIssuerClient(
      didManager: didManager,
      clientOptions: clientOptions,
      mediatorClient: await didManager.getMediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        recipientDidDocuments: [],
      ),
    );
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

        // TODO: implement missing callbacks

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
