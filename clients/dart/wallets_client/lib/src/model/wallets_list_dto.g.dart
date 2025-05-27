// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallets_list_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WalletsListDto extends WalletsListDto {
  @override
  final BuiltList<WalletDto>? wallets;

  factory _$WalletsListDto([void Function(WalletsListDtoBuilder)? updates]) =>
      (WalletsListDtoBuilder()..update(updates))._build();

  _$WalletsListDto._({this.wallets}) : super._();
  @override
  WalletsListDto rebuild(void Function(WalletsListDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WalletsListDtoBuilder toBuilder() => WalletsListDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WalletsListDto && wallets == other.wallets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, wallets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WalletsListDto')
          ..add('wallets', wallets))
        .toString();
  }
}

class WalletsListDtoBuilder
    implements Builder<WalletsListDto, WalletsListDtoBuilder> {
  _$WalletsListDto? _$v;

  ListBuilder<WalletDto>? _wallets;
  ListBuilder<WalletDto> get wallets =>
      _$this._wallets ??= ListBuilder<WalletDto>();
  set wallets(ListBuilder<WalletDto>? wallets) => _$this._wallets = wallets;

  WalletsListDtoBuilder() {
    WalletsListDto._defaults(this);
  }

  WalletsListDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _wallets = $v.wallets?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WalletsListDto other) {
    _$v = other as _$WalletsListDto;
  }

  @override
  void update(void Function(WalletsListDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WalletsListDto build() => _build();

  _$WalletsListDto _build() {
    _$WalletsListDto _$result;
    try {
      _$result = _$v ??
          _$WalletsListDto._(
            wallets: _wallets?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'wallets';
        _wallets?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WalletsListDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
