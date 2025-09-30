//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ldp_object.g.dart';

/// LdpObject
///
/// Properties:
/// * [proofType] - List of names of the proof types
@BuiltValue()
abstract class LdpObject implements Built<LdpObject, LdpObjectBuilder> {
  /// List of names of the proof types
  @BuiltValueField(wireName: r'proof_type')
  BuiltList<String> get proofType;

  LdpObject._();

  factory LdpObject([void updates(LdpObjectBuilder b)]) = _$LdpObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LdpObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LdpObject> get serializer => _$LdpObjectSerializer();
}

class _$LdpObjectSerializer implements PrimitiveSerializer<LdpObject> {
  @override
  final Iterable<Type> types = const [LdpObject, _$LdpObject];

  @override
  final String wireName = r'LdpObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LdpObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'proof_type';
    yield serializers.serialize(
      object.proofType,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LdpObject object, {
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
    required LdpObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'proof_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.proofType.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LdpObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LdpObjectBuilder();
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
