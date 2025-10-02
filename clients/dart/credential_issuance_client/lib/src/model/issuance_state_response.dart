//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'issuance_state_response.g.dart';

/// IssuanceStateResponse
///
/// Properties:
/// * [issuanceId] - Website's internal identifier. Website may use to get info about the status of issuance flow. If it is not provided, CIS will generate one.
/// * [status] - String describing the status of the issuance
@BuiltValue()
abstract class IssuanceStateResponse
    implements Built<IssuanceStateResponse, IssuanceStateResponseBuilder> {
  /// Website's internal identifier. Website may use to get info about the status of issuance flow. If it is not provided, CIS will generate one.
  @BuiltValueField(wireName: r'issuanceId')
  String get issuanceId;

  /// String describing the status of the issuance
  @BuiltValueField(wireName: r'status')
  IssuanceStateResponseStatusEnum get status;
  // enum statusEnum {  INIT,  OFFER_DELIVERED,  VC_CLAIMED,  TIMEOUT,  };

  IssuanceStateResponse._();

  factory IssuanceStateResponse(
      [void updates(IssuanceStateResponseBuilder b)]) = _$IssuanceStateResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IssuanceStateResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IssuanceStateResponse> get serializer =>
      _$IssuanceStateResponseSerializer();
}

class _$IssuanceStateResponseSerializer
    implements PrimitiveSerializer<IssuanceStateResponse> {
  @override
  final Iterable<Type> types = const [
    IssuanceStateResponse,
    _$IssuanceStateResponse
  ];

  @override
  final String wireName = r'IssuanceStateResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IssuanceStateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'issuanceId';
    yield serializers.serialize(
      object.issuanceId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(IssuanceStateResponseStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IssuanceStateResponse object, {
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
    required IssuanceStateResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'issuanceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.issuanceId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IssuanceStateResponseStatusEnum),
          ) as IssuanceStateResponseStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IssuanceStateResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IssuanceStateResponseBuilder();
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

class IssuanceStateResponseStatusEnum extends EnumClass {
  /// String describing the status of the issuance
  @BuiltValueEnumConst(wireName: r'INIT')
  static const IssuanceStateResponseStatusEnum INIT =
      _$issuanceStateResponseStatusEnum_INIT;

  /// String describing the status of the issuance
  @BuiltValueEnumConst(wireName: r'OFFER_DELIVERED')
  static const IssuanceStateResponseStatusEnum OFFER_DELIVERED =
      _$issuanceStateResponseStatusEnum_OFFER_DELIVERED;

  /// String describing the status of the issuance
  @BuiltValueEnumConst(wireName: r'VC_CLAIMED')
  static const IssuanceStateResponseStatusEnum VC_CLAIMED =
      _$issuanceStateResponseStatusEnum_VC_CLAIMED;

  /// String describing the status of the issuance
  @BuiltValueEnumConst(wireName: r'TIMEOUT')
  static const IssuanceStateResponseStatusEnum TIMEOUT =
      _$issuanceStateResponseStatusEnum_TIMEOUT;

  static Serializer<IssuanceStateResponseStatusEnum> get serializer =>
      _$issuanceStateResponseStatusEnumSerializer;

  const IssuanceStateResponseStatusEnum._(String name) : super(name);

  static BuiltSet<IssuanceStateResponseStatusEnum> get values =>
      _$issuanceStateResponseStatusEnumValues;
  static IssuanceStateResponseStatusEnum valueOf(String name) =>
      _$issuanceStateResponseStatusEnumValueOf(name);
}
