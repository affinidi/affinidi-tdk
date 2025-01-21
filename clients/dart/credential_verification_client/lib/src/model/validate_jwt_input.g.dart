// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_jwt_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidateJwtInput extends ValidateJwtInput {
  @override
  final String token;

  factory _$ValidateJwtInput(
          [void Function(ValidateJwtInputBuilder)? updates]) =>
      (new ValidateJwtInputBuilder()..update(updates))._build();

  _$ValidateJwtInput._({required this.token}) : super._() {
    BuiltValueNullFieldError.checkNotNull(token, r'ValidateJwtInput', 'token');
  }

  @override
  ValidateJwtInput rebuild(void Function(ValidateJwtInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidateJwtInputBuilder toBuilder() =>
      new ValidateJwtInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidateJwtInput && token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ValidateJwtInput')
          ..add('token', token))
        .toString();
  }
}

class ValidateJwtInputBuilder
    implements Builder<ValidateJwtInput, ValidateJwtInputBuilder> {
  _$ValidateJwtInput? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  ValidateJwtInputBuilder() {
    ValidateJwtInput._defaults(this);
  }

  ValidateJwtInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidateJwtInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValidateJwtInput;
  }

  @override
  void update(void Function(ValidateJwtInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidateJwtInput build() => _build();

  _$ValidateJwtInput _build() {
    final _$result = _$v ??
        new _$ValidateJwtInput._(
          token: BuiltValueNullFieldError.checkNotNull(
              token, r'ValidateJwtInput', 'token'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
