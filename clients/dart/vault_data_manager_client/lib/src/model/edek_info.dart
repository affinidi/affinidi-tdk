//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edek_info.g.dart';

/// A base64 encoded data encryption key, encrypted with consumer DEKEK, required for node types [FILE, PROFILE]
///
/// Properties:
/// * [edek]
/// * [dekekId]
@BuiltValue()
abstract class EdekInfo implements Built<EdekInfo, EdekInfoBuilder> {
  @BuiltValueField(wireName: r'edek')
  String get edek;

  @BuiltValueField(wireName: r'dekekId')
  String get dekekId;

  EdekInfo._();

  factory EdekInfo([void updates(EdekInfoBuilder b)]) = _$EdekInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdekInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdekInfo> get serializer => _$EdekInfoSerializer();
}

class _$EdekInfoSerializer implements PrimitiveSerializer<EdekInfo> {
  @override
  final Iterable<Type> types = const [EdekInfo, _$EdekInfo];

  @override
  final String wireName = r'EdekInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdekInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'edek';
    yield serializers.serialize(
      object.edek,
      specifiedType: const FullType(String),
    );
    yield r'dekekId';
    yield serializers.serialize(
      object.dekekId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EdekInfo object, {
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
    required EdekInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'edek':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.edek = valueDes;
          break;
        case r'dekekId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dekekId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdekInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdekInfoBuilder();
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
