import 'package:mocktail/mocktail.dart';

import '../fixtures/encryption/mock_utils.dart';
import 'mock_cryptography_service.dart';

void setupMockCryptographyDefaults(MockCryptographyService mock) {
  when(() => mock.getRandomBytes(32)).thenReturn(mockBytes());

  when(() => mock.Pbkdf2(
        password: any(named: 'password'),
        nonce: any(named: 'nonce'),
      )).thenAnswer((_) async => mockBytes());

  when(() => mock.encryptToBytes(any(), any())).thenReturn(mockBytes());

  when(() => mock.decryptFromBytes(any(), any())).thenReturn(mockBytes());

  when(() => mock.createSha256Hex(bytes: any(named: 'bytes')))
      .thenReturn('mockedHash');

  when(() => mock.encryptWithRsaPublicKeyFromJwk(
        jwk: any(named: 'jwk'),
        data: any(named: 'data'),
      )).thenReturn(mockBytes());
}
