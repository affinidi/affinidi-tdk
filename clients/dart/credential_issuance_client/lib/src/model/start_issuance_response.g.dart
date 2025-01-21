// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_issuance_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartIssuanceResponse extends StartIssuanceResponse {
  @override
  final String credentialOfferUri;
  @override
  final String? txCode;
  @override
  final String issuanceId;
  @override
  final int expiresIn;

  factory _$StartIssuanceResponse(
          [void Function(StartIssuanceResponseBuilder)? updates]) =>
      (new StartIssuanceResponseBuilder()..update(updates))._build();

  _$StartIssuanceResponse._(
      {required this.credentialOfferUri,
      this.txCode,
      required this.issuanceId,
      required this.expiresIn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        credentialOfferUri, r'StartIssuanceResponse', 'credentialOfferUri');
    BuiltValueNullFieldError.checkNotNull(
        issuanceId, r'StartIssuanceResponse', 'issuanceId');
    BuiltValueNullFieldError.checkNotNull(
        expiresIn, r'StartIssuanceResponse', 'expiresIn');
  }

  @override
  StartIssuanceResponse rebuild(
          void Function(StartIssuanceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartIssuanceResponseBuilder toBuilder() =>
      new StartIssuanceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartIssuanceResponse &&
        credentialOfferUri == other.credentialOfferUri &&
        txCode == other.txCode &&
        issuanceId == other.issuanceId &&
        expiresIn == other.expiresIn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credentialOfferUri.hashCode);
    _$hash = $jc(_$hash, txCode.hashCode);
    _$hash = $jc(_$hash, issuanceId.hashCode);
    _$hash = $jc(_$hash, expiresIn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StartIssuanceResponse')
          ..add('credentialOfferUri', credentialOfferUri)
          ..add('txCode', txCode)
          ..add('issuanceId', issuanceId)
          ..add('expiresIn', expiresIn))
        .toString();
  }
}

class StartIssuanceResponseBuilder
    implements Builder<StartIssuanceResponse, StartIssuanceResponseBuilder> {
  _$StartIssuanceResponse? _$v;

  String? _credentialOfferUri;
  String? get credentialOfferUri => _$this._credentialOfferUri;
  set credentialOfferUri(String? credentialOfferUri) =>
      _$this._credentialOfferUri = credentialOfferUri;

  String? _txCode;
  String? get txCode => _$this._txCode;
  set txCode(String? txCode) => _$this._txCode = txCode;

  String? _issuanceId;
  String? get issuanceId => _$this._issuanceId;
  set issuanceId(String? issuanceId) => _$this._issuanceId = issuanceId;

  int? _expiresIn;
  int? get expiresIn => _$this._expiresIn;
  set expiresIn(int? expiresIn) => _$this._expiresIn = expiresIn;

  StartIssuanceResponseBuilder() {
    StartIssuanceResponse._defaults(this);
  }

  StartIssuanceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credentialOfferUri = $v.credentialOfferUri;
      _txCode = $v.txCode;
      _issuanceId = $v.issuanceId;
      _expiresIn = $v.expiresIn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartIssuanceResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartIssuanceResponse;
  }

  @override
  void update(void Function(StartIssuanceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartIssuanceResponse build() => _build();

  _$StartIssuanceResponse _build() {
    final _$result = _$v ??
        new _$StartIssuanceResponse._(
          credentialOfferUri: BuiltValueNullFieldError.checkNotNull(
              credentialOfferUri,
              r'StartIssuanceResponse',
              'credentialOfferUri'),
          txCode: txCode,
          issuanceId: BuiltValueNullFieldError.checkNotNull(
              issuanceId, r'StartIssuanceResponse', 'issuanceId'),
          expiresIn: BuiltValueNullFieldError.checkNotNull(
              expiresIn, r'StartIssuanceResponse', 'expiresIn'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
