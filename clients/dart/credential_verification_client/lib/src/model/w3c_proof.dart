//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'w3c_proof.g.dart';

/// W3cProof
///
/// Properties:
/// * [type] 
/// * [created] 
/// * [verificationMethod] 
/// * [proofPurpose] 
/// * [jws] 
/// * [proofValue] 
/// * [nonce] 
@BuiltValue()
abstract class W3cProof implements Built<W3cProof, W3cProofBuilder> {
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'created')
  String? get created;

  @BuiltValueField(wireName: r'verificationMethod')
  String get verificationMethod;

  @BuiltValueField(wireName: r'proofPurpose')
  String get proofPurpose;

  @BuiltValueField(wireName: r'jws')
  String? get jws;

  @BuiltValueField(wireName: r'proofValue')
  String? get proofValue;

  @BuiltValueField(wireName: r'nonce')
  String? get nonce;

  W3cProof._();

  factory W3cProof([void updates(W3cProofBuilder b)]) = _$W3cProof;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(W3cProofBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<W3cProof> get serializer => _$W3cProofSerializer();
}

class _$W3cProofSerializer implements PrimitiveSerializer<W3cProof> {
  @override
  final Iterable<Type> types = const [W3cProof, _$W3cProof];

  @override
  final String wireName = r'W3cProof';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    W3cProof object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.created != null) {
      yield r'created';
      yield serializers.serialize(
        object.created,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'verificationMethod';
    yield serializers.serialize(
      object.verificationMethod,
      specifiedType: const FullType(String),
    );
    yield r'proofPurpose';
    yield serializers.serialize(
      object.proofPurpose,
      specifiedType: const FullType(String),
    );
    if (object.jws != null) {
      yield r'jws';
      yield serializers.serialize(
        object.jws,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.proofValue != null) {
      yield r'proofValue';
      yield serializers.serialize(
        object.proofValue,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.nonce != null) {
      yield r'nonce';
      yield serializers.serialize(
        object.nonce,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    W3cProof object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required W3cProofBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'created':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.created = valueDes;
          break;
        case r'verificationMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.verificationMethod = valueDes;
          break;
        case r'proofPurpose':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.proofPurpose = valueDes;
          break;
        case r'jws':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.jws = valueDes;
          break;
        case r'proofValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.proofValue = valueDes;
          break;
        case r'nonce':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nonce = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  W3cProof deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = W3cProofBuilder();
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

