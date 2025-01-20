// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_web_key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonWebKey extends JsonWebKey {
  @override
  final BuiltList<JsonWebKeyKeysInner>? keys;

  factory _$JsonWebKey([void Function(JsonWebKeyBuilder)? updates]) =>
      (new JsonWebKeyBuilder()..update(updates))._build();

  _$JsonWebKey._({this.keys}) : super._();

  @override
  JsonWebKey rebuild(void Function(JsonWebKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonWebKeyBuilder toBuilder() => new JsonWebKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonWebKey && keys == other.keys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keys.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JsonWebKey')..add('keys', keys))
        .toString();
  }
}

class JsonWebKeyBuilder implements Builder<JsonWebKey, JsonWebKeyBuilder> {
  _$JsonWebKey? _$v;

  ListBuilder<JsonWebKeyKeysInner>? _keys;
  ListBuilder<JsonWebKeyKeysInner> get keys =>
      _$this._keys ??= new ListBuilder<JsonWebKeyKeysInner>();
  set keys(ListBuilder<JsonWebKeyKeysInner>? keys) => _$this._keys = keys;

  JsonWebKeyBuilder() {
    JsonWebKey._defaults(this);
  }

  JsonWebKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keys = $v.keys?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonWebKey other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonWebKey;
  }

  @override
  void update(void Function(JsonWebKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JsonWebKey build() => _build();

  _$JsonWebKey _build() {
    _$JsonWebKey _$result;
    try {
      _$result = _$v ??
          new _$JsonWebKey._(
            keys: _keys?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keys';
        _keys?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'JsonWebKey', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
