// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_credential_status_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChangeCredentialStatusInputChangeReasonEnum
    _$changeCredentialStatusInputChangeReasonEnum_INVALID_CREDENTIAL =
    const ChangeCredentialStatusInputChangeReasonEnum._('INVALID_CREDENTIAL');
const ChangeCredentialStatusInputChangeReasonEnum
    _$changeCredentialStatusInputChangeReasonEnum_COMPROMISED_ISSUER =
    const ChangeCredentialStatusInputChangeReasonEnum._('COMPROMISED_ISSUER');

ChangeCredentialStatusInputChangeReasonEnum
    _$changeCredentialStatusInputChangeReasonEnumValueOf(String name) {
  switch (name) {
    case 'INVALID_CREDENTIAL':
      return _$changeCredentialStatusInputChangeReasonEnum_INVALID_CREDENTIAL;
    case 'COMPROMISED_ISSUER':
      return _$changeCredentialStatusInputChangeReasonEnum_COMPROMISED_ISSUER;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChangeCredentialStatusInputChangeReasonEnum>
    _$changeCredentialStatusInputChangeReasonEnumValues = BuiltSet<
        ChangeCredentialStatusInputChangeReasonEnum>(const <ChangeCredentialStatusInputChangeReasonEnum>[
  _$changeCredentialStatusInputChangeReasonEnum_INVALID_CREDENTIAL,
  _$changeCredentialStatusInputChangeReasonEnum_COMPROMISED_ISSUER,
]);

Serializer<ChangeCredentialStatusInputChangeReasonEnum>
    _$changeCredentialStatusInputChangeReasonEnumSerializer =
    _$ChangeCredentialStatusInputChangeReasonEnumSerializer();

class _$ChangeCredentialStatusInputChangeReasonEnumSerializer
    implements
        PrimitiveSerializer<ChangeCredentialStatusInputChangeReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'INVALID_CREDENTIAL': 'INVALID_CREDENTIAL',
    'COMPROMISED_ISSUER': 'COMPROMISED_ISSUER',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'INVALID_CREDENTIAL': 'INVALID_CREDENTIAL',
    'COMPROMISED_ISSUER': 'COMPROMISED_ISSUER',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChangeCredentialStatusInputChangeReasonEnum
  ];
  @override
  final String wireName = 'ChangeCredentialStatusInputChangeReasonEnum';

  @override
  Object serialize(Serializers serializers,
          ChangeCredentialStatusInputChangeReasonEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChangeCredentialStatusInputChangeReasonEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChangeCredentialStatusInputChangeReasonEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChangeCredentialStatusInput extends ChangeCredentialStatusInput {
  @override
  final ChangeCredentialStatusInputChangeReasonEnum? changeReason;
  @override
  final String? issuanceRecordId;

  factory _$ChangeCredentialStatusInput(
          [void Function(ChangeCredentialStatusInputBuilder)? updates]) =>
      (ChangeCredentialStatusInputBuilder()..update(updates))._build();

  _$ChangeCredentialStatusInput._({this.changeReason, this.issuanceRecordId})
      : super._();
  @override
  ChangeCredentialStatusInput rebuild(
          void Function(ChangeCredentialStatusInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeCredentialStatusInputBuilder toBuilder() =>
      ChangeCredentialStatusInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeCredentialStatusInput &&
        changeReason == other.changeReason &&
        issuanceRecordId == other.issuanceRecordId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, changeReason.hashCode);
    _$hash = $jc(_$hash, issuanceRecordId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeCredentialStatusInput')
          ..add('changeReason', changeReason)
          ..add('issuanceRecordId', issuanceRecordId))
        .toString();
  }
}

class ChangeCredentialStatusInputBuilder
    implements
        Builder<ChangeCredentialStatusInput,
            ChangeCredentialStatusInputBuilder> {
  _$ChangeCredentialStatusInput? _$v;

  ChangeCredentialStatusInputChangeReasonEnum? _changeReason;
  ChangeCredentialStatusInputChangeReasonEnum? get changeReason =>
      _$this._changeReason;
  set changeReason(ChangeCredentialStatusInputChangeReasonEnum? changeReason) =>
      _$this._changeReason = changeReason;

  String? _issuanceRecordId;
  String? get issuanceRecordId => _$this._issuanceRecordId;
  set issuanceRecordId(String? issuanceRecordId) =>
      _$this._issuanceRecordId = issuanceRecordId;

  ChangeCredentialStatusInputBuilder() {
    ChangeCredentialStatusInput._defaults(this);
  }

  ChangeCredentialStatusInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _changeReason = $v.changeReason;
      _issuanceRecordId = $v.issuanceRecordId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeCredentialStatusInput other) {
    _$v = other as _$ChangeCredentialStatusInput;
  }

  @override
  void update(void Function(ChangeCredentialStatusInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeCredentialStatusInput build() => _build();

  _$ChangeCredentialStatusInput _build() {
    final _$result = _$v ??
        _$ChangeCredentialStatusInput._(
          changeReason: changeReason,
          issuanceRecordId: issuanceRecordId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
