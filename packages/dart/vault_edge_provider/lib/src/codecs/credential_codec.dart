import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

/// Utility class for parsing DigitalCredentials
class CredentialCodec {
  /// Decodes a credential from bytes to DigitalCredential
  DigitalCredential decode({
    required Uint8List credentialBytes,
    required String id,
  }) {
    final credentialJson = utf8.decode(credentialBytes);
    final verifiableCredential = UniversalParser.parse(credentialJson);

    return DigitalCredential(
      verifiableCredential: verifiableCredential,
      id: id,
    );
  }

  /// Encodes a VerifiableCredential to bytes
  Uint8List encode(VerifiableCredential verifiableCredential) {
    final jsonString = jsonEncode(verifiableCredential);

    return utf8.encode(jsonString);
  }
}
