// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_response_immediate_credential.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialResponseImmediateCredential
    extends CredentialResponseImmediateCredential {
  @override
  final OneOf oneOf;

  factory _$CredentialResponseImmediateCredential(
          [void Function(CredentialResponseImmediateCredentialBuilder)?
              updates]) =>
      (new CredentialResponseImmediateCredentialBuilder()..update(updates))
          ._build();

  _$CredentialResponseImmediateCredential._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'CredentialResponseImmediateCredential', 'oneOf');
  }

  @override
  CredentialResponseImmediateCredential rebuild(
          void Function(CredentialResponseImmediateCredentialBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialResponseImmediateCredentialBuilder toBuilder() =>
      new CredentialResponseImmediateCredentialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialResponseImmediateCredential &&
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
            r'CredentialResponseImmediateCredential')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class CredentialResponseImmediateCredentialBuilder
    implements
        Builder<CredentialResponseImmediateCredential,
            CredentialResponseImmediateCredentialBuilder> {
  _$CredentialResponseImmediateCredential? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  CredentialResponseImmediateCredentialBuilder() {
    CredentialResponseImmediateCredential._defaults(this);
  }

  CredentialResponseImmediateCredentialBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialResponseImmediateCredential other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CredentialResponseImmediateCredential;
  }

  @override
  void update(
      void Function(CredentialResponseImmediateCredentialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialResponseImmediateCredential build() => _build();

  _$CredentialResponseImmediateCredential _build() {
    final _$result = _$v ??
        new _$CredentialResponseImmediateCredential._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'CredentialResponseImmediateCredential', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
