//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iota_client/src/model/iota_exchange_credentials_ok_credentials.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'iota_exchange_credentials_ok.g.dart';

/// IotaExchangeCredentialsOK
///
/// Properties:
/// * [connectionClientId] 
/// * [credentials] 
@BuiltValue()
abstract class IotaExchangeCredentialsOK implements Built<IotaExchangeCredentialsOK, IotaExchangeCredentialsOKBuilder> {
  @BuiltValueField(wireName: r'connectionClientId')
  String get connectionClientId;

  @BuiltValueField(wireName: r'credentials')
  IotaExchangeCredentialsOKCredentials get credentials;

  IotaExchangeCredentialsOK._();

  factory IotaExchangeCredentialsOK([void updates(IotaExchangeCredentialsOKBuilder b)]) = _$IotaExchangeCredentialsOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IotaExchangeCredentialsOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IotaExchangeCredentialsOK> get serializer => _$IotaExchangeCredentialsOKSerializer();
}

class _$IotaExchangeCredentialsOKSerializer implements PrimitiveSerializer<IotaExchangeCredentialsOK> {
  @override
  final Iterable<Type> types = const [IotaExchangeCredentialsOK, _$IotaExchangeCredentialsOK];

  @override
  final String wireName = r'IotaExchangeCredentialsOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IotaExchangeCredentialsOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'connectionClientId';
    yield serializers.serialize(
      object.connectionClientId,
      specifiedType: const FullType(String),
    );
    yield r'credentials';
    yield serializers.serialize(
      object.credentials,
      specifiedType: const FullType(IotaExchangeCredentialsOKCredentials),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IotaExchangeCredentialsOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IotaExchangeCredentialsOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'connectionClientId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.connectionClientId = valueDes;
          break;
        case r'credentials':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IotaExchangeCredentialsOKCredentials),
          ) as IotaExchangeCredentialsOKCredentials;
          result.credentials.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IotaExchangeCredentialsOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IotaExchangeCredentialsOKBuilder();
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

