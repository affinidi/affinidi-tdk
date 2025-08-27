import 'dart:async';

import 'package:mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../common/atm_mediator_client.dart';
import '../common/client_options.dart';
import '../messages/get_mediator_instances_list_message.dart';
import 'atm_base_client.dart';

class AtmAtlasClient extends AtmBaseClient {
  AtmAtlasClient({
    required super.mediatorClient,
    required super.didManager,
    required super.atmServiceDidDocument,
    super.clientOptions = const ClientOptions(),
  });

  static Future<AtmAtlasClient> init({
    required DidManager didManager,
    ClientOptions clientOptions = const ClientOptions(),
  }) async {
    final [mediatorDidDocument, atlasDidDocument] = await Future.wait([
      UniversalDIDResolver.defaultResolver.resolveDid(
        clientOptions.mediatorDid,
      ),
      UniversalDIDResolver.defaultResolver.resolveDid(
        clientOptions.atlasDid,
      ),
    ]);

    final didDocument = await didManager.getDidDocument();
    final signer = await didManager.getSigner(
      didDocument.authentication.first.id,
    );

    final matchedDidKeyIds = didDocument.matchKeysInKeyAgreement(
      otherDidDocuments: [
        mediatorDidDocument,
        atlasDidDocument,
      ],
    );

    // TODO: improve error message to specify which key pair are supported by mediator/Atlas
    if (matchedDidKeyIds.isEmpty) {
      throw Exception(
        'No matching keys found between our DID Document and mediator/Atlas',
      );
    }

    final mediatorClient = AtmMediatorClient(
      mediatorDidDocument: mediatorDidDocument,
      keyPair: await didManager.getKeyPairByDidKeyId(
        matchedDidKeyIds.first,
      ),
      didKeyId: matchedDidKeyIds.first,
      signer: signer,
      forwardMessageOptions: const ForwardMessageOptions(
        shouldSign: true,
        shouldEncrypt: true,
        keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdh1Pu,
        encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
      ),
      webSocketOptions: const WebSocketOptions(
        statusRequestMessageOptions: StatusRequestMessageOptions(
          shouldSend: true,
          shouldSign: true,
          shouldEncrypt: true,
        ),
        liveDeliveryChangeMessageOptions: LiveDeliveryChangeMessageOptions(
          shouldSend: true,
          shouldSign: true,
          shouldEncrypt: true,
        ),
      ),
    );

    return AtmAtlasClient(
      mediatorClient: mediatorClient,
      didManager: didManager,
      atmServiceDidDocument: atlasDidDocument,
      clientOptions: clientOptions,
    );
  }

  Future<GetMediatorInstancesListResponseMessage> getMediatorInstancesList({
    required String accessToken,
  }) async {
    final createdTime = DateTime.now().toUtc();

    final requestMessage = GetMediatorInstancesListMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: createdTime,
      expiresTime: createdTime.add(clientOptions.messageExpiration),
    );

    final responseMessage = await sendMessage(
      requestMessage,
      accessToken: accessToken,
    );

    return GetMediatorInstancesListResponseMessage(
      id: responseMessage.id,
      from: responseMessage.from,
      to: responseMessage.to,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body,
    );
  }

  Future<AuthenticationTokens> authenticate({
    EncryptionAlgorithm encryptionAlgorithm = EncryptionAlgorithm.a256cbc,
  }) async {
    return await mediatorClient.authenticate(
      encryptionAlgorithm: encryptionAlgorithm,
    );
  }
}
