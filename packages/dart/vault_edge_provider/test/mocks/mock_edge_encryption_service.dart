import 'dart:typed_data';

import 'package:affinidi_tdk_vault_edge_provider/src/services/edge_encryption_service_interface.dart';
import 'package:mocktail/mocktail.dart';

class MockEdgeEncryptionService extends Mock
    implements EdgeEncryptionServiceInterface {}

class MockEncryptionServiceSetup {
  static void setupEncryptionServiceDefaults(
    MockEdgeEncryptionService mock,
  ) {
    when(() => mock.encryptData(any())).thenAnswer((invocation) async {
      final data = invocation.positionalArguments[0] as Uint8List;
      return data;
    });

    when(() => mock.decryptData(any())).thenAnswer((invocation) async {
      final data = invocation.positionalArguments[0] as Uint8List;
      return data;
    });

    when(() => mock.encryptFileName(any())).thenAnswer((invocation) async {
      final fileName = invocation.positionalArguments[0] as String;
      return fileName;
    });

    when(() => mock.decryptFileName(any())).thenAnswer((invocation) async {
      final encryptedFileName = invocation.positionalArguments[0] as String;
      return encryptedFileName;
    });
  }
}
