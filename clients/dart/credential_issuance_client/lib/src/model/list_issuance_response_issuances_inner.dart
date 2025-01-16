//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_issuance_response_issuances_inner.g.dart';

/// ListIssuanceResponseIssuancesInner
///
/// Properties:
/// * [id] - issuance id
@BuiltValue()
abstract class ListIssuanceResponseIssuancesInner implements Built<ListIssuanceResponseIssuancesInner, ListIssuanceResponseIssuancesInnerBuilder> {
  /// issuance id
  @BuiltValueField(wireName: r'id')
  String get id;

  ListIssuanceResponseIssuancesInner._();

  factory ListIssuanceResponseIssuancesInner([void updates(ListIssuanceResponseIssuancesInnerBuilder b)]) = _$ListIssuanceResponseIssuancesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListIssuanceResponseIssuancesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListIssuanceResponseIssuancesInner> get serializer => _$ListIssuanceResponseIssuancesInnerSerializer();
}

class _$ListIssuanceResponseIssuancesInnerSerializer implements PrimitiveSerializer<ListIssuanceResponseIssuancesInner> {
  @override
  final Iterable<Type> types = const [ListIssuanceResponseIssuancesInner, _$ListIssuanceResponseIssuancesInner];

  @override
  final String wireName = r'ListIssuanceResponseIssuancesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListIssuanceResponseIssuancesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListIssuanceResponseIssuancesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListIssuanceResponseIssuancesInnerBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListIssuanceResponseIssuancesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListIssuanceResponseIssuancesInnerBuilder();
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

