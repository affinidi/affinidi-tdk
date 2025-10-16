// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_wallet_v2_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateWalletV2Response extends CreateWalletV2Response {
  @override
  final WalletV2Dto? wallet;

  factory _$CreateWalletV2Response(
          [void Function(CreateWalletV2ResponseBuilder)? updates]) =>
      (CreateWalletV2ResponseBuilder()..update(updates))._build();

  _$CreateWalletV2Response._({this.wallet}) : super._();
  @override
  CreateWalletV2Response rebuild(
          void Function(CreateWalletV2ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateWalletV2ResponseBuilder toBuilder() =>
      CreateWalletV2ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateWalletV2Response && wallet == other.wallet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, wallet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateWalletV2Response')
          ..add('wallet', wallet))
        .toString();
  }
}

class CreateWalletV2ResponseBuilder
    implements Builder<CreateWalletV2Response, CreateWalletV2ResponseBuilder> {
  _$CreateWalletV2Response? _$v;

  WalletV2DtoBuilder? _wallet;
  WalletV2DtoBuilder get wallet => _$this._wallet ??= WalletV2DtoBuilder();
  set wallet(WalletV2DtoBuilder? wallet) => _$this._wallet = wallet;

  CreateWalletV2ResponseBuilder() {
    CreateWalletV2Response._defaults(this);
  }

  CreateWalletV2ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _wallet = $v.wallet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateWalletV2Response other) {
    _$v = other as _$CreateWalletV2Response;
  }

  @override
  void update(void Function(CreateWalletV2ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateWalletV2Response build() => _build();

  _$CreateWalletV2Response _build() {
    _$CreateWalletV2Response _$result;
    try {
      _$result = _$v ??
          _$CreateWalletV2Response._(
            wallet: _wallet?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'wallet';
        _wallet?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateWalletV2Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
