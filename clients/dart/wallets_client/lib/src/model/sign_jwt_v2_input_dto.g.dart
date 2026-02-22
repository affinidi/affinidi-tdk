// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_jwt_v2_input_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignJwtV2InputDto extends SignJwtV2InputDto {
  @override
  final JsonObject payload;

  factory _$SignJwtV2InputDto(
          [void Function(SignJwtV2InputDtoBuilder)? updates]) =>
      (SignJwtV2InputDtoBuilder()..update(updates))._build();

  _$SignJwtV2InputDto._({required this.payload}) : super._();
  @override
  SignJwtV2InputDto rebuild(void Function(SignJwtV2InputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignJwtV2InputDtoBuilder toBuilder() =>
      SignJwtV2InputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignJwtV2InputDto && payload == other.payload;
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
    return (newBuiltValueToStringHelper(r'SignJwtV2InputDto')
          ..add('payload', payload))
        .toString();
  }
}

class SignJwtV2InputDtoBuilder
    implements Builder<SignJwtV2InputDto, SignJwtV2InputDtoBuilder> {
  _$SignJwtV2InputDto? _$v;

  JsonObject? _payload;
  JsonObject? get payload => _$this._payload;
  set payload(JsonObject? payload) => _$this._payload = payload;

  SignJwtV2InputDtoBuilder() {
    SignJwtV2InputDto._defaults(this);
  }

  SignJwtV2InputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignJwtV2InputDto other) {
    _$v = other as _$SignJwtV2InputDto;
  }

  @override
  void update(void Function(SignJwtV2InputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignJwtV2InputDto build() => _build();

  _$SignJwtV2InputDto _build() {
    final _$result = _$v ??
        _$SignJwtV2InputDto._(
          payload: BuiltValueNullFieldError.checkNotNull(
              payload, r'SignJwtV2InputDto', 'payload'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
