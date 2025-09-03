class ClientOptions {
  final Duration requestTimeout;
  final Duration messageExpiration;
  final String mediatorDid;
  final String atlasDid;

  const ClientOptions({
    this.requestTimeout = const Duration(minutes: 20),
    this.messageExpiration = const Duration(minutes: 1),
    this.mediatorDid =
        'did:web:ed39392b-8b24-49b1-9884-efc9fb1fc3f8.atlas.affinidi.io',
    // TODO: clarify when we should use PROD instead of DEV
    this.atlasDid = 'did:web:did.dev.affinidi.io:ama',
  });
}
