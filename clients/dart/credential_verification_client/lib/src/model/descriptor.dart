//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_verification_client/src/model/nested_descriptor.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'descriptor.g.dart';

/// Descriptor
///
/// Properties:
/// * [id] 
/// * [path] 
/// * [pathNested] 
/// * [format] 
@BuiltValue()
abstract class Descriptor implements Built<Descriptor, DescriptorBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'path')
  String get path;

  @BuiltValueField(wireName: r'path_nested')
  NestedDescriptor? get pathNested;

  @BuiltValueField(wireName: r'format')
  String get format;

  Descriptor._();

  factory Descriptor([void updates(DescriptorBuilder b)]) = _$Descriptor;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DescriptorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Descriptor> get serializer => _$DescriptorSerializer();
}

class _$DescriptorSerializer implements PrimitiveSerializer<Descriptor> {
  @override
  final Iterable<Type> types = const [Descriptor, _$Descriptor];

  @override
  final String wireName = r'Descriptor';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Descriptor object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    if (object.pathNested != null) {
      yield r'path_nested';
      yield serializers.serialize(
        object.pathNested,
        specifiedType: const FullType(NestedDescriptor),
      );
    }
    yield r'format';
    yield serializers.serialize(
      object.format,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Descriptor object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DescriptorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'path_nested':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NestedDescriptor),
          ) as NestedDescriptor;
          result.pathNested.replace(valueDes);
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.format = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Descriptor deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescriptorBuilder();
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

