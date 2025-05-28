// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_jwt_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidateJwtOutput extends ValidateJwtOutput {
  @override
  final bool isValid;
  @override
  final JsonObject payload;

  factory _$ValidateJwtOutput(
          [void Function(ValidateJwtOutputBuilder)? updates]) =>
      (ValidateJwtOutputBuilder()..update(updates))._build();

  _$ValidateJwtOutput._({required this.isValid, required this.payload})
      : super._();
  @override
  ValidateJwtOutput rebuild(void Function(ValidateJwtOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidateJwtOutputBuilder toBuilder() =>
      ValidateJwtOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidateJwtOutput &&
        isValid == other.isValid &&
        payload == other.payload;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isValid.hashCode);
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ValidateJwtOutput')
          ..add('isValid', isValid)
          ..add('payload', payload))
        .toString();
  }
}

class ValidateJwtOutputBuilder
    implements Builder<ValidateJwtOutput, ValidateJwtOutputBuilder> {
  _$ValidateJwtOutput? _$v;

  bool? _isValid;
  bool? get isValid => _$this._isValid;
  set isValid(bool? isValid) => _$this._isValid = isValid;

  JsonObject? _payload;
  JsonObject? get payload => _$this._payload;
  set payload(JsonObject? payload) => _$this._payload = payload;

  ValidateJwtOutputBuilder() {
    ValidateJwtOutput._defaults(this);
  }

  ValidateJwtOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isValid = $v.isValid;
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidateJwtOutput other) {
    _$v = other as _$ValidateJwtOutput;
  }

  @override
  void update(void Function(ValidateJwtOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidateJwtOutput build() => _build();

  _$ValidateJwtOutput _build() {
    final _$result = _$v ??
        _$ValidateJwtOutput._(
          isValid: BuiltValueNullFieldError.checkNotNull(
              isValid, r'ValidateJwtOutput', 'isValid'),
          payload: BuiltValueNullFieldError.checkNotNull(
              payload, r'ValidateJwtOutput', 'payload'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
