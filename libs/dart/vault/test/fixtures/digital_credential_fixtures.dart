import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

class DigitalCredentialFixtures {
  static DigitalCredential createTestCredential({
    required VerifiableCredential verifiableCredential,
    String id = 'test-id',
  }) {
    return DigitalCredential(
      verifiableCredential: verifiableCredential,
      id: id,
    );
  }
}
