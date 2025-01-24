// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claimed_credential_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClaimedCredentialListResponse extends ClaimedCredentialListResponse {
  @override
  final BuiltList<BuiltMap<String, JsonObject?>>? credentials;
  @override
  final String? next;

  factory _$ClaimedCredentialListResponse(
          [void Function(ClaimedCredentialListResponseBuilder)? updates]) =>
      (new ClaimedCredentialListResponseBuilder()..update(updates))._build();

  _$ClaimedCredentialListResponse._({this.credentials, this.next}) : super._();

  @override
  ClaimedCredentialListResponse rebuild(
          void Function(ClaimedCredentialListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClaimedCredentialListResponseBuilder toBuilder() =>
      new ClaimedCredentialListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClaimedCredentialListResponse &&
        credentials == other.credentials &&
        next == other.next;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credentials.hashCode);
    _$hash = $jc(_$hash, next.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClaimedCredentialListResponse')
          ..add('credentials', credentials)
          ..add('next', next))
        .toString();
  }
}

class ClaimedCredentialListResponseBuilder
    implements
        Builder<ClaimedCredentialListResponse,
            ClaimedCredentialListResponseBuilder> {
  _$ClaimedCredentialListResponse? _$v;

  ListBuilder<BuiltMap<String, JsonObject?>>? _credentials;
  ListBuilder<BuiltMap<String, JsonObject?>> get credentials =>
      _$this._credentials ??= new ListBuilder<BuiltMap<String, JsonObject?>>();
  set credentials(ListBuilder<BuiltMap<String, JsonObject?>>? credentials) =>
      _$this._credentials = credentials;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  ClaimedCredentialListResponseBuilder() {
    ClaimedCredentialListResponse._defaults(this);
  }

  ClaimedCredentialListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credentials = $v.credentials?.toBuilder();
      _next = $v.next;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClaimedCredentialListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClaimedCredentialListResponse;
  }

  @override
  void update(void Function(ClaimedCredentialListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClaimedCredentialListResponse build() => _build();

  _$ClaimedCredentialListResponse _build() {
    _$ClaimedCredentialListResponse _$result;
    try {
      _$result = _$v ??
          new _$ClaimedCredentialListResponse._(
            credentials: _credentials?.build(),
            next: next,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credentials';
        _credentials?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ClaimedCredentialListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
