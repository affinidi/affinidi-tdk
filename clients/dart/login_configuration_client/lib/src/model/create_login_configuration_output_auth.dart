//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_login_configuration_output_auth.g.dart';

/// OIDC Auth Credentials
///
/// Properties:
/// * [clientId] - OAuth 2.0 Client ID
/// * [clientSecret] - OAuth 2.0 Client Secret
/// * [scope] - OAuth 2.0 Client Scope
/// * [issuer] - Issuer URL
@BuiltValue()
abstract class CreateLoginConfigurationOutputAuth implements Built<CreateLoginConfigurationOutputAuth, CreateLoginConfigurationOutputAuthBuilder> {
  /// OAuth 2.0 Client ID
  @BuiltValueField(wireName: r'clientId')
  String get clientId;

  /// OAuth 2.0 Client Secret
  @BuiltValueField(wireName: r'clientSecret')
  String? get clientSecret;

  /// OAuth 2.0 Client Scope
  @BuiltValueField(wireName: r'scope')
  String? get scope;

  /// Issuer URL
  @BuiltValueField(wireName: r'issuer')
  String? get issuer;

  CreateLoginConfigurationOutputAuth._();

  factory CreateLoginConfigurationOutputAuth([void updates(CreateLoginConfigurationOutputAuthBuilder b)]) = _$CreateLoginConfigurationOutputAuth;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateLoginConfigurationOutputAuthBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateLoginConfigurationOutputAuth> get serializer => _$CreateLoginConfigurationOutputAuthSerializer();
}

class _$CreateLoginConfigurationOutputAuthSerializer implements PrimitiveSerializer<CreateLoginConfigurationOutputAuth> {
  @override
  final Iterable<Type> types = const [CreateLoginConfigurationOutputAuth, _$CreateLoginConfigurationOutputAuth];

  @override
  final String wireName = r'CreateLoginConfigurationOutputAuth';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateLoginConfigurationOutputAuth object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'clientId';
    yield serializers.serialize(
      object.clientId,
      specifiedType: const FullType(String),
    );
    if (object.clientSecret != null) {
      yield r'clientSecret';
      yield serializers.serialize(
        object.clientSecret,
        specifiedType: const FullType(String),
      );
    }
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType(String),
      );
    }
    if (object.issuer != null) {
      yield r'issuer';
      yield serializers.serialize(
        object.issuer,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateLoginConfigurationOutputAuth object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateLoginConfigurationOutputAuthBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'clientId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientId = valueDes;
          break;
        case r'clientSecret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientSecret = valueDes;
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.scope = valueDes;
          break;
        case r'issuer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.issuer = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateLoginConfigurationOutputAuth deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateLoginConfigurationOutputAuthBuilder();
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

