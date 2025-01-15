//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_pex_queries_input.g.dart';

/// DeletePexQueriesInput
///
/// Properties:
/// * [queryIds] 
@BuiltValue()
abstract class DeletePexQueriesInput implements Built<DeletePexQueriesInput, DeletePexQueriesInputBuilder> {
  @BuiltValueField(wireName: r'queryIds')
  BuiltList<String> get queryIds;

  DeletePexQueriesInput._();

  factory DeletePexQueriesInput([void updates(DeletePexQueriesInputBuilder b)]) = _$DeletePexQueriesInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeletePexQueriesInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeletePexQueriesInput> get serializer => _$DeletePexQueriesInputSerializer();
}

class _$DeletePexQueriesInputSerializer implements PrimitiveSerializer<DeletePexQueriesInput> {
  @override
  final Iterable<Type> types = const [DeletePexQueriesInput, _$DeletePexQueriesInput];

  @override
  final String wireName = r'DeletePexQueriesInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeletePexQueriesInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'queryIds';
    yield serializers.serialize(
      object.queryIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeletePexQueriesInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeletePexQueriesInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'queryIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.queryIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeletePexQueriesInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeletePexQueriesInputBuilder();
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

