// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claimed_credential_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClaimedCredentialResponse extends ClaimedCredentialResponse {
  @override
  final BuiltMap<String, JsonObject?>? credential;

  factory _$ClaimedCredentialResponse(
          [void Function(ClaimedCredentialResponseBuilder)? updates]) =>
      (new ClaimedCredentialResponseBuilder()..update(updates))._build();

  _$ClaimedCredentialResponse._({this.credential}) : super._();

  @override
  ClaimedCredentialResponse rebuild(
          void Function(ClaimedCredentialResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClaimedCredentialResponseBuilder toBuilder() =>
      new ClaimedCredentialResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClaimedCredentialResponse && credential == other.credential;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credential.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClaimedCredentialResponse')
          ..add('credential', credential))
        .toString();
  }
}

class ClaimedCredentialResponseBuilder
    implements
        Builder<ClaimedCredentialResponse, ClaimedCredentialResponseBuilder> {
  _$ClaimedCredentialResponse? _$v;

  MapBuilder<String, JsonObject?>? _credential;
  MapBuilder<String, JsonObject?> get credential =>
      _$this._credential ??= new MapBuilder<String, JsonObject?>();
  set credential(MapBuilder<String, JsonObject?>? credential) =>
      _$this._credential = credential;

  ClaimedCredentialResponseBuilder() {
    ClaimedCredentialResponse._defaults(this);
  }

  ClaimedCredentialResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credential = $v.credential?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClaimedCredentialResponse other) {
    ArgumentError.checkNotNull(other, 'other');
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
          new _$ClaimedCredentialResponse._(
            credential: _credential?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credential';
        _credential?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ClaimedCredentialResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
