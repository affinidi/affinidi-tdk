//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TokenDto {
  /// Returns a new [TokenDto] instance.
  TokenDto({
    required this.id,
    required this.ari,
    required this.ownerAri,
    required this.name,
    required this.authenticationMethod,
    this.scopes = const [],
  });

  /// Token Id
  String id;

  /// Token ARI
  String ari;

  /// The Token owner's ARI
  String ownerAri;

  /// Owner defined Token display name
  String name;

  TokenAuthenticationMethodDto authenticationMethod;

  /// Scopes that will be assigned to the Token on authentication
  List<String> scopes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenDto &&
    other.id == id &&
    other.ari == ari &&
    other.ownerAri == ownerAri &&
    other.name == name &&
    other.authenticationMethod == authenticationMethod &&
    _deepEquality.equals(other.scopes, scopes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (ari.hashCode) +
    (ownerAri.hashCode) +
    (name.hashCode) +
    (authenticationMethod.hashCode) +
    (scopes.hashCode);

  @override
  String toString() => 'TokenDto[id=$id, ari=$ari, ownerAri=$ownerAri, name=$name, authenticationMethod=$authenticationMethod, scopes=$scopes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'ari'] = this.ari;
      json[r'ownerAri'] = this.ownerAri;
      json[r'name'] = this.name;
      json[r'authenticationMethod'] = this.authenticationMethod;
      json[r'scopes'] = this.scopes;
    return json;
  }

  /// Returns a new [TokenDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TokenDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TokenDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TokenDto(
        id: mapValueOfType<String>(json, r'id')!,
        ari: mapValueOfType<String>(json, r'ari')!,
        ownerAri: mapValueOfType<String>(json, r'ownerAri')!,
        name: mapValueOfType<String>(json, r'name')!,
        authenticationMethod: TokenAuthenticationMethodDto.fromJson(json[r'authenticationMethod'])!,
        scopes: json[r'scopes'] is Iterable
            ? (json[r'scopes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<TokenDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenDto> mapFromJson(dynamic json) {
    final map = <String, TokenDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenDto-objects as value to a dart map
  static Map<String, List<TokenDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TokenDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TokenDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'ari',
    'ownerAri',
    'name',
    'authenticationMethod',
    'scopes',
  };
}

