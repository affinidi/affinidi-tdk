//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iota_client/src/model/save_pex_queries_update_input_queries_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'save_pex_queries_update_input.g.dart';

/// SavePexQueriesUpdateInput
///
/// Properties:
/// * [queries]
@BuiltValue()
abstract class SavePexQueriesUpdateInput
    implements
        Built<SavePexQueriesUpdateInput, SavePexQueriesUpdateInputBuilder> {
  @BuiltValueField(wireName: r'queries')
  BuiltList<SavePexQueriesUpdateInputQueriesInner>? get queries;

  SavePexQueriesUpdateInput._();

  factory SavePexQueriesUpdateInput(
          [void updates(SavePexQueriesUpdateInputBuilder b)]) =
      _$SavePexQueriesUpdateInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SavePexQueriesUpdateInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SavePexQueriesUpdateInput> get serializer =>
      _$SavePexQueriesUpdateInputSerializer();
}

class _$SavePexQueriesUpdateInputSerializer
    implements PrimitiveSerializer<SavePexQueriesUpdateInput> {
  @override
  final Iterable<Type> types = const [
    SavePexQueriesUpdateInput,
    _$SavePexQueriesUpdateInput
  ];

  @override
  final String wireName = r'SavePexQueriesUpdateInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SavePexQueriesUpdateInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.queries != null) {
      yield r'queries';
      yield serializers.serialize(
        object.queries,
        specifiedType: const FullType(
            BuiltList, [FullType(SavePexQueriesUpdateInputQueriesInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SavePexQueriesUpdateInput object, {
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
    required SavePexQueriesUpdateInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'queries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(SavePexQueriesUpdateInputQueriesInner)]),
          ) as BuiltList<SavePexQueriesUpdateInputQueriesInner>;
          result.queries.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SavePexQueriesUpdateInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SavePexQueriesUpdateInputBuilder();
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
