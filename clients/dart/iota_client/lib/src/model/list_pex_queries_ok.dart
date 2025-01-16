//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iota_client/src/model/pex_query_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_pex_queries_ok.g.dart';

/// ListPexQueriesOK
///
/// Properties:
/// * [pexQueries] 
/// * [lastEvaluatedKey] 
@BuiltValue()
abstract class ListPexQueriesOK implements Built<ListPexQueriesOK, ListPexQueriesOKBuilder> {
  @BuiltValueField(wireName: r'pexQueries')
  BuiltList<PexQueryDto> get pexQueries;

  @BuiltValueField(wireName: r'lastEvaluatedKey')
  String? get lastEvaluatedKey;

  ListPexQueriesOK._();

  factory ListPexQueriesOK([void updates(ListPexQueriesOKBuilder b)]) = _$ListPexQueriesOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListPexQueriesOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListPexQueriesOK> get serializer => _$ListPexQueriesOKSerializer();
}

class _$ListPexQueriesOKSerializer implements PrimitiveSerializer<ListPexQueriesOK> {
  @override
  final Iterable<Type> types = const [ListPexQueriesOK, _$ListPexQueriesOK];

  @override
  final String wireName = r'ListPexQueriesOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListPexQueriesOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'pexQueries';
    yield serializers.serialize(
      object.pexQueries,
      specifiedType: const FullType(BuiltList, [FullType(PexQueryDto)]),
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
    ListPexQueriesOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListPexQueriesOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pexQueries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PexQueryDto)]),
          ) as BuiltList<PexQueryDto>;
          result.pexQueries.replace(valueDes);
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
  ListPexQueriesOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListPexQueriesOKBuilder();
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

