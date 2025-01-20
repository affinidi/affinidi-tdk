// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_jwt_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignJwtToken extends SignJwtToken {
  @override
  final JsonObject header;
  @override
  final JsonObject payload;

  factory _$SignJwtToken([void Function(SignJwtTokenBuilder)? updates]) =>
      (new SignJwtTokenBuilder()..update(updates))._build();

  _$SignJwtToken._({required this.header, required this.payload}) : super._() {
    BuiltValueNullFieldError.checkNotNull(header, r'SignJwtToken', 'header');
    BuiltValueNullFieldError.checkNotNull(payload, r'SignJwtToken', 'payload');
  }

  @override
  SignJwtToken rebuild(void Function(SignJwtTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignJwtTokenBuilder toBuilder() => new SignJwtTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignJwtToken &&
        header == other.header &&
        payload == other.payload;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, header.hashCode);
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignJwtToken')
          ..add('header', header)
          ..add('payload', payload))
        .toString();
  }
}

class SignJwtTokenBuilder
    implements Builder<SignJwtToken, SignJwtTokenBuilder> {
  _$SignJwtToken? _$v;

  JsonObject? _header;
  JsonObject? get header => _$this._header;
  set header(JsonObject? header) => _$this._header = header;

  JsonObject? _payload;
  JsonObject? get payload => _$this._payload;
  set payload(JsonObject? payload) => _$this._payload = payload;

  SignJwtTokenBuilder() {
    SignJwtToken._defaults(this);
  }

  SignJwtTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _header = $v.header;
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignJwtToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignJwtToken;
  }

  @override
  void update(void Function(SignJwtTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignJwtToken build() => _build();

  _$SignJwtToken _build() {
    final _$result = _$v ??
        new _$SignJwtToken._(
          header: BuiltValueNullFieldError.checkNotNull(
              header, r'SignJwtToken', 'header'),
          payload: BuiltValueNullFieldError.checkNotNull(
              payload, r'SignJwtToken', 'payload'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
