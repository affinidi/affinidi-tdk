//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fetch_iotavp_response_input.g.dart';

/// FetchIOTAVPResponseInput
///
/// Properties:
/// * [correlationId] - A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.
/// * [transactionId] - A unique, randomly generated identifier data-sharing request flow is initiated. This value is used with the response code to fetch the callback response data.
/// * [responseCode] - A unique identifier to fetch the callback response data. Send this value together with the transactionId to successfully fetch the data.
/// * [configurationId] - ID of the Affinidi Iota Framework configuration.
@BuiltValue()
abstract class FetchIOTAVPResponseInput
    implements
        Built<FetchIOTAVPResponseInput, FetchIOTAVPResponseInputBuilder> {
  /// A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.
  @BuiltValueField(wireName: r'correlationId')
  String get correlationId;

  /// A unique, randomly generated identifier data-sharing request flow is initiated. This value is used with the response code to fetch the callback response data.
  @BuiltValueField(wireName: r'transactionId')
  String get transactionId;

  /// A unique identifier to fetch the callback response data. Send this value together with the transactionId to successfully fetch the data.
  @BuiltValueField(wireName: r'responseCode')
  String get responseCode;

  /// ID of the Affinidi Iota Framework configuration.
  @BuiltValueField(wireName: r'configurationId')
  String get configurationId;

  FetchIOTAVPResponseInput._();

  factory FetchIOTAVPResponseInput(
          [void updates(FetchIOTAVPResponseInputBuilder b)]) =
      _$FetchIOTAVPResponseInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FetchIOTAVPResponseInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FetchIOTAVPResponseInput> get serializer =>
      _$FetchIOTAVPResponseInputSerializer();
}

class _$FetchIOTAVPResponseInputSerializer
    implements PrimitiveSerializer<FetchIOTAVPResponseInput> {
  @override
  final Iterable<Type> types = const [
    FetchIOTAVPResponseInput,
    _$FetchIOTAVPResponseInput
  ];

  @override
  final String wireName = r'FetchIOTAVPResponseInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FetchIOTAVPResponseInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    yield r'responseCode';
    yield serializers.serialize(
      object.responseCode,
      specifiedType: const FullType(String),
    );
    yield r'configurationId';
    yield serializers.serialize(
      object.configurationId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FetchIOTAVPResponseInput object, {
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
    required FetchIOTAVPResponseInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'responseCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.responseCode = valueDes;
          break;
        case r'configurationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.configurationId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FetchIOTAVPResponseInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FetchIOTAVPResponseInputBuilder();
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
