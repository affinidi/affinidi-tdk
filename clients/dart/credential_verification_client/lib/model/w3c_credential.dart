//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class W3cCredential {
  /// Returns a new [W3cCredential] instance.
  W3cCredential({
    required this.atContext,
    this.id,
    this.type = const [],
    this.holder,
    required this.credentialSubject,
    this.credentialStatus,
    required this.issuanceDate,
    required this.issuer,
    this.expirationDate,
    required this.proof,
    this.credentialSchema,
  });

  W3cPresentationContext atContext;

  String? id;

  List<String> type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  W3cCredentialHolder? holder;

  W3cCredentialCredentialSubject credentialSubject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  W3cCredentialStatus? credentialStatus;

  String issuanceDate;

  String issuer;

  String? expirationDate;

  W3cProof proof;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  W3cCredentialCredentialSchema? credentialSchema;

  @override
  bool operator ==(Object other) => identical(this, other) || other is W3cCredential &&
    other.atContext == atContext &&
    other.id == id &&
    _deepEquality.equals(other.type, type) &&
    other.holder == holder &&
    other.credentialSubject == credentialSubject &&
    other.credentialStatus == credentialStatus &&
    other.issuanceDate == issuanceDate &&
    other.issuer == issuer &&
    other.expirationDate == expirationDate &&
    other.proof == proof &&
    other.credentialSchema == credentialSchema;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (atContext.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (type.hashCode) +
    (holder == null ? 0 : holder!.hashCode) +
    (credentialSubject.hashCode) +
    (credentialStatus == null ? 0 : credentialStatus!.hashCode) +
    (issuanceDate.hashCode) +
    (issuer.hashCode) +
    (expirationDate == null ? 0 : expirationDate!.hashCode) +
    (proof.hashCode) +
    (credentialSchema == null ? 0 : credentialSchema!.hashCode);

  @override
  String toString() => 'W3cCredential[atContext=$atContext, id=$id, type=$type, holder=$holder, credentialSubject=$credentialSubject, credentialStatus=$credentialStatus, issuanceDate=$issuanceDate, issuer=$issuer, expirationDate=$expirationDate, proof=$proof, credentialSchema=$credentialSchema]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'@context'] = this.atContext;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'type'] = this.type;
    if (this.holder != null) {
      json[r'holder'] = this.holder;
    } else {
      json[r'holder'] = null;
    }
      json[r'credentialSubject'] = this.credentialSubject;
    if (this.credentialStatus != null) {
      json[r'credentialStatus'] = this.credentialStatus;
    } else {
      json[r'credentialStatus'] = null;
    }
      json[r'issuanceDate'] = this.issuanceDate;
      json[r'issuer'] = this.issuer;
    if (this.expirationDate != null) {
      json[r'expirationDate'] = this.expirationDate;
    } else {
      json[r'expirationDate'] = null;
    }
      json[r'proof'] = this.proof;
    if (this.credentialSchema != null) {
      json[r'credentialSchema'] = this.credentialSchema;
    } else {
      json[r'credentialSchema'] = null;
    }
    return json;
  }

  /// Returns a new [W3cCredential] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static W3cCredential? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "W3cCredential[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "W3cCredential[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return W3cCredential(
        atContext: W3cPresentationContext.fromJson(json[r'@context'])!,
        id: mapValueOfType<String>(json, r'id'),
        type: json[r'type'] is Iterable
            ? (json[r'type'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        holder: W3cCredentialHolder.fromJson(json[r'holder']),
        credentialSubject: W3cCredentialCredentialSubject.fromJson(json[r'credentialSubject'])!,
        credentialStatus: W3cCredentialStatus.fromJson(json[r'credentialStatus']),
        issuanceDate: mapValueOfType<String>(json, r'issuanceDate')!,
        issuer: mapValueOfType<String>(json, r'issuer')!,
        expirationDate: mapValueOfType<String>(json, r'expirationDate'),
        proof: W3cProof.fromJson(json[r'proof'])!,
        credentialSchema: W3cCredentialCredentialSchema.fromJson(json[r'credentialSchema']),
      );
    }
    return null;
  }

  static List<W3cCredential> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <W3cCredential>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = W3cCredential.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, W3cCredential> mapFromJson(dynamic json) {
    final map = <String, W3cCredential>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = W3cCredential.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of W3cCredential-objects as value to a dart map
  static Map<String, List<W3cCredential>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<W3cCredential>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = W3cCredential.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '@context',
    'type',
    'credentialSubject',
    'issuanceDate',
    'issuer',
    'proof',
  };
}

