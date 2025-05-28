// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iota_exchange_credentials.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IotaExchangeCredentials extends IotaExchangeCredentials {
  @override
  final String assertion;

  factory _$IotaExchangeCredentials(
          [void Function(IotaExchangeCredentialsBuilder)? updates]) =>
      (IotaExchangeCredentialsBuilder()..update(updates))._build();

  _$IotaExchangeCredentials._({required this.assertion}) : super._();
  @override
  IotaExchangeCredentials rebuild(
          void Function(IotaExchangeCredentialsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IotaExchangeCredentialsBuilder toBuilder() =>
      IotaExchangeCredentialsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IotaExchangeCredentials && assertion == other.assertion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assertion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IotaExchangeCredentials')
          ..add('assertion', assertion))
        .toString();
  }
}

class IotaExchangeCredentialsBuilder
    implements
        Builder<IotaExchangeCredentials, IotaExchangeCredentialsBuilder> {
  _$IotaExchangeCredentials? _$v;

  String? _assertion;
  String? get assertion => _$this._assertion;
  set assertion(String? assertion) => _$this._assertion = assertion;

  IotaExchangeCredentialsBuilder() {
    IotaExchangeCredentials._defaults(this);
  }

  IotaExchangeCredentialsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assertion = $v.assertion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IotaExchangeCredentials other) {
    _$v = other as _$IotaExchangeCredentials;
  }

  @override
  void update(void Function(IotaExchangeCredentialsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IotaExchangeCredentials build() => _build();

  _$IotaExchangeCredentials _build() {
    final _$result = _$v ??
        _$IotaExchangeCredentials._(
          assertion: BuiltValueNullFieldError.checkNotNull(
              assertion, r'IotaExchangeCredentials', 'assertion'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
