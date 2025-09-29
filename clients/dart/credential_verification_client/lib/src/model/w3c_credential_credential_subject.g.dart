// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'w3c_credential_credential_subject.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$W3cCredentialCredentialSubject extends W3cCredentialCredentialSubject {
  @override
  final OneOf oneOf;

  factory _$W3cCredentialCredentialSubject(
          [void Function(W3cCredentialCredentialSubjectBuilder)? updates]) =>
      (W3cCredentialCredentialSubjectBuilder()..update(updates))._build();

  _$W3cCredentialCredentialSubject._({required this.oneOf}) : super._();
  @override
  W3cCredentialCredentialSubject rebuild(
          void Function(W3cCredentialCredentialSubjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  W3cCredentialCredentialSubjectBuilder toBuilder() =>
      W3cCredentialCredentialSubjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is W3cCredentialCredentialSubject && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'W3cCredentialCredentialSubject')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class W3cCredentialCredentialSubjectBuilder
    implements
        Builder<W3cCredentialCredentialSubject,
            W3cCredentialCredentialSubjectBuilder> {
  _$W3cCredentialCredentialSubject? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  W3cCredentialCredentialSubjectBuilder() {
    W3cCredentialCredentialSubject._defaults(this);
  }

  W3cCredentialCredentialSubjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(W3cCredentialCredentialSubject other) {
    _$v = other as _$W3cCredentialCredentialSubject;
  }

  @override
  void update(void Function(W3cCredentialCredentialSubjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  W3cCredentialCredentialSubject build() => _build();

  _$W3cCredentialCredentialSubject _build() {
    final _$result = _$v ??
        _$W3cCredentialCredentialSubject._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'W3cCredentialCredentialSubject', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
