import 'dart:async';
import 'dart:convert';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../didcomm_client.dart';
import '../extensions/did_manager_extention.dart';
import '../messages/vdip/vdip_switch_context_message.dart';
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

  Future<String> buildBrowserContextUrl({
    required VdipSwitchContextMessage switchContextMessage,
  }) async {
    final body = switchContextMessage.switchContext;
    final requestJwt = await _buildRequestJwt(
      nonce: body.nonce,
      threadId: switchContextMessage.threadId ?? '',
    );

    return '${body.baseIssuerUrl}/vdip/issuance?token=$requestJwt';
  }

  StreamSubscription listenForIncomingMessages({
    void Function(DiscloseMessage)? onDiscloseMessage,
    required void Function(
      PlainTextMessage,
    ) onCredentialsIssuanceResponse,
    void Function(VdipSwitchContextMessage)? onSwitchContext,
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

        if (onSwitchContext != null &&
            unpacked.type == VdipSwitchContextMessage.messageType) {
          onSwitchContext(
            VdipSwitchContextMessage(
              id: unpacked.id,
              from: unpacked.from,
              to: unpacked.to,
              createdTime: unpacked.createdTime,
              expiresTime: unpacked.expiresTime,
              body: unpacked.body,
              threadId: unpacked.threadId,
            ),
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

  Future<String> _buildRequestJwt({
    required String nonce,
    required String threadId,
  }) async {
    final signer = await didManager.getSigner(
      mediatorClient.signer.keyId,
    );

    final now = DateTime.now();
    final header = {'alg': 'ES256', 'typ': 'JWT', 'kid': signer.didKeyId};
    final payload = {
      'nonce': nonce,
      'threadId': threadId,
      'iss': mediatorClient.signer.did,
      'sub': mediatorClient.signer.did,
      'iat': now.millisecondsSinceEpoch ~/ 1000,
      'exp':
          now.add(const Duration(minutes: 15)).millisecondsSinceEpoch ~/ 1000,
    };

    final headerEncoded = base64Url.encode(utf8.encode(jsonEncode(header)));
    final payloadEncoded = base64Url.encode(utf8.encode(jsonEncode(payload)));
    final signingInput = '$headerEncoded.$payloadEncoded';

    final signature = await signer.sign(utf8.encode(signingInput));
    final signatureEncoded = base64Url.encode(signature);

    return '$signingInput.$signatureEncoded';
  }
}
