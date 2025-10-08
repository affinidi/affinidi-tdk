//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_node_input.g.dart';

/// UpdateNodeInput
///
/// Properties:
/// * [name] - Name of the node
/// * [description] - Description of the node
/// * [metadata] - metadata of the node in stringified json format
@BuiltValue()
abstract class UpdateNodeInput
    implements Built<UpdateNodeInput, UpdateNodeInputBuilder> {
  /// Name of the node
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Description of the node
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// metadata of the node in stringified json format
  @BuiltValueField(wireName: r'metadata')
  String? get metadata;

  UpdateNodeInput._();

  factory UpdateNodeInput([void updates(UpdateNodeInputBuilder b)]) =
      _$UpdateNodeInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateNodeInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateNodeInput> get serializer =>
      _$UpdateNodeInputSerializer();
}

class _$UpdateNodeInputSerializer
    implements PrimitiveSerializer<UpdateNodeInput> {
  @override
  final Iterable<Type> types = const [UpdateNodeInput, _$UpdateNodeInput];

  @override
  final String wireName = r'UpdateNodeInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateNodeInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateNodeInput object, {
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
    required UpdateNodeInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.metadata = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateNodeInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateNodeInputBuilder();
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
