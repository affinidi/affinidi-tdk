// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge_profile.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EdgeProfileCWProxy {
  EdgeProfile name(String name);

  EdgeProfile description(String? description);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EdgeProfile(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EdgeProfile(...).copyWith(id: 12, name: "My name")
  /// ````
  EdgeProfile call({
    String name,
    String? description,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEdgeProfile.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEdgeProfile.copyWith.fieldName(...)`
class _$EdgeProfileCWProxyImpl implements _$EdgeProfileCWProxy {
  const _$EdgeProfileCWProxyImpl(this._value);

  final EdgeProfile _value;

  @override
  EdgeProfile name(String name) => this(name: name);

  @override
  EdgeProfile description(String? description) =>
      this(description: description);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EdgeProfile(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EdgeProfile(...).copyWith(id: 12, name: "My name")
  /// ````
  EdgeProfile call({
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
  }) {
    return EdgeProfile(
      id: _value.id,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
    );
  }
}

extension $EdgeProfileCopyWith on EdgeProfile {
  /// Returns a callable class that can be used as follows: `instanceOfEdgeProfile.copyWith(...)` or like so:`instanceOfEdgeProfile.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EdgeProfileCWProxy get copyWith => _$EdgeProfileCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `EdgeProfile(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EdgeProfile(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  EdgeProfile copyWithNull({
    bool description = false,
  }) {
    return EdgeProfile(
      id: id,
      name: name,
      description: description == true ? null : this.description,
    );
  }
}
