import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:test/test.dart';

import 'fixtures/digital_credential_fixtures.dart';
import 'mocks/mock_digital_credential.dart';

void main() {
  late MockVerifiableCredential mockVerifiableCredential;
  late DigitalCredential digitalCredential;

  setUp(() {
    mockVerifiableCredential = MockVerifiableCredential();
    digitalCredential = DigitalCredentialFixtures.createTestCredential(
      verifiableCredential: mockVerifiableCredential,
    );
  });

  group('DigitalCredential', () {
    test('should initialize with correct values', () {
      expect(digitalCredential.id, equals('test-id'));
      expect(digitalCredential.verifiableCredential,
          equals(mockVerifiableCredential));
    });

    test('should return immutable values', () {
      expect(
        () => (digitalCredential as dynamic).id = 'new-id',
        throwsA(isA<Error>()),
      );
      expect(
        () => (digitalCredential as dynamic).verifiableCredential =
            MockVerifiableCredential(),
        throwsA(isA<Error>()),
      );
    });
  });
}
