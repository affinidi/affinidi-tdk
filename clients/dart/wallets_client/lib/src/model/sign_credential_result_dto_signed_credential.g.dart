// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credential_result_dto_signed_credential.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignCredentialResultDtoSignedCredential
    extends SignCredentialResultDtoSignedCredential {
  @override
  final OneOf oneOf;

  factory _$SignCredentialResultDtoSignedCredential(
          [void Function(SignCredentialResultDtoSignedCredentialBuilder)?
              updates]) =>
      (new SignCredentialResultDtoSignedCredentialBuilder()..update(updates))
          ._build();

  _$SignCredentialResultDtoSignedCredential._({required this.oneOf})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'SignCredentialResultDtoSignedCredential', 'oneOf');
  }

  @override
  SignCredentialResultDtoSignedCredential rebuild(
          void Function(SignCredentialResultDtoSignedCredentialBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredentialResultDtoSignedCredentialBuilder toBuilder() =>
      new SignCredentialResultDtoSignedCredentialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignCredentialResultDtoSignedCredential &&
        oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(
            r'SignCredentialResultDtoSignedCredential')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class SignCredentialResultDtoSignedCredentialBuilder
    implements
        Builder<SignCredentialResultDtoSignedCredential,
            SignCredentialResultDtoSignedCredentialBuilder> {
  _$SignCredentialResultDtoSignedCredential? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  SignCredentialResultDtoSignedCredentialBuilder() {
    SignCredentialResultDtoSignedCredential._defaults(this);
  }

  SignCredentialResultDtoSignedCredentialBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignCredentialResultDtoSignedCredential other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignCredentialResultDtoSignedCredential;
  }

  @override
  void update(
      void Function(SignCredentialResultDtoSignedCredentialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignCredentialResultDtoSignedCredential build() => _build();

  _$SignCredentialResultDtoSignedCredential _build() {
    final _$result = _$v ??
        new _$SignCredentialResultDtoSignedCredential._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'SignCredentialResultDtoSignedCredential', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
