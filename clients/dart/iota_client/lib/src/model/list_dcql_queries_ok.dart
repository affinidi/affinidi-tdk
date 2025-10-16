//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_iota_client/src/model/dcql_query_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_dcql_queries_ok.g.dart';

/// ListDcqlQueriesOK
///
/// Properties:
/// * [dcqlQueries]
/// * [lastEvaluatedKey]
@BuiltValue()
abstract class ListDcqlQueriesOK
    implements Built<ListDcqlQueriesOK, ListDcqlQueriesOKBuilder> {
  @BuiltValueField(wireName: r'dcqlQueries')
  BuiltList<DcqlQueryDto> get dcqlQueries;

  @BuiltValueField(wireName: r'lastEvaluatedKey')
  String? get lastEvaluatedKey;

  ListDcqlQueriesOK._();

  factory ListDcqlQueriesOK([void updates(ListDcqlQueriesOKBuilder b)]) =
      _$ListDcqlQueriesOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListDcqlQueriesOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListDcqlQueriesOK> get serializer =>
      _$ListDcqlQueriesOKSerializer();
}

class _$ListDcqlQueriesOKSerializer
    implements PrimitiveSerializer<ListDcqlQueriesOK> {
  @override
  final Iterable<Type> types = const [ListDcqlQueriesOK, _$ListDcqlQueriesOK];

  @override
  final String wireName = r'ListDcqlQueriesOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListDcqlQueriesOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'dcqlQueries';
    yield serializers.serialize(
      object.dcqlQueries,
      specifiedType: const FullType(BuiltList, [FullType(DcqlQueryDto)]),
    );
    if (object.lastEvaluatedKey != null) {
      yield r'lastEvaluatedKey';
      yield serializers.serialize(
        object.lastEvaluatedKey,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListDcqlQueriesOK object, {
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
    required ListDcqlQueriesOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dcqlQueries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DcqlQueryDto)]),
          ) as BuiltList<DcqlQueryDto>;
          result.dcqlQueries.replace(valueDes);
          break;
        case r'lastEvaluatedKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastEvaluatedKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListDcqlQueriesOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListDcqlQueriesOKBuilder();
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
