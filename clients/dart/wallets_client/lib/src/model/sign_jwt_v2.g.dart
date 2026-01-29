// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_jwt_v2.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignJwtV2 extends SignJwtV2 {
  @override
  final JsonObject payload;

  factory _$SignJwtV2([void Function(SignJwtV2Builder)? updates]) =>
      (SignJwtV2Builder()..update(updates))._build();

  _$SignJwtV2._({required this.payload}) : super._();
  @override
  SignJwtV2 rebuild(void Function(SignJwtV2Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignJwtV2Builder toBuilder() => SignJwtV2Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignJwtV2 && payload == other.payload;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignJwtV2')..add('payload', payload))
        .toString();
  }
}

class SignJwtV2Builder implements Builder<SignJwtV2, SignJwtV2Builder> {
  _$SignJwtV2? _$v;

  JsonObject? _payload;
  JsonObject? get payload => _$this._payload;
  set payload(JsonObject? payload) => _$this._payload = payload;

  SignJwtV2Builder() {
    SignJwtV2._defaults(this);
  }

  SignJwtV2Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignJwtV2 other) {
    _$v = other as _$SignJwtV2;
  }

  @override
  void update(void Function(SignJwtV2Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignJwtV2 build() => _build();

  _$SignJwtV2 _build() {
    final _$result = _$v ??
        _$SignJwtV2._(
          payload: BuiltValueNullFieldError.checkNotNull(
              payload, r'SignJwtV2', 'payload'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
