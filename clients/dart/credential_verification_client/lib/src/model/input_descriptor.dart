//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/format.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/constraints.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'input_descriptor.g.dart';

/// InputDescriptor
///
/// Properties:
/// * [id]
/// * [constraints]
/// * [name]
/// * [purpose]
/// * [format]
/// * [group]
@BuiltValue()
abstract class InputDescriptor
    implements Built<InputDescriptor, InputDescriptorBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'constraints')
  Constraints get constraints;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'purpose')
  String? get purpose;

  @BuiltValueField(wireName: r'format')
  Format? get format;

  @BuiltValueField(wireName: r'group')
  BuiltList<String>? get group;

  InputDescriptor._();

  factory InputDescriptor([void updates(InputDescriptorBuilder b)]) =
      _$InputDescriptor;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InputDescriptorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InputDescriptor> get serializer =>
      _$InputDescriptorSerializer();
}

class _$InputDescriptorSerializer
    implements PrimitiveSerializer<InputDescriptor> {
  @override
  final Iterable<Type> types = const [InputDescriptor, _$InputDescriptor];

  @override
  final String wireName = r'InputDescriptor';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InputDescriptor object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'constraints';
    yield serializers.serialize(
      object.constraints,
      specifiedType: const FullType(Constraints),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.purpose != null) {
      yield r'purpose';
      yield serializers.serialize(
        object.purpose,
        specifiedType: const FullType(String),
      );
    }
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(Format),
      );
    }
    if (object.group != null) {
      yield r'group';
      yield serializers.serialize(
        object.group,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InputDescriptor object, {
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
    required InputDescriptorBuilder result,
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
        case r'constraints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Constraints),
          ) as Constraints;
          result.constraints.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'purpose':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.purpose = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Format),
          ) as Format;
          result.format.replace(valueDes);
          break;
        case r'group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.group.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InputDescriptor deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InputDescriptorBuilder();
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
