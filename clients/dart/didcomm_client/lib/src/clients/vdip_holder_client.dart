import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../didcomm_client.dart';
import '../extensions/did_manager_extention.dart';
import 'didcomm_base_client.dart';

class VdipHolderClient extends DidcommBaseClient {
  VdipHolderClient({
    required super.didManager,
    required super.mediatorClient,
    super.clientOptions = const ClientOptions(),
  });

  static Future<VdipHolderClient> init({
    required DidManager didManager,
    ClientOptions clientOptions = const ClientOptions(),
  }) async {
    final [mediatorDidDocument] = await Future.wait(
      [
        clientOptions.mediatorDid,
      ].map(UniversalDIDResolver.defaultResolver.resolveDid),
    );

    return VdipHolderClient(
      didManager: didManager,
      clientOptions: clientOptions,
      mediatorClient: await didManager.getMediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        recipientDidDocuments: [],
      ),
    );
  }

  Future<QueryMessage> queryIssuerFeatures({
    required String issuerDid,
    required List<Query> featureQueries,
  }) async {
    final message = QueryMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [issuerDid],
      body: QueryBody(
        queries: featureQueries,
      ),
    );

    await mediatorClient.packAndSendMessage(
      message: message,
    );

    return message;
  }

  Future<PlainTextMessage> requestCredentials({
    required String issuerDid,
    required String credentialFormat,
    required List<String> credentialTypes,
  }) async {
    throw UnimplementedError();
  }

  StreamSubscription listenForIncomingMessages({
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
