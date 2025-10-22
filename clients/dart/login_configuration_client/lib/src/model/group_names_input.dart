//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_names_input.g.dart';

/// GroupNamesInput
///
/// Properties:
/// * [groupNames]
@BuiltValue()
abstract class GroupNamesInput
    implements Built<GroupNamesInput, GroupNamesInputBuilder> {
  @BuiltValueField(wireName: r'groupNames')
  BuiltList<String> get groupNames;

  GroupNamesInput._();

  factory GroupNamesInput([void updates(GroupNamesInputBuilder b)]) =
      _$GroupNamesInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupNamesInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupNamesInput> get serializer =>
      _$GroupNamesInputSerializer();
}

class _$GroupNamesInputSerializer
    implements PrimitiveSerializer<GroupNamesInput> {
  @override
  final Iterable<Type> types = const [GroupNamesInput, _$GroupNamesInput];

  @override
  final String wireName = r'GroupNamesInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupNamesInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'groupNames';
    yield serializers.serialize(
      object.groupNames,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupNamesInput object, {
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
    required GroupNamesInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'groupNames':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.groupNames.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroupNamesInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupNamesInputBuilder();
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
