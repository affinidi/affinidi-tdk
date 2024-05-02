//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class W3cProof {
  /// Returns a new [W3cProof] instance.
  W3cProof({
    this.type,
    this.created,
    required this.verificationMethod,
    required this.proofPurpose,
    this.jws,
    this.proofValue,
    this.nonce,
  });

  String? type;

  String? created;

  String verificationMethod;

  String proofPurpose;

  String? jws;

  String? proofValue;

  String? nonce;

  @override
  bool operator ==(Object other) => identical(this, other) || other is W3cProof &&
    other.type == type &&
    other.created == created &&
    other.verificationMethod == verificationMethod &&
    other.proofPurpose == proofPurpose &&
    other.jws == jws &&
    other.proofValue == proofValue &&
    other.nonce == nonce;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (verificationMethod.hashCode) +
    (proofPurpose.hashCode) +
    (jws == null ? 0 : jws!.hashCode) +
    (proofValue == null ? 0 : proofValue!.hashCode) +
    (nonce == null ? 0 : nonce!.hashCode);

  @override
  String toString() => 'W3cProof[type=$type, created=$created, verificationMethod=$verificationMethod, proofPurpose=$proofPurpose, jws=$jws, proofValue=$proofValue, nonce=$nonce]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
      json[r'verificationMethod'] = this.verificationMethod;
      json[r'proofPurpose'] = this.proofPurpose;
    if (this.jws != null) {
      json[r'jws'] = this.jws;
    } else {
      json[r'jws'] = null;
    }
    if (this.proofValue != null) {
      json[r'proofValue'] = this.proofValue;
    } else {
      json[r'proofValue'] = null;
    }
    if (this.nonce != null) {
      json[r'nonce'] = this.nonce;
    } else {
      json[r'nonce'] = null;
    }
    return json;
  }

  /// Returns a new [W3cProof] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static W3cProof? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "W3cProof[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "W3cProof[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return W3cProof(
        type: mapValueOfType<String>(json, r'type'),
        created: mapValueOfType<String>(json, r'created'),
        verificationMethod: mapValueOfType<String>(json, r'verificationMethod')!,
        proofPurpose: mapValueOfType<String>(json, r'proofPurpose')!,
        jws: mapValueOfType<String>(json, r'jws'),
        proofValue: mapValueOfType<String>(json, r'proofValue'),
        nonce: mapValueOfType<String>(json, r'nonce'),
      );
    }
    return null;
  }

  static List<W3cProof> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <W3cProof>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = W3cProof.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, W3cProof> mapFromJson(dynamic json) {
    final map = <String, W3cProof>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = W3cProof.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of W3cProof-objects as value to a dart map
  static Map<String, List<W3cProof>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<W3cProof>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = W3cProof.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'verificationMethod',
    'proofPurpose',
  };
}

