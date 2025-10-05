//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/flow_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_issuance_record_response.g.dart';

/// list of issuance data records
///
/// Properties:
/// * [flowData]
/// * [lastEvaluatedKey]
@BuiltValue()
abstract class ListIssuanceRecordResponse
    implements
        Built<ListIssuanceRecordResponse, ListIssuanceRecordResponseBuilder> {
  @BuiltValueField(wireName: r'flowData')
  BuiltList<FlowData>? get flowData;

  @BuiltValueField(wireName: r'lastEvaluatedKey')
  String? get lastEvaluatedKey;

  ListIssuanceRecordResponse._();

  factory ListIssuanceRecordResponse(
          [void updates(ListIssuanceRecordResponseBuilder b)]) =
      _$ListIssuanceRecordResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListIssuanceRecordResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListIssuanceRecordResponse> get serializer =>
      _$ListIssuanceRecordResponseSerializer();
}

class _$ListIssuanceRecordResponseSerializer
    implements PrimitiveSerializer<ListIssuanceRecordResponse> {
  @override
  final Iterable<Type> types = const [
    ListIssuanceRecordResponse,
    _$ListIssuanceRecordResponse
  ];

  @override
  final String wireName = r'ListIssuanceRecordResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListIssuanceRecordResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.flowData != null) {
      yield r'flowData';
      yield serializers.serialize(
        object.flowData,
        specifiedType: const FullType(BuiltList, [FullType(FlowData)]),
      );
    }
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
    ListIssuanceRecordResponse object, {
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
    required ListIssuanceRecordResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'flowData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FlowData)]),
          ) as BuiltList<FlowData>;
          result.flowData.replace(valueDes);
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
  ListIssuanceRecordResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListIssuanceRecordResponseBuilder();
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
