// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_wallet_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateWalletResponse extends CreateWalletResponse {
  @override
  final WalletDto? wallet;

  factory _$CreateWalletResponse(
          [void Function(CreateWalletResponseBuilder)? updates]) =>
      (new CreateWalletResponseBuilder()..update(updates))._build();

  _$CreateWalletResponse._({this.wallet}) : super._();

  @override
  CreateWalletResponse rebuild(
          void Function(CreateWalletResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateWalletResponseBuilder toBuilder() =>
      new CreateWalletResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateWalletResponse && wallet == other.wallet;
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
    return (newBuiltValueToStringHelper(r'CreateWalletResponse')
          ..add('wallet', wallet))
        .toString();
  }
}

class CreateWalletResponseBuilder
    implements Builder<CreateWalletResponse, CreateWalletResponseBuilder> {
  _$CreateWalletResponse? _$v;

  WalletDtoBuilder? _wallet;
  WalletDtoBuilder get wallet => _$this._wallet ??= new WalletDtoBuilder();
  set wallet(WalletDtoBuilder? wallet) => _$this._wallet = wallet;

  CreateWalletResponseBuilder() {
    CreateWalletResponse._defaults(this);
  }

  CreateWalletResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _wallet = $v.wallet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateWalletResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateWalletResponse;
  }

  @override
  void update(void Function(CreateWalletResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateWalletResponse build() => _build();

  _$CreateWalletResponse _build() {
    _$CreateWalletResponse _$result;
    try {
      _$result = _$v ??
          new _$CreateWalletResponse._(
            wallet: _wallet?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'wallet';
        _wallet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateWalletResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
