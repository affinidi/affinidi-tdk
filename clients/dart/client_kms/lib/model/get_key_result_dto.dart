//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetKeyResultDto {
  /// Returns a new [GetKeyResultDto] instance.
  GetKeyResultDto({
    this.id,
    this.projectId,
    this.ari,
    this.algorithm,
    this.didMethod,
    this.derivationPath,
    this.seedId,
    this.seedAri,
    this.publicKeyHex,
  });

  /// id of the key record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// id of the project
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectId;

  /// ARI of the key record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ari;

  /// algorithm of the key record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? algorithm;

  /// did method of the key record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? didMethod;

  /// derivation path of the key record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? derivationPath;

  /// id of the parent seed record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? seedId;

  /// ARI of the parent seed record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? seedAri;

  /// public key of the key config in HEX format
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicKeyHex;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetKeyResultDto &&
    other.id == id &&
    other.projectId == projectId &&
    other.ari == ari &&
    other.algorithm == algorithm &&
    other.didMethod == didMethod &&
    other.derivationPath == derivationPath &&
    other.seedId == seedId &&
    other.seedAri == seedAri &&
    other.publicKeyHex == publicKeyHex;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (projectId == null ? 0 : projectId!.hashCode) +
    (ari == null ? 0 : ari!.hashCode) +
    (algorithm == null ? 0 : algorithm!.hashCode) +
    (didMethod == null ? 0 : didMethod!.hashCode) +
    (derivationPath == null ? 0 : derivationPath!.hashCode) +
    (seedId == null ? 0 : seedId!.hashCode) +
    (seedAri == null ? 0 : seedAri!.hashCode) +
    (publicKeyHex == null ? 0 : publicKeyHex!.hashCode);

  @override
  String toString() => 'GetKeyResultDto[id=$id, projectId=$projectId, ari=$ari, algorithm=$algorithm, didMethod=$didMethod, derivationPath=$derivationPath, seedId=$seedId, seedAri=$seedAri, publicKeyHex=$publicKeyHex]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.projectId != null) {
      json[r'projectId'] = this.projectId;
    } else {
      json[r'projectId'] = null;
    }
    if (this.ari != null) {
      json[r'ari'] = this.ari;
    } else {
      json[r'ari'] = null;
    }
    if (this.algorithm != null) {
      json[r'algorithm'] = this.algorithm;
    } else {
      json[r'algorithm'] = null;
    }
    if (this.didMethod != null) {
      json[r'didMethod'] = this.didMethod;
    } else {
      json[r'didMethod'] = null;
    }
    if (this.derivationPath != null) {
      json[r'derivationPath'] = this.derivationPath;
    } else {
      json[r'derivationPath'] = null;
    }
    if (this.seedId != null) {
      json[r'seedId'] = this.seedId;
    } else {
      json[r'seedId'] = null;
    }
    if (this.seedAri != null) {
      json[r'seedAri'] = this.seedAri;
    } else {
      json[r'seedAri'] = null;
    }
    if (this.publicKeyHex != null) {
      json[r'publicKeyHex'] = this.publicKeyHex;
    } else {
      json[r'publicKeyHex'] = null;
    }
    return json;
  }

  /// Returns a new [GetKeyResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetKeyResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetKeyResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetKeyResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetKeyResultDto(
        id: mapValueOfType<String>(json, r'id'),
        projectId: mapValueOfType<String>(json, r'projectId'),
        ari: mapValueOfType<String>(json, r'ari'),
        algorithm: mapValueOfType<String>(json, r'algorithm'),
        didMethod: mapValueOfType<String>(json, r'didMethod'),
        derivationPath: mapValueOfType<String>(json, r'derivationPath'),
        seedId: mapValueOfType<String>(json, r'seedId'),
        seedAri: mapValueOfType<String>(json, r'seedAri'),
        publicKeyHex: mapValueOfType<String>(json, r'publicKeyHex'),
      );
    }
    return null;
  }

  static List<GetKeyResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetKeyResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetKeyResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetKeyResultDto> mapFromJson(dynamic json) {
    final map = <String, GetKeyResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetKeyResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetKeyResultDto-objects as value to a dart map
  static Map<String, List<GetKeyResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetKeyResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetKeyResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

