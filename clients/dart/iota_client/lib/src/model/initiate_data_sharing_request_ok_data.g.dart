// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_data_sharing_request_ok_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InitiateDataSharingRequestOKData
    extends InitiateDataSharingRequestOKData {
  @override
  final String jwt;
  @override
  final String correlationId;
  @override
  final String transactionId;

  factory _$InitiateDataSharingRequestOKData(
          [void Function(InitiateDataSharingRequestOKDataBuilder)? updates]) =>
      (InitiateDataSharingRequestOKDataBuilder()..update(updates))._build();

  _$InitiateDataSharingRequestOKData._(
      {required this.jwt,
      required this.correlationId,
      required this.transactionId})
      : super._();
  @override
  InitiateDataSharingRequestOKData rebuild(
          void Function(InitiateDataSharingRequestOKDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InitiateDataSharingRequestOKDataBuilder toBuilder() =>
      InitiateDataSharingRequestOKDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InitiateDataSharingRequestOKData &&
        jwt == other.jwt &&
        correlationId == other.correlationId &&
        transactionId == other.transactionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jwt.hashCode);
    _$hash = $jc(_$hash, correlationId.hashCode);
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InitiateDataSharingRequestOKData')
          ..add('jwt', jwt)
          ..add('correlationId', correlationId)
          ..add('transactionId', transactionId))
        .toString();
  }
}

class InitiateDataSharingRequestOKDataBuilder
    implements
        Builder<InitiateDataSharingRequestOKData,
            InitiateDataSharingRequestOKDataBuilder> {
  _$InitiateDataSharingRequestOKData? _$v;

  String? _jwt;
  String? get jwt => _$this._jwt;
  set jwt(String? jwt) => _$this._jwt = jwt;

  String? _correlationId;
  String? get correlationId => _$this._correlationId;
  set correlationId(String? correlationId) =>
      _$this._correlationId = correlationId;

  String? _transactionId;
  String? get transactionId => _$this._transactionId;
  set transactionId(String? transactionId) =>
      _$this._transactionId = transactionId;

  InitiateDataSharingRequestOKDataBuilder() {
    InitiateDataSharingRequestOKData._defaults(this);
  }

  InitiateDataSharingRequestOKDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jwt = $v.jwt;
      _correlationId = $v.correlationId;
      _transactionId = $v.transactionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InitiateDataSharingRequestOKData other) {
    _$v = other as _$InitiateDataSharingRequestOKData;
  }

  @override
  void update(void Function(InitiateDataSharingRequestOKDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InitiateDataSharingRequestOKData build() => _build();

  _$InitiateDataSharingRequestOKData _build() {
    final _$result = _$v ??
        _$InitiateDataSharingRequestOKData._(
          jwt: BuiltValueNullFieldError.checkNotNull(
              jwt, r'InitiateDataSharingRequestOKData', 'jwt'),
          correlationId: BuiltValueNullFieldError.checkNotNull(correlationId,
              r'InitiateDataSharingRequestOKData', 'correlationId'),
          transactionId: BuiltValueNullFieldError.checkNotNull(transactionId,
              r'InitiateDataSharingRequestOKData', 'transactionId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
