// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'whoami_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WhoamiDto extends WhoamiDto {
  @override
  final String principalId;
  @override
  final String principalType;

  factory _$WhoamiDto([void Function(WhoamiDtoBuilder)? updates]) =>
      (new WhoamiDtoBuilder()..update(updates))._build();

  _$WhoamiDto._({required this.principalId, required this.principalType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        principalId, r'WhoamiDto', 'principalId');
    BuiltValueNullFieldError.checkNotNull(
        principalType, r'WhoamiDto', 'principalType');
  }

  @override
  WhoamiDto rebuild(void Function(WhoamiDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WhoamiDtoBuilder toBuilder() => new WhoamiDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WhoamiDto &&
        principalId == other.principalId &&
        principalType == other.principalType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, principalId.hashCode);
    _$hash = $jc(_$hash, principalType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WhoamiDto')
          ..add('principalId', principalId)
          ..add('principalType', principalType))
        .toString();
  }
}

class WhoamiDtoBuilder implements Builder<WhoamiDto, WhoamiDtoBuilder> {
  _$WhoamiDto? _$v;

  String? _principalId;
  String? get principalId => _$this._principalId;
  set principalId(String? principalId) => _$this._principalId = principalId;

  String? _principalType;
  String? get principalType => _$this._principalType;
  set principalType(String? principalType) =>
      _$this._principalType = principalType;

  WhoamiDtoBuilder() {
    WhoamiDto._defaults(this);
  }

  WhoamiDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _principalId = $v.principalId;
      _principalType = $v.principalType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WhoamiDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WhoamiDto;
  }

  @override
  void update(void Function(WhoamiDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WhoamiDto build() => _build();

  _$WhoamiDto _build() {
    final _$result = _$v ??
        new _$WhoamiDto._(
          principalId: BuiltValueNullFieldError.checkNotNull(
              principalId, r'WhoamiDto', 'principalId'),
          principalType: BuiltValueNullFieldError.checkNotNull(
              principalType, r'WhoamiDto', 'principalType'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
