// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issuance_state_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IssuanceStateResponseStatusEnum _$issuanceStateResponseStatusEnum_INIT =
    const IssuanceStateResponseStatusEnum._('INIT');
const IssuanceStateResponseStatusEnum
    _$issuanceStateResponseStatusEnum_OFFER_DELIVERED =
    const IssuanceStateResponseStatusEnum._('OFFER_DELIVERED');
const IssuanceStateResponseStatusEnum
    _$issuanceStateResponseStatusEnum_VC_CLAIMED =
    const IssuanceStateResponseStatusEnum._('VC_CLAIMED');
const IssuanceStateResponseStatusEnum
    _$issuanceStateResponseStatusEnum_TIMEOUT =
    const IssuanceStateResponseStatusEnum._('TIMEOUT');

IssuanceStateResponseStatusEnum _$issuanceStateResponseStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'INIT':
      return _$issuanceStateResponseStatusEnum_INIT;
    case 'OFFER_DELIVERED':
      return _$issuanceStateResponseStatusEnum_OFFER_DELIVERED;
    case 'VC_CLAIMED':
      return _$issuanceStateResponseStatusEnum_VC_CLAIMED;
    case 'TIMEOUT':
      return _$issuanceStateResponseStatusEnum_TIMEOUT;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IssuanceStateResponseStatusEnum>
    _$issuanceStateResponseStatusEnumValues = BuiltSet<
        IssuanceStateResponseStatusEnum>(const <IssuanceStateResponseStatusEnum>[
  _$issuanceStateResponseStatusEnum_INIT,
  _$issuanceStateResponseStatusEnum_OFFER_DELIVERED,
  _$issuanceStateResponseStatusEnum_VC_CLAIMED,
  _$issuanceStateResponseStatusEnum_TIMEOUT,
]);

Serializer<IssuanceStateResponseStatusEnum>
    _$issuanceStateResponseStatusEnumSerializer =
    _$IssuanceStateResponseStatusEnumSerializer();

class _$IssuanceStateResponseStatusEnumSerializer
    implements PrimitiveSerializer<IssuanceStateResponseStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'INIT': 'INIT',
    'OFFER_DELIVERED': 'OFFER_DELIVERED',
    'VC_CLAIMED': 'VC_CLAIMED',
    'TIMEOUT': 'TIMEOUT',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'INIT': 'INIT',
    'OFFER_DELIVERED': 'OFFER_DELIVERED',
    'VC_CLAIMED': 'VC_CLAIMED',
    'TIMEOUT': 'TIMEOUT',
  };

  @override
  final Iterable<Type> types = const <Type>[IssuanceStateResponseStatusEnum];
  @override
  final String wireName = 'IssuanceStateResponseStatusEnum';

  @override
  Object serialize(
          Serializers serializers, IssuanceStateResponseStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IssuanceStateResponseStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IssuanceStateResponseStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IssuanceStateResponse extends IssuanceStateResponse {
  @override
  final String issuanceId;
  @override
  final IssuanceStateResponseStatusEnum status;

  factory _$IssuanceStateResponse(
          [void Function(IssuanceStateResponseBuilder)? updates]) =>
      (IssuanceStateResponseBuilder()..update(updates))._build();

  _$IssuanceStateResponse._({required this.issuanceId, required this.status})
      : super._();
  @override
  IssuanceStateResponse rebuild(
          void Function(IssuanceStateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssuanceStateResponseBuilder toBuilder() =>
      IssuanceStateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IssuanceStateResponse &&
        issuanceId == other.issuanceId &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, issuanceId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IssuanceStateResponse')
          ..add('issuanceId', issuanceId)
          ..add('status', status))
        .toString();
  }
}

class IssuanceStateResponseBuilder
    implements Builder<IssuanceStateResponse, IssuanceStateResponseBuilder> {
  _$IssuanceStateResponse? _$v;

  String? _issuanceId;
  String? get issuanceId => _$this._issuanceId;
  set issuanceId(String? issuanceId) => _$this._issuanceId = issuanceId;

  IssuanceStateResponseStatusEnum? _status;
  IssuanceStateResponseStatusEnum? get status => _$this._status;
  set status(IssuanceStateResponseStatusEnum? status) =>
      _$this._status = status;

  IssuanceStateResponseBuilder() {
    IssuanceStateResponse._defaults(this);
  }

  IssuanceStateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _issuanceId = $v.issuanceId;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IssuanceStateResponse other) {
    _$v = other as _$IssuanceStateResponse;
  }

  @override
  void update(void Function(IssuanceStateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IssuanceStateResponse build() => _build();

  _$IssuanceStateResponse _build() {
    final _$result = _$v ??
        _$IssuanceStateResponse._(
          issuanceId: BuiltValueNullFieldError.checkNotNull(
              issuanceId, r'IssuanceStateResponse', 'issuanceId'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'IssuanceStateResponse', 'status'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
