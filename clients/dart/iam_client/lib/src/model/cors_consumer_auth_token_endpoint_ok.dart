//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_consumer_auth_token_endpoint_ok.g.dart';

/// CorsConsumerAuthTokenEndpointOK
///
/// Properties:
/// * [corsConsumerAuthTokenEndpointOk]
@BuiltValue()
abstract class CorsConsumerAuthTokenEndpointOK
    implements
        Built<CorsConsumerAuthTokenEndpointOK,
            CorsConsumerAuthTokenEndpointOKBuilder> {
  @BuiltValueField(wireName: r'corsConsumerAuthTokenEndpointOk')
  String? get corsConsumerAuthTokenEndpointOk;

  CorsConsumerAuthTokenEndpointOK._();

  factory CorsConsumerAuthTokenEndpointOK(
          [void updates(CorsConsumerAuthTokenEndpointOKBuilder b)]) =
      _$CorsConsumerAuthTokenEndpointOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsConsumerAuthTokenEndpointOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsConsumerAuthTokenEndpointOK> get serializer =>
      _$CorsConsumerAuthTokenEndpointOKSerializer();
}

class _$CorsConsumerAuthTokenEndpointOKSerializer
    implements PrimitiveSerializer<CorsConsumerAuthTokenEndpointOK> {
  @override
  final Iterable<Type> types = const [
    CorsConsumerAuthTokenEndpointOK,
    _$CorsConsumerAuthTokenEndpointOK
  ];

  @override
  final String wireName = r'CorsConsumerAuthTokenEndpointOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsConsumerAuthTokenEndpointOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsConsumerAuthTokenEndpointOk != null) {
      yield r'corsConsumerAuthTokenEndpointOk';
      yield serializers.serialize(
        object.corsConsumerAuthTokenEndpointOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsConsumerAuthTokenEndpointOK object, {
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
    required CorsConsumerAuthTokenEndpointOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsConsumerAuthTokenEndpointOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsConsumerAuthTokenEndpointOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsConsumerAuthTokenEndpointOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsConsumerAuthTokenEndpointOKBuilder();
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
