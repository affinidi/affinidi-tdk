// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_exchange_credentials.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AwsExchangeCredentials extends AwsExchangeCredentials {
  @override
  final String assertion;

  factory _$AwsExchangeCredentials(
          [void Function(AwsExchangeCredentialsBuilder)? updates]) =>
      (AwsExchangeCredentialsBuilder()..update(updates))._build();

  _$AwsExchangeCredentials._({required this.assertion}) : super._();
  @override
  AwsExchangeCredentials rebuild(
          void Function(AwsExchangeCredentialsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AwsExchangeCredentialsBuilder toBuilder() =>
      AwsExchangeCredentialsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AwsExchangeCredentials && assertion == other.assertion;
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
    return (newBuiltValueToStringHelper(r'AwsExchangeCredentials')
          ..add('assertion', assertion))
        .toString();
  }
}

class AwsExchangeCredentialsBuilder
    implements Builder<AwsExchangeCredentials, AwsExchangeCredentialsBuilder> {
  _$AwsExchangeCredentials? _$v;

  String? _assertion;
  String? get assertion => _$this._assertion;
  set assertion(String? assertion) => _$this._assertion = assertion;

  AwsExchangeCredentialsBuilder() {
    AwsExchangeCredentials._defaults(this);
  }

  AwsExchangeCredentialsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assertion = $v.assertion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AwsExchangeCredentials other) {
    _$v = other as _$AwsExchangeCredentials;
  }

  @override
  void update(void Function(AwsExchangeCredentialsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AwsExchangeCredentials build() => _build();

  _$AwsExchangeCredentials _build() {
    final _$result = _$v ??
        _$AwsExchangeCredentials._(
          assertion: BuiltValueNullFieldError.checkNotNull(
              assertion, r'AwsExchangeCredentials', 'assertion'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
