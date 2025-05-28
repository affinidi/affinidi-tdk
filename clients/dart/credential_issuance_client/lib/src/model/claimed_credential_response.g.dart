// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claimed_credential_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClaimedCredentialResponse extends ClaimedCredentialResponse {
  @override
  final BuiltMap<String, JsonObject?>? credential;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>>? credentials;

  factory _$ClaimedCredentialResponse(
          [void Function(ClaimedCredentialResponseBuilder)? updates]) =>
      (ClaimedCredentialResponseBuilder()..update(updates))._build();

  _$ClaimedCredentialResponse._({this.credential, this.credentials})
      : super._();
  @override
  ClaimedCredentialResponse rebuild(
          void Function(ClaimedCredentialResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClaimedCredentialResponseBuilder toBuilder() =>
      ClaimedCredentialResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClaimedCredentialResponse &&
        credential == other.credential &&
        credentials == other.credentials;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credential.hashCode);
    _$hash = $jc(_$hash, credentials.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClaimedCredentialResponse')
          ..add('credential', credential)
          ..add('credentials', credentials))
        .toString();
  }
}

class ClaimedCredentialResponseBuilder
    implements
        Builder<ClaimedCredentialResponse, ClaimedCredentialResponseBuilder> {
  _$ClaimedCredentialResponse? _$v;

  MapBuilder<String, JsonObject?>? _credential;
  MapBuilder<String, JsonObject?> get credential =>
      _$this._credential ??= MapBuilder<String, JsonObject?>();
  set credential(MapBuilder<String, JsonObject?>? credential) =>
      _$this._credential = credential;

  ListBuilder<BuiltMap<String, JsonObject?>>? _credentials;
  ListBuilder<BuiltMap<String, JsonObject?>> get credentials =>
      _$this._credentials ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set credentials(ListBuilder<BuiltMap<String, JsonObject?>>? credentials) =>
      _$this._credentials = credentials;

  ClaimedCredentialResponseBuilder() {
    ClaimedCredentialResponse._defaults(this);
  }

  ClaimedCredentialResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credential = $v.credential?.toBuilder();
      _credentials = $v.credentials?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClaimedCredentialResponse other) {
    _$v = other as _$ClaimedCredentialResponse;
  }

  @override
  void update(void Function(ClaimedCredentialResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClaimedCredentialResponse build() => _build();

  _$ClaimedCredentialResponse _build() {
    _$ClaimedCredentialResponse _$result;
    try {
      _$result = _$v ??
          _$ClaimedCredentialResponse._(
            credential: _credential?.build(),
            credentials: _credentials?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credential';
        _credential?.build();
        _$failedField = 'credentials';
        _credentials?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ClaimedCredentialResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
