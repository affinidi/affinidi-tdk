//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nested_descriptor.g.dart';

/// NestedDescriptor
///
/// Properties:
/// * [id]
/// * [path]
/// * [pathNested]
/// * [format]
@BuiltValue()
abstract class NestedDescriptor
    implements Built<NestedDescriptor, NestedDescriptorBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'path')
  String get path;

  @BuiltValueField(wireName: r'path_nested')
  NestedDescriptor? get pathNested;

  @BuiltValueField(wireName: r'format')
  String get format;

  NestedDescriptor._();

  factory NestedDescriptor([void updates(NestedDescriptorBuilder b)]) =
      _$NestedDescriptor;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NestedDescriptorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NestedDescriptor> get serializer =>
      _$NestedDescriptorSerializer();
}

class _$NestedDescriptorSerializer
    implements PrimitiveSerializer<NestedDescriptor> {
  @override
  final Iterable<Type> types = const [NestedDescriptor, _$NestedDescriptor];

  @override
  final String wireName = r'NestedDescriptor';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NestedDescriptor object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
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
    NestedDescriptor object, {
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
    required NestedDescriptorBuilder result,
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
  NestedDescriptor deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NestedDescriptorBuilder();
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
