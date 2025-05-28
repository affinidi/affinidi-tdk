// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_revocation_credential_status_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRevocationCredentialStatusOK
    extends GetRevocationCredentialStatusOK {
  @override
  final JsonObject revocationListCredential;

  factory _$GetRevocationCredentialStatusOK(
          [void Function(GetRevocationCredentialStatusOKBuilder)? updates]) =>
      (GetRevocationCredentialStatusOKBuilder()..update(updates))._build();

  _$GetRevocationCredentialStatusOK._({required this.revocationListCredential})
      : super._();
  @override
  GetRevocationCredentialStatusOK rebuild(
          void Function(GetRevocationCredentialStatusOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRevocationCredentialStatusOKBuilder toBuilder() =>
      GetRevocationCredentialStatusOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRevocationCredentialStatusOK &&
        revocationListCredential == other.revocationListCredential;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, revocationListCredential.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetRevocationCredentialStatusOK')
          ..add('revocationListCredential', revocationListCredential))
        .toString();
  }
}

class GetRevocationCredentialStatusOKBuilder
    implements
        Builder<GetRevocationCredentialStatusOK,
            GetRevocationCredentialStatusOKBuilder> {
  _$GetRevocationCredentialStatusOK? _$v;

  JsonObject? _revocationListCredential;
  JsonObject? get revocationListCredential => _$this._revocationListCredential;
  set revocationListCredential(JsonObject? revocationListCredential) =>
      _$this._revocationListCredential = revocationListCredential;

  GetRevocationCredentialStatusOKBuilder() {
    GetRevocationCredentialStatusOK._defaults(this);
  }

  GetRevocationCredentialStatusOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _revocationListCredential = $v.revocationListCredential;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRevocationCredentialStatusOK other) {
    _$v = other as _$GetRevocationCredentialStatusOK;
  }

  @override
  void update(void Function(GetRevocationCredentialStatusOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRevocationCredentialStatusOK build() => _build();

  _$GetRevocationCredentialStatusOK _build() {
    final _$result = _$v ??
        _$GetRevocationCredentialStatusOK._(
          revocationListCredential: BuiltValueNullFieldError.checkNotNull(
              revocationListCredential,
              r'GetRevocationCredentialStatusOK',
              'revocationListCredential'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
