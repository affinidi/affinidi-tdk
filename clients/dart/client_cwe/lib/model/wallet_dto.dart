//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WalletDto {
  /// Returns a new [WalletDto] instance.
  WalletDto({
    this.id,
    this.did,
    this.didDocument,
    this.ari,
    this.keys = const [],
  });

  /// id of the wallet in uuidV4 format
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// did of the wallet
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? did;

  /// did document of the wallet
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? didDocument;

  /// ARI of the wallet
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ari;

  List<WalletDtoKeysInner> keys;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WalletDto &&
    other.id == id &&
    other.did == did &&
    other.didDocument == didDocument &&
    other.ari == ari &&
    _deepEquality.equals(other.keys, keys);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (did == null ? 0 : did!.hashCode) +
    (didDocument == null ? 0 : didDocument!.hashCode) +
    (ari == null ? 0 : ari!.hashCode) +
    (keys.hashCode);

  @override
  String toString() => 'WalletDto[id=$id, did=$did, didDocument=$didDocument, ari=$ari, keys=$keys]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.did != null) {
      json[r'did'] = this.did;
    } else {
      json[r'did'] = null;
    }
    if (this.didDocument != null) {
      json[r'didDocument'] = this.didDocument;
    } else {
      json[r'didDocument'] = null;
    }
    if (this.ari != null) {
      json[r'ari'] = this.ari;
    } else {
      json[r'ari'] = null;
    }
      json[r'keys'] = this.keys;
    return json;
  }

  /// Returns a new [WalletDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WalletDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WalletDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WalletDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WalletDto(
        id: mapValueOfType<String>(json, r'id'),
        did: mapValueOfType<String>(json, r'did'),
        didDocument: mapValueOfType<Object>(json, r'didDocument'),
        ari: mapValueOfType<String>(json, r'ari'),
        keys: WalletDtoKeysInner.listFromJson(json[r'keys']),
      );
    }
    return null;
  }

  static List<WalletDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WalletDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WalletDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WalletDto> mapFromJson(dynamic json) {
    final map = <String, WalletDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WalletDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WalletDto-objects as value to a dart map
  static Map<String, List<WalletDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WalletDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WalletDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

