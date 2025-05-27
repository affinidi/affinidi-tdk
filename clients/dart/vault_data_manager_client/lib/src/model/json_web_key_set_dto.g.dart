// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_web_key_set_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonWebKeySetDto extends JsonWebKeySetDto {
  @override
  final BuiltList<JsonWebKeyDto> keys;

  factory _$JsonWebKeySetDto(
          [void Function(JsonWebKeySetDtoBuilder)? updates]) =>
      (JsonWebKeySetDtoBuilder()..update(updates))._build();

  _$JsonWebKeySetDto._({required this.keys}) : super._();
  @override
  JsonWebKeySetDto rebuild(void Function(JsonWebKeySetDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonWebKeySetDtoBuilder toBuilder() =>
      JsonWebKeySetDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonWebKeySetDto && keys == other.keys;
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
    return (newBuiltValueToStringHelper(r'JsonWebKeySetDto')..add('keys', keys))
        .toString();
  }
}

class JsonWebKeySetDtoBuilder
    implements Builder<JsonWebKeySetDto, JsonWebKeySetDtoBuilder> {
  _$JsonWebKeySetDto? _$v;

  ListBuilder<JsonWebKeyDto>? _keys;
  ListBuilder<JsonWebKeyDto> get keys =>
      _$this._keys ??= ListBuilder<JsonWebKeyDto>();
  set keys(ListBuilder<JsonWebKeyDto>? keys) => _$this._keys = keys;

  JsonWebKeySetDtoBuilder() {
    JsonWebKeySetDto._defaults(this);
  }

  JsonWebKeySetDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keys = $v.keys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonWebKeySetDto other) {
    _$v = other as _$JsonWebKeySetDto;
  }

  @override
  void update(void Function(JsonWebKeySetDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JsonWebKeySetDto build() => _build();

  _$JsonWebKeySetDto _build() {
    _$JsonWebKeySetDto _$result;
    try {
      _$result = _$v ??
          _$JsonWebKeySetDto._(
            keys: keys.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keys';
        keys.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'JsonWebKeySetDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
