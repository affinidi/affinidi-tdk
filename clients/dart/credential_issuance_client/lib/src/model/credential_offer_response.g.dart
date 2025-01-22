// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_offer_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialOfferResponse extends CredentialOfferResponse {
  @override
  final String credentialIssuer;
  @override
  final BuiltList<String> credentialConfigurationIds;
  @override
  final CredentialOfferResponseGrants grants;

  factory _$CredentialOfferResponse(
          [void Function(CredentialOfferResponseBuilder)? updates]) =>
      (new CredentialOfferResponseBuilder()..update(updates))._build();

  _$CredentialOfferResponse._(
      {required this.credentialIssuer,
      required this.credentialConfigurationIds,
      required this.grants})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        credentialIssuer, r'CredentialOfferResponse', 'credentialIssuer');
    BuiltValueNullFieldError.checkNotNull(credentialConfigurationIds,
        r'CredentialOfferResponse', 'credentialConfigurationIds');
    BuiltValueNullFieldError.checkNotNull(
        grants, r'CredentialOfferResponse', 'grants');
  }

  @override
  CredentialOfferResponse rebuild(
          void Function(CredentialOfferResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialOfferResponseBuilder toBuilder() =>
      new CredentialOfferResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialOfferResponse &&
        credentialIssuer == other.credentialIssuer &&
        credentialConfigurationIds == other.credentialConfigurationIds &&
        grants == other.grants;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credentialIssuer.hashCode);
    _$hash = $jc(_$hash, credentialConfigurationIds.hashCode);
    _$hash = $jc(_$hash, grants.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CredentialOfferResponse')
          ..add('credentialIssuer', credentialIssuer)
          ..add('credentialConfigurationIds', credentialConfigurationIds)
          ..add('grants', grants))
        .toString();
  }
}

class CredentialOfferResponseBuilder
    implements
        Builder<CredentialOfferResponse, CredentialOfferResponseBuilder> {
  _$CredentialOfferResponse? _$v;

  String? _credentialIssuer;
  String? get credentialIssuer => _$this._credentialIssuer;
  set credentialIssuer(String? credentialIssuer) =>
      _$this._credentialIssuer = credentialIssuer;

  ListBuilder<String>? _credentialConfigurationIds;
  ListBuilder<String> get credentialConfigurationIds =>
      _$this._credentialConfigurationIds ??= new ListBuilder<String>();
  set credentialConfigurationIds(
          ListBuilder<String>? credentialConfigurationIds) =>
      _$this._credentialConfigurationIds = credentialConfigurationIds;

  CredentialOfferResponseGrantsBuilder? _grants;
  CredentialOfferResponseGrantsBuilder get grants =>
      _$this._grants ??= new CredentialOfferResponseGrantsBuilder();
  set grants(CredentialOfferResponseGrantsBuilder? grants) =>
      _$this._grants = grants;

  CredentialOfferResponseBuilder() {
    CredentialOfferResponse._defaults(this);
  }

  CredentialOfferResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credentialIssuer = $v.credentialIssuer;
      _credentialConfigurationIds = $v.credentialConfigurationIds.toBuilder();
      _grants = $v.grants.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialOfferResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CredentialOfferResponse;
  }

  @override
  void update(void Function(CredentialOfferResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialOfferResponse build() => _build();

  _$CredentialOfferResponse _build() {
    _$CredentialOfferResponse _$result;
    try {
      _$result = _$v ??
          new _$CredentialOfferResponse._(
            credentialIssuer: BuiltValueNullFieldError.checkNotNull(
                credentialIssuer,
                r'CredentialOfferResponse',
                'credentialIssuer'),
            credentialConfigurationIds: credentialConfigurationIds.build(),
            grants: grants.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credentialConfigurationIds';
        credentialConfigurationIds.build();
        _$failedField = 'grants';
        grants.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CredentialOfferResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
