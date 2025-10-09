//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'query_profile_data_ok.g.dart';

/// QueryProfileDataOK
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class QueryProfileDataOK
    implements Built<QueryProfileDataOK, QueryProfileDataOKBuilder> {
  @BuiltValueField(wireName: r'data')
  JsonObject? get data;

  QueryProfileDataOK._();

  factory QueryProfileDataOK([void updates(QueryProfileDataOKBuilder b)]) =
      _$QueryProfileDataOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueryProfileDataOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueryProfileDataOK> get serializer =>
      _$QueryProfileDataOKSerializer();
}

class _$QueryProfileDataOKSerializer
    implements PrimitiveSerializer<QueryProfileDataOK> {
  @override
  final Iterable<Type> types = const [QueryProfileDataOK, _$QueryProfileDataOK];

  @override
  final String wireName = r'QueryProfileDataOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueryProfileDataOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QueryProfileDataOK object, {
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
    required QueryProfileDataOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.data = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QueryProfileDataOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryProfileDataOKBuilder();
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
