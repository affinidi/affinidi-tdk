// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'w3c_credential_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$W3cCredentialStatus extends W3cCredentialStatus {
  @override
  final String id;
  @override
  final String type;
  @override
  final String revocationListIndex;
  @override
  final String revocationListCredential;

  factory _$W3cCredentialStatus(
          [void Function(W3cCredentialStatusBuilder)? updates]) =>
      (new W3cCredentialStatusBuilder()..update(updates))._build();

  _$W3cCredentialStatus._(
      {required this.id,
      required this.type,
      required this.revocationListIndex,
      required this.revocationListCredential})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'W3cCredentialStatus', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'W3cCredentialStatus', 'type');
    BuiltValueNullFieldError.checkNotNull(
        revocationListIndex, r'W3cCredentialStatus', 'revocationListIndex');
    BuiltValueNullFieldError.checkNotNull(revocationListCredential,
        r'W3cCredentialStatus', 'revocationListCredential');
  }

  @override
  W3cCredentialStatus rebuild(
          void Function(W3cCredentialStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  W3cCredentialStatusBuilder toBuilder() =>
      new W3cCredentialStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is W3cCredentialStatus &&
        id == other.id &&
        type == other.type &&
        revocationListIndex == other.revocationListIndex &&
        revocationListCredential == other.revocationListCredential;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, revocationListIndex.hashCode);
    _$hash = $jc(_$hash, revocationListCredential.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'W3cCredentialStatus')
          ..add('id', id)
          ..add('type', type)
          ..add('revocationListIndex', revocationListIndex)
          ..add('revocationListCredential', revocationListCredential))
        .toString();
  }
}

class W3cCredentialStatusBuilder
    implements Builder<W3cCredentialStatus, W3cCredentialStatusBuilder> {
  _$W3cCredentialStatus? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _revocationListIndex;
  String? get revocationListIndex => _$this._revocationListIndex;
  set revocationListIndex(String? revocationListIndex) =>
      _$this._revocationListIndex = revocationListIndex;

  String? _revocationListCredential;
  String? get revocationListCredential => _$this._revocationListCredential;
  set revocationListCredential(String? revocationListCredential) =>
      _$this._revocationListCredential = revocationListCredential;

  W3cCredentialStatusBuilder() {
    W3cCredentialStatus._defaults(this);
  }

  W3cCredentialStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _revocationListIndex = $v.revocationListIndex;
      _revocationListCredential = $v.revocationListCredential;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(W3cCredentialStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$W3cCredentialStatus;
  }

  @override
  void update(void Function(W3cCredentialStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  W3cCredentialStatus build() => _build();

  _$W3cCredentialStatus _build() {
    final _$result = _$v ??
        new _$W3cCredentialStatus._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'W3cCredentialStatus', 'id'),
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'W3cCredentialStatus', 'type'),
          revocationListIndex: BuiltValueNullFieldError.checkNotNull(
              revocationListIndex,
              r'W3cCredentialStatus',
              'revocationListIndex'),
          revocationListCredential: BuiltValueNullFieldError.checkNotNull(
              revocationListCredential,
              r'W3cCredentialStatus',
              'revocationListCredential'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
