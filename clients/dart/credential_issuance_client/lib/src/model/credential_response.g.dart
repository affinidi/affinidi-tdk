// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialResponse extends CredentialResponse {
  @override
  final OneOf oneOf;

  factory _$CredentialResponse(
          [void Function(CredentialResponseBuilder)? updates]) =>
      (new CredentialResponseBuilder()..update(updates))._build();

  _$CredentialResponse._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'CredentialResponse', 'oneOf');
  }

  @override
  CredentialResponse rebuild(
          void Function(CredentialResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialResponseBuilder toBuilder() =>
      new CredentialResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialResponse && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CredentialResponse')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class CredentialResponseBuilder
    implements Builder<CredentialResponse, CredentialResponseBuilder> {
  _$CredentialResponse? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  CredentialResponseBuilder() {
    CredentialResponse._defaults(this);
  }

  CredentialResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CredentialResponse;
  }

  @override
  void update(void Function(CredentialResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialResponse build() => _build();

  _$CredentialResponse _build() {
    final _$result = _$v ??
        new _$CredentialResponse._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'CredentialResponse', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
