// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_proof.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CredentialProofProofTypeEnum _$credentialProofProofTypeEnum_jwt =
    const CredentialProofProofTypeEnum._('jwt');

CredentialProofProofTypeEnum _$credentialProofProofTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'jwt':
      return _$credentialProofProofTypeEnum_jwt;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CredentialProofProofTypeEnum>
    _$credentialProofProofTypeEnumValues = new BuiltSet<
        CredentialProofProofTypeEnum>(const <CredentialProofProofTypeEnum>[
  _$credentialProofProofTypeEnum_jwt,
]);

Serializer<CredentialProofProofTypeEnum>
    _$credentialProofProofTypeEnumSerializer =
    new _$CredentialProofProofTypeEnumSerializer();

class _$CredentialProofProofTypeEnumSerializer
    implements PrimitiveSerializer<CredentialProofProofTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'jwt': 'jwt',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'jwt': 'jwt',
  };

  @override
  final Iterable<Type> types = const <Type>[CredentialProofProofTypeEnum];
  @override
  final String wireName = 'CredentialProofProofTypeEnum';

  @override
  Object serialize(Serializers serializers, CredentialProofProofTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CredentialProofProofTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CredentialProofProofTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CredentialProof extends CredentialProof {
  @override
  final CredentialProofProofTypeEnum proofType;
  @override
  final String jwt;

  factory _$CredentialProof([void Function(CredentialProofBuilder)? updates]) =>
      (new CredentialProofBuilder()..update(updates))._build();

  _$CredentialProof._({required this.proofType, required this.jwt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        proofType, r'CredentialProof', 'proofType');
    BuiltValueNullFieldError.checkNotNull(jwt, r'CredentialProof', 'jwt');
  }

  @override
  CredentialProof rebuild(void Function(CredentialProofBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialProofBuilder toBuilder() =>
      new CredentialProofBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialProof &&
        proofType == other.proofType &&
        jwt == other.jwt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, proofType.hashCode);
    _$hash = $jc(_$hash, jwt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CredentialProof')
          ..add('proofType', proofType)
          ..add('jwt', jwt))
        .toString();
  }
}

class CredentialProofBuilder
    implements Builder<CredentialProof, CredentialProofBuilder> {
  _$CredentialProof? _$v;

  CredentialProofProofTypeEnum? _proofType;
  CredentialProofProofTypeEnum? get proofType => _$this._proofType;
  set proofType(CredentialProofProofTypeEnum? proofType) =>
      _$this._proofType = proofType;

  String? _jwt;
  String? get jwt => _$this._jwt;
  set jwt(String? jwt) => _$this._jwt = jwt;

  CredentialProofBuilder() {
    CredentialProof._defaults(this);
  }

  CredentialProofBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _proofType = $v.proofType;
      _jwt = $v.jwt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialProof other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CredentialProof;
  }

  @override
  void update(void Function(CredentialProofBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialProof build() => _build();

  _$CredentialProof _build() {
    final _$result = _$v ??
        new _$CredentialProof._(
          proofType: BuiltValueNullFieldError.checkNotNull(
              proofType, r'CredentialProof', 'proofType'),
          jwt: BuiltValueNullFieldError.checkNotNull(
              jwt, r'CredentialProof', 'jwt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
