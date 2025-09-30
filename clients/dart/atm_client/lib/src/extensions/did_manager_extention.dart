import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../../atm_client.dart';
import '../common/atm_mediator_client.dart';

extension DidManagerExtention on DidManager {
  Future<AtmMediatorClient> getMediatorClient({
    required DidDocument mediatorDidDocument,
    // TODO: make it optional
    required List<DidDocument> recipientDidDocuments,
    ClientOptions clientOptions = const ClientOptions(),
  }) async {
    final otherDidDocuments = [
      mediatorDidDocument,
      ...recipientDidDocuments,
    ];

    final didDocument = await getDidDocument();
    final signer = await getSigner(
      didDocument.authentication.first.id,
    );

    final matchedDidKeyIds = didDocument.matchKeysInKeyAgreement(
      otherDidDocuments: otherDidDocuments,
    );

    // TODO: improve error message to specify which key pair are supported by mediator/Atlas
    if (matchedDidKeyIds.isEmpty) {
      throw Exception(
        'No matching keys found between our DID Document and mediator/Atlas',
      );
    }

    final keyPair = await getKeyPairByDidKeyId(
      matchedDidKeyIds.first,
    );

    return AtmMediatorClient(
      didManager: this,
      clientOptions: clientOptions,
      mediatorDidDocument: mediatorDidDocument,
      keyPair: keyPair,
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
  }
}
