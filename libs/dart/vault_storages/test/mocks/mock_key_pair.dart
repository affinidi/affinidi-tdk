import 'dart:typed_data';
import 'package:mocktail/mocktail.dart';
import 'package:ssi/ssi.dart';

class MockKeyPair extends Mock implements KeyPair {
  @override
  Future<Uint8List> sign(Uint8List message,
      {SignatureScheme? signatureScheme}) async {
    return Uint8List.fromList([1, 2, 3]);
  }
}
