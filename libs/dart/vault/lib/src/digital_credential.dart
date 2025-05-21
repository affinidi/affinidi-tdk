import 'package:ssi/ssi.dart';

/// Represents a digital credential in the storage system.
/// Combines a verifiable credential with its associated node.

class DigitalCredential {
  final VerifiableCredential _verifiableCredential;
  final String _id;

  /// Creates a new digital credential instance.
  ///
  /// [verifiableCredential] - Verifiable credential data
  /// [id] - Storage identifier
  DigitalCredential({
    required VerifiableCredential verifiableCredential,
    required String id,
  })  : _verifiableCredential = verifiableCredential,
        _id = id;

  /// Gets the verifiable credential associated with this digital credential
  VerifiableCredential get verifiableCredential => _verifiableCredential;

  /// Gets the storage identifier
  String get id => _id;

  /// Converts the digital credential to a JSON representation
  Map<String, dynamic> toJson() {
    return {
      'verifiableCredential': _verifiableCredential.toJson(),
      'id': _id,
    };
  }

  /// Creates a digital credential from a JSON representation
  factory DigitalCredential.fromJson(Map<String, dynamic> json) {
    return DigitalCredential(
      verifiableCredential:
          json['verifiableCredential'] as VerifiableCredential,
      id: json['id'] as String,
    );
  }
}
