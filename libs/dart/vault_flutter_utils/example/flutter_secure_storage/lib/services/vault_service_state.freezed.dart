// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vault_service_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VaultServiceState {
  String? get error => throw _privateConstructorUsedError;
  Vault? get vault => throw _privateConstructorUsedError;

  /// Create a copy of VaultServiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VaultServiceStateCopyWith<VaultServiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultServiceStateCopyWith<$Res> {
  factory $VaultServiceStateCopyWith(
          VaultServiceState value, $Res Function(VaultServiceState) then) =
      _$VaultServiceStateCopyWithImpl<$Res, VaultServiceState>;
  @useResult
  $Res call({String? error, Vault? vault});
}

/// @nodoc
class _$VaultServiceStateCopyWithImpl<$Res, $Val extends VaultServiceState>
    implements $VaultServiceStateCopyWith<$Res> {
  _$VaultServiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VaultServiceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? vault = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      vault: freezed == vault
          ? _value.vault
          : vault // ignore: cast_nullable_to_non_nullable
              as Vault?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VaultServiceStateImplCopyWith<$Res>
    implements $VaultServiceStateCopyWith<$Res> {
  factory _$$VaultServiceStateImplCopyWith(_$VaultServiceStateImpl value,
          $Res Function(_$VaultServiceStateImpl) then) =
      __$$VaultServiceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, Vault? vault});
}

/// @nodoc
class __$$VaultServiceStateImplCopyWithImpl<$Res>
    extends _$VaultServiceStateCopyWithImpl<$Res, _$VaultServiceStateImpl>
    implements _$$VaultServiceStateImplCopyWith<$Res> {
  __$$VaultServiceStateImplCopyWithImpl(_$VaultServiceStateImpl _value,
      $Res Function(_$VaultServiceStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VaultServiceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? vault = freezed,
  }) {
    return _then(_$VaultServiceStateImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      vault: freezed == vault
          ? _value.vault
          : vault // ignore: cast_nullable_to_non_nullable
              as Vault?,
    ));
  }
}

/// @nodoc

class _$VaultServiceStateImpl implements _VaultServiceState {
  _$VaultServiceStateImpl({this.error, this.vault});

  @override
  final String? error;
  @override
  final Vault? vault;

  @override
  String toString() {
    return 'VaultServiceState(error: $error, vault: $vault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VaultServiceStateImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.vault, vault) || other.vault == vault));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, vault);

  /// Create a copy of VaultServiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VaultServiceStateImplCopyWith<_$VaultServiceStateImpl> get copyWith =>
      __$$VaultServiceStateImplCopyWithImpl<_$VaultServiceStateImpl>(
          this, _$identity);
}

abstract class _VaultServiceState implements VaultServiceState {
  factory _VaultServiceState({final String? error, final Vault? vault}) =
      _$VaultServiceStateImpl;

  @override
  String? get error;
  @override
  Vault? get vault;

  /// Create a copy of VaultServiceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VaultServiceStateImplCopyWith<_$VaultServiceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
