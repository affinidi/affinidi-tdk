//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WalletsListDto {
  /// Returns a new [WalletsListDto] instance.
  WalletsListDto({
    this.wallets = const [],
  });

  List<WalletDto> wallets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WalletsListDto &&
    _deepEquality.equals(other.wallets, wallets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (wallets.hashCode);

  @override
  String toString() => 'WalletsListDto[wallets=$wallets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'wallets'] = this.wallets;
    return json;
  }

  /// Returns a new [WalletsListDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WalletsListDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WalletsListDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WalletsListDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WalletsListDto(
        wallets: WalletDto.listFromJson(json[r'wallets']),
      );
    }
    return null;
  }

  static List<WalletsListDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WalletsListDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WalletsListDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WalletsListDto> mapFromJson(dynamic json) {
    final map = <String, WalletsListDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WalletsListDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WalletsListDto-objects as value to a dart map
  static Map<String, List<WalletsListDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WalletsListDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WalletsListDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

