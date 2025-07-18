// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flow_data_status_lists_details_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FlowDataStatusListsDetailsInnerStatusListPurposeEnum
    _$flowDataStatusListsDetailsInnerStatusListPurposeEnum_REVOKED =
    const FlowDataStatusListsDetailsInnerStatusListPurposeEnum._('REVOKED');

FlowDataStatusListsDetailsInnerStatusListPurposeEnum
    _$flowDataStatusListsDetailsInnerStatusListPurposeEnumValueOf(String name) {
  switch (name) {
    case 'REVOKED':
      return _$flowDataStatusListsDetailsInnerStatusListPurposeEnum_REVOKED;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FlowDataStatusListsDetailsInnerStatusListPurposeEnum>
    _$flowDataStatusListsDetailsInnerStatusListPurposeEnumValues = BuiltSet<
        FlowDataStatusListsDetailsInnerStatusListPurposeEnum>(const <FlowDataStatusListsDetailsInnerStatusListPurposeEnum>[
  _$flowDataStatusListsDetailsInnerStatusListPurposeEnum_REVOKED,
]);

const FlowDataStatusListsDetailsInnerStandardEnum
    _$flowDataStatusListsDetailsInnerStandardEnum_revocationList2020 =
    const FlowDataStatusListsDetailsInnerStandardEnum._('revocationList2020');

FlowDataStatusListsDetailsInnerStandardEnum
    _$flowDataStatusListsDetailsInnerStandardEnumValueOf(String name) {
  switch (name) {
    case 'revocationList2020':
      return _$flowDataStatusListsDetailsInnerStandardEnum_revocationList2020;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FlowDataStatusListsDetailsInnerStandardEnum>
    _$flowDataStatusListsDetailsInnerStandardEnumValues = BuiltSet<
        FlowDataStatusListsDetailsInnerStandardEnum>(const <FlowDataStatusListsDetailsInnerStandardEnum>[
  _$flowDataStatusListsDetailsInnerStandardEnum_revocationList2020,
]);

Serializer<FlowDataStatusListsDetailsInnerStatusListPurposeEnum>
    _$flowDataStatusListsDetailsInnerStatusListPurposeEnumSerializer =
    _$FlowDataStatusListsDetailsInnerStatusListPurposeEnumSerializer();
Serializer<FlowDataStatusListsDetailsInnerStandardEnum>
    _$flowDataStatusListsDetailsInnerStandardEnumSerializer =
    _$FlowDataStatusListsDetailsInnerStandardEnumSerializer();

class _$FlowDataStatusListsDetailsInnerStatusListPurposeEnumSerializer
    implements
        PrimitiveSerializer<
            FlowDataStatusListsDetailsInnerStatusListPurposeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'REVOKED': 'REVOKED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'REVOKED': 'REVOKED',
  };

  @override
  final Iterable<Type> types = const <Type>[
    FlowDataStatusListsDetailsInnerStatusListPurposeEnum
  ];
  @override
  final String wireName =
      'FlowDataStatusListsDetailsInnerStatusListPurposeEnum';

  @override
  Object serialize(Serializers serializers,
          FlowDataStatusListsDetailsInnerStatusListPurposeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FlowDataStatusListsDetailsInnerStatusListPurposeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FlowDataStatusListsDetailsInnerStatusListPurposeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FlowDataStatusListsDetailsInnerStandardEnumSerializer
    implements
        PrimitiveSerializer<FlowDataStatusListsDetailsInnerStandardEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'revocationList2020': 'RevocationList2020',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RevocationList2020': 'revocationList2020',
  };

  @override
  final Iterable<Type> types = const <Type>[
    FlowDataStatusListsDetailsInnerStandardEnum
  ];
  @override
  final String wireName = 'FlowDataStatusListsDetailsInnerStandardEnum';

  @override
  Object serialize(Serializers serializers,
          FlowDataStatusListsDetailsInnerStandardEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FlowDataStatusListsDetailsInnerStandardEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FlowDataStatusListsDetailsInnerStandardEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FlowDataStatusListsDetailsInner
    extends FlowDataStatusListsDetailsInner {
  @override
  final FlowDataStatusListsDetailsInnerStatusListPurposeEnum statusListPurpose;
  @override
  final String statusListId;
  @override
  final String statusListIndex;
  @override
  final FlowDataStatusListsDetailsInnerStandardEnum standard;
  @override
  final bool isActive;
  @override
  final String? statusActivationReason;
  @override
  final String? statusActivatedAt;

  factory _$FlowDataStatusListsDetailsInner(
          [void Function(FlowDataStatusListsDetailsInnerBuilder)? updates]) =>
      (FlowDataStatusListsDetailsInnerBuilder()..update(updates))._build();

  _$FlowDataStatusListsDetailsInner._(
      {required this.statusListPurpose,
      required this.statusListId,
      required this.statusListIndex,
      required this.standard,
      required this.isActive,
      this.statusActivationReason,
      this.statusActivatedAt})
      : super._();
  @override
  FlowDataStatusListsDetailsInner rebuild(
          void Function(FlowDataStatusListsDetailsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlowDataStatusListsDetailsInnerBuilder toBuilder() =>
      FlowDataStatusListsDetailsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlowDataStatusListsDetailsInner &&
        statusListPurpose == other.statusListPurpose &&
        statusListId == other.statusListId &&
        statusListIndex == other.statusListIndex &&
        standard == other.standard &&
        isActive == other.isActive &&
        statusActivationReason == other.statusActivationReason &&
        statusActivatedAt == other.statusActivatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, statusListPurpose.hashCode);
    _$hash = $jc(_$hash, statusListId.hashCode);
    _$hash = $jc(_$hash, statusListIndex.hashCode);
    _$hash = $jc(_$hash, standard.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, statusActivationReason.hashCode);
    _$hash = $jc(_$hash, statusActivatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FlowDataStatusListsDetailsInner')
          ..add('statusListPurpose', statusListPurpose)
          ..add('statusListId', statusListId)
          ..add('statusListIndex', statusListIndex)
          ..add('standard', standard)
          ..add('isActive', isActive)
          ..add('statusActivationReason', statusActivationReason)
          ..add('statusActivatedAt', statusActivatedAt))
        .toString();
  }
}

class FlowDataStatusListsDetailsInnerBuilder
    implements
        Builder<FlowDataStatusListsDetailsInner,
            FlowDataStatusListsDetailsInnerBuilder> {
  _$FlowDataStatusListsDetailsInner? _$v;

  FlowDataStatusListsDetailsInnerStatusListPurposeEnum? _statusListPurpose;
  FlowDataStatusListsDetailsInnerStatusListPurposeEnum? get statusListPurpose =>
      _$this._statusListPurpose;
  set statusListPurpose(
          FlowDataStatusListsDetailsInnerStatusListPurposeEnum?
              statusListPurpose) =>
      _$this._statusListPurpose = statusListPurpose;

  String? _statusListId;
  String? get statusListId => _$this._statusListId;
  set statusListId(String? statusListId) => _$this._statusListId = statusListId;

  String? _statusListIndex;
  String? get statusListIndex => _$this._statusListIndex;
  set statusListIndex(String? statusListIndex) =>
      _$this._statusListIndex = statusListIndex;

  FlowDataStatusListsDetailsInnerStandardEnum? _standard;
  FlowDataStatusListsDetailsInnerStandardEnum? get standard => _$this._standard;
  set standard(FlowDataStatusListsDetailsInnerStandardEnum? standard) =>
      _$this._standard = standard;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _statusActivationReason;
  String? get statusActivationReason => _$this._statusActivationReason;
  set statusActivationReason(String? statusActivationReason) =>
      _$this._statusActivationReason = statusActivationReason;

  String? _statusActivatedAt;
  String? get statusActivatedAt => _$this._statusActivatedAt;
  set statusActivatedAt(String? statusActivatedAt) =>
      _$this._statusActivatedAt = statusActivatedAt;

  FlowDataStatusListsDetailsInnerBuilder() {
    FlowDataStatusListsDetailsInner._defaults(this);
  }

  FlowDataStatusListsDetailsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusListPurpose = $v.statusListPurpose;
      _statusListId = $v.statusListId;
      _statusListIndex = $v.statusListIndex;
      _standard = $v.standard;
      _isActive = $v.isActive;
      _statusActivationReason = $v.statusActivationReason;
      _statusActivatedAt = $v.statusActivatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlowDataStatusListsDetailsInner other) {
    _$v = other as _$FlowDataStatusListsDetailsInner;
  }

  @override
  void update(void Function(FlowDataStatusListsDetailsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlowDataStatusListsDetailsInner build() => _build();

  _$FlowDataStatusListsDetailsInner _build() {
    final _$result = _$v ??
        _$FlowDataStatusListsDetailsInner._(
          statusListPurpose: BuiltValueNullFieldError.checkNotNull(
              statusListPurpose,
              r'FlowDataStatusListsDetailsInner',
              'statusListPurpose'),
          statusListId: BuiltValueNullFieldError.checkNotNull(
              statusListId, r'FlowDataStatusListsDetailsInner', 'statusListId'),
          statusListIndex: BuiltValueNullFieldError.checkNotNull(
              statusListIndex,
              r'FlowDataStatusListsDetailsInner',
              'statusListIndex'),
          standard: BuiltValueNullFieldError.checkNotNull(
              standard, r'FlowDataStatusListsDetailsInner', 'standard'),
          isActive: BuiltValueNullFieldError.checkNotNull(
              isActive, r'FlowDataStatusListsDetailsInner', 'isActive'),
          statusActivationReason: statusActivationReason,
          statusActivatedAt: statusActivatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
