// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_issuance_input_data_inner_status_list_details_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum
    _$startIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum_REVOCABLE =
    const StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum._(
        'REVOCABLE');

StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum
    _$startIssuanceInputDataInnerStatusListDetailsInnerPurposeEnumValueOf(
        String name) {
  switch (name) {
    case 'REVOCABLE':
      return _$startIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum_REVOCABLE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum>
    _$startIssuanceInputDataInnerStatusListDetailsInnerPurposeEnumValues =
    BuiltSet<
        StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum>(const <StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum>[
  _$startIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum_REVOCABLE,
]);

const StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum
    _$startIssuanceInputDataInnerStatusListDetailsInnerStandardEnum_revocationList2020 =
    const StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum._(
        'revocationList2020');

StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum
    _$startIssuanceInputDataInnerStatusListDetailsInnerStandardEnumValueOf(
        String name) {
  switch (name) {
    case 'revocationList2020':
      return _$startIssuanceInputDataInnerStatusListDetailsInnerStandardEnum_revocationList2020;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum>
    _$startIssuanceInputDataInnerStatusListDetailsInnerStandardEnumValues =
    BuiltSet<
        StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum>(const <StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum>[
  _$startIssuanceInputDataInnerStatusListDetailsInnerStandardEnum_revocationList2020,
]);

Serializer<StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum>
    _$startIssuanceInputDataInnerStatusListDetailsInnerPurposeEnumSerializer =
    _$StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnumSerializer();
Serializer<StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum>
    _$startIssuanceInputDataInnerStatusListDetailsInnerStandardEnumSerializer =
    _$StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnumSerializer();

class _$StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnumSerializer
    implements
        PrimitiveSerializer<
            StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'REVOCABLE': 'REVOCABLE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'REVOCABLE': 'REVOCABLE',
  };

  @override
  final Iterable<Type> types = const <Type>[
    StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum
  ];
  @override
  final String wireName =
      'StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum';

  @override
  Object serialize(Serializers serializers,
          StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnumSerializer
    implements
        PrimitiveSerializer<
            StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'revocationList2020': 'RevocationList2020',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RevocationList2020': 'revocationList2020',
  };

  @override
  final Iterable<Type> types = const <Type>[
    StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum
  ];
  @override
  final String wireName =
      'StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum';

  @override
  Object serialize(Serializers serializers,
          StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StartIssuanceInputDataInnerStatusListDetailsInner
    extends StartIssuanceInputDataInnerStatusListDetailsInner {
  @override
  final StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum purpose;
  @override
  final StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum standard;

  factory _$StartIssuanceInputDataInnerStatusListDetailsInner(
          [void Function(
                  StartIssuanceInputDataInnerStatusListDetailsInnerBuilder)?
              updates]) =>
      (StartIssuanceInputDataInnerStatusListDetailsInnerBuilder()
            ..update(updates))
          ._build();

  _$StartIssuanceInputDataInnerStatusListDetailsInner._(
      {required this.purpose, required this.standard})
      : super._();
  @override
  StartIssuanceInputDataInnerStatusListDetailsInner rebuild(
          void Function(
                  StartIssuanceInputDataInnerStatusListDetailsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartIssuanceInputDataInnerStatusListDetailsInnerBuilder toBuilder() =>
      StartIssuanceInputDataInnerStatusListDetailsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartIssuanceInputDataInnerStatusListDetailsInner &&
        purpose == other.purpose &&
        standard == other.standard;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, purpose.hashCode);
    _$hash = $jc(_$hash, standard.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'StartIssuanceInputDataInnerStatusListDetailsInner')
          ..add('purpose', purpose)
          ..add('standard', standard))
        .toString();
  }
}

class StartIssuanceInputDataInnerStatusListDetailsInnerBuilder
    implements
        Builder<StartIssuanceInputDataInnerStatusListDetailsInner,
            StartIssuanceInputDataInnerStatusListDetailsInnerBuilder> {
  _$StartIssuanceInputDataInnerStatusListDetailsInner? _$v;

  StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum? _purpose;
  StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum? get purpose =>
      _$this._purpose;
  set purpose(
          StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum?
              purpose) =>
      _$this._purpose = purpose;

  StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum? _standard;
  StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum? get standard =>
      _$this._standard;
  set standard(
          StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum?
              standard) =>
      _$this._standard = standard;

  StartIssuanceInputDataInnerStatusListDetailsInnerBuilder() {
    StartIssuanceInputDataInnerStatusListDetailsInner._defaults(this);
  }

  StartIssuanceInputDataInnerStatusListDetailsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _purpose = $v.purpose;
      _standard = $v.standard;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartIssuanceInputDataInnerStatusListDetailsInner other) {
    _$v = other as _$StartIssuanceInputDataInnerStatusListDetailsInner;
  }

  @override
  void update(
      void Function(StartIssuanceInputDataInnerStatusListDetailsInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  StartIssuanceInputDataInnerStatusListDetailsInner build() => _build();

  _$StartIssuanceInputDataInnerStatusListDetailsInner _build() {
    final _$result = _$v ??
        _$StartIssuanceInputDataInnerStatusListDetailsInner._(
          purpose: BuiltValueNullFieldError.checkNotNull(purpose,
              r'StartIssuanceInputDataInnerStatusListDetailsInner', 'purpose'),
          standard: BuiltValueNullFieldError.checkNotNull(standard,
              r'StartIssuanceInputDataInnerStatusListDetailsInner', 'standard'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
