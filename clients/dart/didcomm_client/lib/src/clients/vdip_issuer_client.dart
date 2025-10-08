import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../../didcomm_client.dart';
import '../extensions/did_manager_extention.dart';
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
