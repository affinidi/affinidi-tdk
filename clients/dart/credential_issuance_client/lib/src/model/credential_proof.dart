//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credential_proof.g.dart';

/// Object containing the proof of possession of the cryptographic key material the issued Credential would be bound to.
///
/// Properties:
/// * [proofType] - String denoting the key proof type.
/// * [jwt]
@BuiltValue()
abstract class CredentialProof
    implements Built<CredentialProof, CredentialProofBuilder> {
  /// String denoting the key proof type.
  @BuiltValueField(wireName: r'proof_type')
  CredentialProofProofTypeEnum get proofType;
  // enum proofTypeEnum {  jwt,  };

  @BuiltValueField(wireName: r'jwt')
  String get jwt;

  CredentialProof._();

  factory CredentialProof([void updates(CredentialProofBuilder b)]) =
      _$CredentialProof;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialProofBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialProof> get serializer =>
      _$CredentialProofSerializer();
}

class _$CredentialProofSerializer
    implements PrimitiveSerializer<CredentialProof> {
  @override
  final Iterable<Type> types = const [CredentialProof, _$CredentialProof];

  @override
  final String wireName = r'CredentialProof';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialProof object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'proof_type';
    yield serializers.serialize(
      object.proofType,
      specifiedType: const FullType(CredentialProofProofTypeEnum),
    );
    yield r'jwt';
    yield serializers.serialize(
      object.jwt,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialProof object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CredentialProofBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'proof_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialProofProofTypeEnum),
          ) as CredentialProofProofTypeEnum;
          result.proofType = valueDes;
          break;
        case r'jwt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.jwt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CredentialProof deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialProofBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class CredentialProofProofTypeEnum extends EnumClass {
  /// String denoting the key proof type.
  @BuiltValueEnumConst(wireName: r'jwt')
  static const CredentialProofProofTypeEnum jwt =
      _$credentialProofProofTypeEnum_jwt;

  static Serializer<CredentialProofProofTypeEnum> get serializer =>
      _$credentialProofProofTypeEnumSerializer;

  const CredentialProofProofTypeEnum._(String name) : super(name);

  static BuiltSet<CredentialProofProofTypeEnum> get values =>
      _$credentialProofProofTypeEnumValues;
  static CredentialProofProofTypeEnum valueOf(String name) =>
      _$credentialProofProofTypeEnumValueOf(name);
}
