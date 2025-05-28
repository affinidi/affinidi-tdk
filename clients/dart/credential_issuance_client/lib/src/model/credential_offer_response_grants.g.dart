// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_offer_response_grants.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialOfferResponseGrants extends CredentialOfferResponseGrants {
  @override
  final CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode
      urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode;

  factory _$CredentialOfferResponseGrants(
          [void Function(CredentialOfferResponseGrantsBuilder)? updates]) =>
      (CredentialOfferResponseGrantsBuilder()..update(updates))._build();

  _$CredentialOfferResponseGrants._(
      {required this.urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode})
      : super._();
  @override
  CredentialOfferResponseGrants rebuild(
          void Function(CredentialOfferResponseGrantsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialOfferResponseGrantsBuilder toBuilder() =>
      CredentialOfferResponseGrantsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialOfferResponseGrants &&
        urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode ==
            other
                .urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(
        _$hash,
        urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode
            .hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CredentialOfferResponseGrants')
          ..add(
              'urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode',
              urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode))
        .toString();
  }
}

class CredentialOfferResponseGrantsBuilder
    implements
        Builder<CredentialOfferResponseGrants,
            CredentialOfferResponseGrantsBuilder> {
  _$CredentialOfferResponseGrants? _$v;

  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeBuilder?
      _urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode;
  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeBuilder
      get urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode =>
          _$this._urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode ??=
              CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeBuilder();
  set urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode(
          CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeBuilder?
              urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode) =>
      _$this._urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode =
          urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode;

  CredentialOfferResponseGrantsBuilder() {
    CredentialOfferResponseGrants._defaults(this);
  }

  CredentialOfferResponseGrantsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode = $v
          .urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode
          .toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialOfferResponseGrants other) {
    _$v = other as _$CredentialOfferResponseGrants;
  }

  @override
  void update(void Function(CredentialOfferResponseGrantsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialOfferResponseGrants build() => _build();

  _$CredentialOfferResponseGrants _build() {
    _$CredentialOfferResponseGrants _$result;
    try {
      _$result = _$v ??
          _$CredentialOfferResponseGrants._(
            urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode:
                urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode
                    .build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField =
            'urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode';
        urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode
            .build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CredentialOfferResponseGrants', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
