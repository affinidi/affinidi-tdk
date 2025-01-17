//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_auth_token_endpoint_input.g.dart';

/// ConsumerAuthTokenEndpointInput
///
/// Properties:
/// * [grantType] 
/// * [code] 
/// * [refreshToken] 
/// * [redirectUri] 
/// * [clientId] 
@BuiltValue()
abstract class ConsumerAuthTokenEndpointInput implements Built<ConsumerAuthTokenEndpointInput, ConsumerAuthTokenEndpointInputBuilder> {
  @BuiltValueField(wireName: r'grant_type')
  String get grantType;

  @BuiltValueField(wireName: r'code')
  String? get code;

  @BuiltValueField(wireName: r'refresh_token')
  String? get refreshToken;

  @BuiltValueField(wireName: r'redirect_uri')
  String? get redirectUri;

  @BuiltValueField(wireName: r'client_id')
  String? get clientId;

  ConsumerAuthTokenEndpointInput._();

  factory ConsumerAuthTokenEndpointInput([void updates(ConsumerAuthTokenEndpointInputBuilder b)]) = _$ConsumerAuthTokenEndpointInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerAuthTokenEndpointInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerAuthTokenEndpointInput> get serializer => _$ConsumerAuthTokenEndpointInputSerializer();
}

class _$ConsumerAuthTokenEndpointInputSerializer implements PrimitiveSerializer<ConsumerAuthTokenEndpointInput> {
  @override
  final Iterable<Type> types = const [ConsumerAuthTokenEndpointInput, _$ConsumerAuthTokenEndpointInput];

  @override
  final String wireName = r'ConsumerAuthTokenEndpointInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerAuthTokenEndpointInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'grant_type';
    yield serializers.serialize(
      object.grantType,
      specifiedType: const FullType(String),
    );
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(String),
      );
    }
    if (object.refreshToken != null) {
      yield r'refresh_token';
      yield serializers.serialize(
        object.refreshToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.redirectUri != null) {
      yield r'redirect_uri';
      yield serializers.serialize(
        object.redirectUri,
        specifiedType: const FullType(String),
      );
    }
    if (object.clientId != null) {
      yield r'client_id';
      yield serializers.serialize(
        object.clientId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerAuthTokenEndpointInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerAuthTokenEndpointInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'grant_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.grantType = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'refresh_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        case r'redirect_uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.redirectUri = valueDes;
          break;
        case r'client_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerAuthTokenEndpointInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerAuthTokenEndpointInputBuilder();
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

