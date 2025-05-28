// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode
    extends CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode {
  @override
  final String preAuthorizedCode;
  @override
  final CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode?
      txCode;

  factory _$CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode(
          [void Function(
                  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeBuilder)?
              updates]) =>
      (CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeBuilder()
            ..update(updates))
          ._build();

  _$CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode._(
      {required this.preAuthorizedCode, this.txCode})
      : super._();
  @override
  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode rebuild(
          void Function(
                  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeBuilder
      toBuilder() =>
          CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode &&
        preAuthorizedCode == other.preAuthorizedCode &&
        txCode == other.txCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, preAuthorizedCode.hashCode);
    _$hash = $jc(_$hash, txCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode')
          ..add('preAuthorizedCode', preAuthorizedCode)
          ..add('txCode', txCode))
        .toString();
  }
}

class CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeBuilder
    implements
        Builder<
            CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode,
            CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeBuilder> {
  _$CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode?
      _$v;

  String? _preAuthorizedCode;
  String? get preAuthorizedCode => _$this._preAuthorizedCode;
  set preAuthorizedCode(String? preAuthorizedCode) =>
      _$this._preAuthorizedCode = preAuthorizedCode;

  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCodeBuilder?
      _txCode;
  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCodeBuilder
      get txCode => _$this._txCode ??=
          CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCodeBuilder();
  set txCode(
          CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCodeBuilder?
              txCode) =>
      _$this._txCode = txCode;

  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeBuilder() {
    CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode
        ._defaults(this);
  }

  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _preAuthorizedCode = $v.preAuthorizedCode;
      _txCode = $v.txCode?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode
          other) {
    _$v = other
        as _$CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode;
  }

  @override
  void update(
      void Function(
              CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode
      build() => _build();

  _$CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode
      _build() {
    _$CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode
        _$result;
    try {
      _$result = _$v ??
          _$CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode
              ._(
            preAuthorizedCode: BuiltValueNullFieldError.checkNotNull(
                preAuthorizedCode,
                r'CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode',
                'preAuthorizedCode'),
            txCode: _txCode?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'txCode';
        _txCode?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
