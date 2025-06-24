import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

/// Utility class for parsing DigitalCredentials
class CredentialParser {
  /// Parses a credential from JSON string to DigitalCredential
  static DigitalCredential parseCredential({
    required String credentialJson,
    required String id,
  }) {
    final verifiableCredential = UniversalParser.parse(credentialJson);
    return DigitalCredential(
      verifiableCredential: verifiableCredential,
      id: id,
    );
  }

  /// Serializes a VerifiableCredential to JSON string
  static String serializeCredential(VerifiableCredential verifiableCredential) {
    return jsonEncode(verifiableCredential);
  }

  /// Parses a credential from bytes to DigitalCredential
  static DigitalCredential parseCredentialFromBytes({
    required Uint8List credentialBytes,
    required String id,
  }) {
    final credentialJson = utf8.decode(credentialBytes);
    return parseCredential(credentialJson: credentialJson, id: id);
  }

  /// Serializes a VerifiableCredential to bytes
  static Uint8List serializeCredentialToBytes(
      VerifiableCredential verifiableCredential) {
    final jsonString = serializeCredential(verifiableCredential);
    return utf8.encode(jsonString);
  }
}
