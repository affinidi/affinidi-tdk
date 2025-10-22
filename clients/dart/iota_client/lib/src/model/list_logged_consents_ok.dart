//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iota_client/src/model/consent_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_logged_consents_ok.g.dart';

/// ListLoggedConsentsOK
///
/// Properties:
/// * [consents]
/// * [lastEvaluatedKey]
@BuiltValue()
abstract class ListLoggedConsentsOK
    implements Built<ListLoggedConsentsOK, ListLoggedConsentsOKBuilder> {
  @BuiltValueField(wireName: r'consents')
  BuiltList<ConsentDto> get consents;

  @BuiltValueField(wireName: r'lastEvaluatedKey')
  String? get lastEvaluatedKey;

  ListLoggedConsentsOK._();

  factory ListLoggedConsentsOK([void updates(ListLoggedConsentsOKBuilder b)]) =
      _$ListLoggedConsentsOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListLoggedConsentsOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListLoggedConsentsOK> get serializer =>
      _$ListLoggedConsentsOKSerializer();
}

class _$ListLoggedConsentsOKSerializer
    implements PrimitiveSerializer<ListLoggedConsentsOK> {
  @override
  final Iterable<Type> types = const [
    ListLoggedConsentsOK,
    _$ListLoggedConsentsOK
  ];

  @override
  final String wireName = r'ListLoggedConsentsOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListLoggedConsentsOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'consents';
    yield serializers.serialize(
      object.consents,
      specifiedType: const FullType(BuiltList, [FullType(ConsentDto)]),
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
    ListLoggedConsentsOK object, {
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
    required ListLoggedConsentsOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'consents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ConsentDto)]),
          ) as BuiltList<ConsentDto>;
          result.consents.replace(valueDes);
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
  ListLoggedConsentsOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListLoggedConsentsOKBuilder();
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
