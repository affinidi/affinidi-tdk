import 'package:ssi/ssi.dart';

/// Registry for ATM service DID documents.
class AtmServiceRegistry {
  /// The Atlas service DID document.
  final DidDocument atlasDidDocument;

  /// Creates an ATM service registry with the specified Atlas DID document.
  AtmServiceRegistry({
    required this.atlasDidDocument,
  });

  /// Returns all registered DID documents.
  List<DidDocument> get all => [
        atlasDidDocument,
      ];

  /// Initializes the service registry by resolving the Atlas DID document.
  static Future<AtmServiceRegistry> init() async => AtmServiceRegistry(
        atlasDidDocument: await UniversalDIDResolver.defaultResolver.resolveDid(
          'did:web:did.dev.affinidi.io:ama',
        ),
      );
}
