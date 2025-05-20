import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';

class MockVerifiableCredential extends Mock implements VerifiableCredential {}

void main() {
  late MockVerifiableCredential mockVerifiableCredential;
  late DigitalCredential digitalCredential;

  setUp(() {
    mockVerifiableCredential = MockVerifiableCredential();
    digitalCredential = DigitalCredential(
      verifiableCredential: mockVerifiableCredential,
      id: 'test-id',
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
