// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_issuance_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StartIssuanceInputClaimModeEnum _$startIssuanceInputClaimModeEnum_NORMAL =
    const StartIssuanceInputClaimModeEnum._('NORMAL');
const StartIssuanceInputClaimModeEnum
    _$startIssuanceInputClaimModeEnum_TX_CODE =
    const StartIssuanceInputClaimModeEnum._('TX_CODE');
const StartIssuanceInputClaimModeEnum
    _$startIssuanceInputClaimModeEnum_FIXED_HOLDER =
    const StartIssuanceInputClaimModeEnum._('FIXED_HOLDER');

StartIssuanceInputClaimModeEnum _$startIssuanceInputClaimModeEnumValueOf(
    String name) {
  switch (name) {
    case 'NORMAL':
      return _$startIssuanceInputClaimModeEnum_NORMAL;
    case 'TX_CODE':
      return _$startIssuanceInputClaimModeEnum_TX_CODE;
    case 'FIXED_HOLDER':
      return _$startIssuanceInputClaimModeEnum_FIXED_HOLDER;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<StartIssuanceInputClaimModeEnum>
    _$startIssuanceInputClaimModeEnumValues = new BuiltSet<
        StartIssuanceInputClaimModeEnum>(const <StartIssuanceInputClaimModeEnum>[
  _$startIssuanceInputClaimModeEnum_NORMAL,
  _$startIssuanceInputClaimModeEnum_TX_CODE,
  _$startIssuanceInputClaimModeEnum_FIXED_HOLDER,
]);

Serializer<StartIssuanceInputClaimModeEnum>
    _$startIssuanceInputClaimModeEnumSerializer =
    new _$StartIssuanceInputClaimModeEnumSerializer();

class _$StartIssuanceInputClaimModeEnumSerializer
    implements PrimitiveSerializer<StartIssuanceInputClaimModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'NORMAL': 'NORMAL',
    'TX_CODE': 'TX_CODE',
    'FIXED_HOLDER': 'FIXED_HOLDER',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'NORMAL': 'NORMAL',
    'TX_CODE': 'TX_CODE',
    'FIXED_HOLDER': 'FIXED_HOLDER',
  };

  @override
  final Iterable<Type> types = const <Type>[StartIssuanceInputClaimModeEnum];
  @override
  final String wireName = 'StartIssuanceInputClaimModeEnum';

  @override
  Object serialize(
          Serializers serializers, StartIssuanceInputClaimModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StartIssuanceInputClaimModeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StartIssuanceInputClaimModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StartIssuanceInput extends StartIssuanceInput {
  @override
  final StartIssuanceInputClaimModeEnum? claimMode;
  @override
  final String? holderDid;
  @override
  final String? issuanceId;
  @override
  final BuiltList<StartIssuanceInputDataInner> data;

  factory _$StartIssuanceInput(
          [void Function(StartIssuanceInputBuilder)? updates]) =>
      (new StartIssuanceInputBuilder()..update(updates))._build();

  _$StartIssuanceInput._(
      {this.claimMode, this.holderDid, this.issuanceId, required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'StartIssuanceInput', 'data');
  }

  @override
  StartIssuanceInput rebuild(
          void Function(StartIssuanceInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartIssuanceInputBuilder toBuilder() =>
      new StartIssuanceInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartIssuanceInput &&
        claimMode == other.claimMode &&
        holderDid == other.holderDid &&
        issuanceId == other.issuanceId &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, claimMode.hashCode);
    _$hash = $jc(_$hash, holderDid.hashCode);
    _$hash = $jc(_$hash, issuanceId.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StartIssuanceInput')
          ..add('claimMode', claimMode)
          ..add('holderDid', holderDid)
          ..add('issuanceId', issuanceId)
          ..add('data', data))
        .toString();
  }
}

class StartIssuanceInputBuilder
    implements Builder<StartIssuanceInput, StartIssuanceInputBuilder> {
  _$StartIssuanceInput? _$v;

  StartIssuanceInputClaimModeEnum? _claimMode;
  StartIssuanceInputClaimModeEnum? get claimMode => _$this._claimMode;
  set claimMode(StartIssuanceInputClaimModeEnum? claimMode) =>
      _$this._claimMode = claimMode;

  String? _holderDid;
  String? get holderDid => _$this._holderDid;
  set holderDid(String? holderDid) => _$this._holderDid = holderDid;

  String? _issuanceId;
  String? get issuanceId => _$this._issuanceId;
  set issuanceId(String? issuanceId) => _$this._issuanceId = issuanceId;

  ListBuilder<StartIssuanceInputDataInner>? _data;
  ListBuilder<StartIssuanceInputDataInner> get data =>
      _$this._data ??= new ListBuilder<StartIssuanceInputDataInner>();
  set data(ListBuilder<StartIssuanceInputDataInner>? data) =>
      _$this._data = data;

  StartIssuanceInputBuilder() {
    StartIssuanceInput._defaults(this);
  }

  StartIssuanceInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _claimMode = $v.claimMode;
      _holderDid = $v.holderDid;
      _issuanceId = $v.issuanceId;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartIssuanceInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartIssuanceInput;
  }

  @override
  void update(void Function(StartIssuanceInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartIssuanceInput build() => _build();

  _$StartIssuanceInput _build() {
    _$StartIssuanceInput _$result;
    try {
      _$result = _$v ??
          new _$StartIssuanceInput._(
            claimMode: claimMode,
            holderDid: holderDid,
            issuanceId: issuanceId,
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StartIssuanceInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
