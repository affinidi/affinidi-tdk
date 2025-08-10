import 'package:ssi/ssi.dart';

class AtmServiceRegistry {
  final DidDocument atlasDidDocument;

  AtmServiceRegistry({
    required this.atlasDidDocument,
  });

  List<DidDocument> get all => [
        atlasDidDocument,
      ];

  static Future<AtmServiceRegistry> init() async => AtmServiceRegistry(
        atlasDidDocument: await UniversalDIDResolver.defaultResolver.resolveDid(
          'did:web:did.dev.affinidi.io:ama',
        ),
      );
}
