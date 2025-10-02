//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/list_issuance_response_issuances_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_issuance_response.g.dart';

/// ListIssuanceResponse
///
/// Properties:
/// * [issuances] - The list of all issuances for the Project
@BuiltValue()
abstract class ListIssuanceResponse
    implements Built<ListIssuanceResponse, ListIssuanceResponseBuilder> {
  /// The list of all issuances for the Project
  @BuiltValueField(wireName: r'issuances')
  BuiltList<ListIssuanceResponseIssuancesInner> get issuances;

  ListIssuanceResponse._();

  factory ListIssuanceResponse([void updates(ListIssuanceResponseBuilder b)]) =
      _$ListIssuanceResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListIssuanceResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListIssuanceResponse> get serializer =>
      _$ListIssuanceResponseSerializer();
}

class _$ListIssuanceResponseSerializer
    implements PrimitiveSerializer<ListIssuanceResponse> {
  @override
  final Iterable<Type> types = const [
    ListIssuanceResponse,
    _$ListIssuanceResponse
  ];

  @override
  final String wireName = r'ListIssuanceResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListIssuanceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'issuances';
    yield serializers.serialize(
      object.issuances,
      specifiedType: const FullType(
          BuiltList, [FullType(ListIssuanceResponseIssuancesInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListIssuanceResponse object, {
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
    required ListIssuanceResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'issuances':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ListIssuanceResponseIssuancesInner)]),
          ) as BuiltList<ListIssuanceResponseIssuancesInner>;
          result.issuances.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListIssuanceResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListIssuanceResponseBuilder();
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
