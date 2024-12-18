//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ChangeCredentialStatusInput {
  /// Returns a new [ChangeCredentialStatusInput] instance.
  ChangeCredentialStatusInput({
    this.changeReason,
    this.issuanceFlowDataId,
  });

  /// reason for revocation
  ChangeCredentialStatusInputChangeReasonEnum? changeReason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuanceFlowDataId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChangeCredentialStatusInput &&
    other.changeReason == changeReason &&
    other.issuanceFlowDataId == issuanceFlowDataId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (changeReason == null ? 0 : changeReason!.hashCode) +
    (issuanceFlowDataId == null ? 0 : issuanceFlowDataId!.hashCode);

  @override
  String toString() => 'ChangeCredentialStatusInput[changeReason=$changeReason, issuanceFlowDataId=$issuanceFlowDataId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.changeReason != null) {
      json[r'changeReason'] = this.changeReason;
    } else {
      json[r'changeReason'] = null;
    }
    if (this.issuanceFlowDataId != null) {
      json[r'issuanceFlowDataId'] = this.issuanceFlowDataId;
    } else {
      json[r'issuanceFlowDataId'] = null;
    }
    return json;
  }

  /// Returns a new [ChangeCredentialStatusInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChangeCredentialStatusInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChangeCredentialStatusInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChangeCredentialStatusInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChangeCredentialStatusInput(
        changeReason: ChangeCredentialStatusInputChangeReasonEnum.fromJson(json[r'changeReason']),
        issuanceFlowDataId: mapValueOfType<String>(json, r'issuanceFlowDataId'),
      );
    }
    return null;
  }

  static List<ChangeCredentialStatusInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChangeCredentialStatusInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChangeCredentialStatusInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChangeCredentialStatusInput> mapFromJson(dynamic json) {
    final map = <String, ChangeCredentialStatusInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChangeCredentialStatusInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChangeCredentialStatusInput-objects as value to a dart map
  static Map<String, List<ChangeCredentialStatusInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChangeCredentialStatusInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChangeCredentialStatusInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// reason for revocation
class ChangeCredentialStatusInputChangeReasonEnum {
  /// Instantiate a new enum with the provided [value].
  const ChangeCredentialStatusInputChangeReasonEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INVALID_CREDENTIAL = ChangeCredentialStatusInputChangeReasonEnum._(r'INVALID_CREDENTIAL');
  static const COMPROMISED_ISSUER = ChangeCredentialStatusInputChangeReasonEnum._(r'COMPROMISED_ISSUER');

  /// List of all possible values in this [enum][ChangeCredentialStatusInputChangeReasonEnum].
  static const values = <ChangeCredentialStatusInputChangeReasonEnum>[
    INVALID_CREDENTIAL,
    COMPROMISED_ISSUER,
  ];

  static ChangeCredentialStatusInputChangeReasonEnum? fromJson(dynamic value) => ChangeCredentialStatusInputChangeReasonEnumTypeTransformer().decode(value);

  static List<ChangeCredentialStatusInputChangeReasonEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChangeCredentialStatusInputChangeReasonEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChangeCredentialStatusInputChangeReasonEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ChangeCredentialStatusInputChangeReasonEnum] to String,
/// and [decode] dynamic data back to [ChangeCredentialStatusInputChangeReasonEnum].
class ChangeCredentialStatusInputChangeReasonEnumTypeTransformer {
  factory ChangeCredentialStatusInputChangeReasonEnumTypeTransformer() => _instance ??= const ChangeCredentialStatusInputChangeReasonEnumTypeTransformer._();

  const ChangeCredentialStatusInputChangeReasonEnumTypeTransformer._();

  String encode(ChangeCredentialStatusInputChangeReasonEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ChangeCredentialStatusInputChangeReasonEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ChangeCredentialStatusInputChangeReasonEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INVALID_CREDENTIAL': return ChangeCredentialStatusInputChangeReasonEnum.INVALID_CREDENTIAL;
        case r'COMPROMISED_ISSUER': return ChangeCredentialStatusInputChangeReasonEnum.COMPROMISED_ISSUER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ChangeCredentialStatusInputChangeReasonEnumTypeTransformer] instance.
  static ChangeCredentialStatusInputChangeReasonEnumTypeTransformer? _instance;
}


