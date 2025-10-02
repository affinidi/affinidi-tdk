//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'initiate_data_sharing_request_ok_data.g.dart';

/// InitiateDataSharingRequestOKData
///
/// Properties:
/// * [jwt]
/// * [correlationId]
/// * [transactionId]
@BuiltValue()
abstract class InitiateDataSharingRequestOKData
    implements
        Built<InitiateDataSharingRequestOKData,
            InitiateDataSharingRequestOKDataBuilder> {
  @BuiltValueField(wireName: r'jwt')
  String get jwt;

  @BuiltValueField(wireName: r'correlationId')
  String get correlationId;

  @BuiltValueField(wireName: r'transactionId')
  String get transactionId;

  InitiateDataSharingRequestOKData._();

  factory InitiateDataSharingRequestOKData(
          [void updates(InitiateDataSharingRequestOKDataBuilder b)]) =
      _$InitiateDataSharingRequestOKData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InitiateDataSharingRequestOKDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InitiateDataSharingRequestOKData> get serializer =>
      _$InitiateDataSharingRequestOKDataSerializer();
}

class _$InitiateDataSharingRequestOKDataSerializer
    implements PrimitiveSerializer<InitiateDataSharingRequestOKData> {
  @override
  final Iterable<Type> types = const [
    InitiateDataSharingRequestOKData,
    _$InitiateDataSharingRequestOKData
  ];

  @override
  final String wireName = r'InitiateDataSharingRequestOKData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InitiateDataSharingRequestOKData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'jwt';
    yield serializers.serialize(
      object.jwt,
      specifiedType: const FullType(String),
    );
    yield r'correlationId';
    yield serializers.serialize(
      object.correlationId,
      specifiedType: const FullType(String),
    );
    yield r'transactionId';
    yield serializers.serialize(
      object.transactionId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InitiateDataSharingRequestOKData object, {
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
    required InitiateDataSharingRequestOKDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'jwt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.jwt = valueDes;
          break;
        case r'correlationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.correlationId = valueDes;
          break;
        case r'transactionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.transactionId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InitiateDataSharingRequestOKData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InitiateDataSharingRequestOKDataBuilder();
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
