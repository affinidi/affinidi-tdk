import 'dart:typed_data';

import 'package:affinidi_tdk_vault_edge_provider/src/services/edge_encryption_service_interface.dart';
import 'package:mocktail/mocktail.dart';

class MockEdgeEncryptionService extends Mock
    implements EdgeEncryptionServiceInterface {}

class MockEncryptionServiceSetup {
  static void setupEncryptionServiceDefaults(
    MockEdgeEncryptionService mock,
  ) {
    when(() => mock.initializeWithPassphrase(any()))
        .thenAnswer((_) async => true);

    when(() => mock.loadMasterKeyWithPassphrase(any()))
        .thenAnswer((_) async => true);

    when(() => mock.changePassphrase(any(), any()))
        .thenAnswer((_) async => true);

    when(() => mock.encryptData(any())).thenAnswer((invocation) async {
      final data = invocation.positionalArguments[0] as Uint8List;
      return data;
    });

    when(() => mock.decryptData(any())).thenAnswer((invocation) async {
      final data = invocation.positionalArguments[0] as Uint8List;
      return data;
    });

    when(() => mock.isInitialized()).thenAnswer((_) async => true);

    when(() => mock.clearMasterKey()).thenReturn(null);
  }
}
