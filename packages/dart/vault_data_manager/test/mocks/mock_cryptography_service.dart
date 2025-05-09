import 'dart:typed_data';

import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:mocktail/mocktail.dart';

class MockCryptographyService extends Mock
    implements CryptographyServiceInterface {}

void registerMockFallbacks() {
  registerFallbackValue(Uint8List.fromList([0]));
}
