//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_login_configuration_client/src/model/login_configuration_client_metadata_input.dart';
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/token_endpoint_auth_method.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_login_configuration_input.g.dart';

/// UpdateLoginConfigurationInput
///
/// Properties:
/// * [name] - User defined login configuration name
/// * [redirectUris] - OAuth 2.0 Redirect URIs
/// * [postLogoutRedirectUris] - Post Logout Redirect URIs, Used to redirect the user's browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs
/// * [clientSecret] - OAuth2 client secret
/// * [vpDefinition] - VP definition in JSON stringify format
/// * [presentationDefinition] - Presentation Definition
/// * [clientMetadata]
/// * [tokenEndpointAuthMethod]
/// * [failOnMappingConflict] - Interrupts login process if duplications of data fields names will be found
@BuiltValue()
abstract class UpdateLoginConfigurationInput
    implements
        Built<UpdateLoginConfigurationInput,
            UpdateLoginConfigurationInputBuilder> {
  /// User defined login configuration name
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// OAuth 2.0 Redirect URIs
  @BuiltValueField(wireName: r'redirectUris')
  BuiltList<String>? get redirectUris;

  /// Post Logout Redirect URIs, Used to redirect the user's browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs
  @BuiltValueField(wireName: r'postLogoutRedirectUris')
  BuiltList<String>? get postLogoutRedirectUris;

  /// OAuth2 client secret
  @BuiltValueField(wireName: r'clientSecret')
  String? get clientSecret;

  /// VP definition in JSON stringify format
  @BuiltValueField(wireName: r'vpDefinition')
  String? get vpDefinition;

  /// Presentation Definition
  @BuiltValueField(wireName: r'presentationDefinition')
  JsonObject? get presentationDefinition;

  @BuiltValueField(wireName: r'clientMetadata')
  LoginConfigurationClientMetadataInput? get clientMetadata;

  @BuiltValueField(wireName: r'tokenEndpointAuthMethod')
  TokenEndpointAuthMethod? get tokenEndpointAuthMethod;
  // enum tokenEndpointAuthMethodEnum {  client_secret_basic,  client_secret_post,  none,  };

  /// Interrupts login process if duplications of data fields names will be found
  @BuiltValueField(wireName: r'failOnMappingConflict')
  bool? get failOnMappingConflict;

  UpdateLoginConfigurationInput._();

  factory UpdateLoginConfigurationInput(
          [void updates(UpdateLoginConfigurationInputBuilder b)]) =
      _$UpdateLoginConfigurationInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateLoginConfigurationInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateLoginConfigurationInput> get serializer =>
      _$UpdateLoginConfigurationInputSerializer();
}

class _$UpdateLoginConfigurationInputSerializer
    implements PrimitiveSerializer<UpdateLoginConfigurationInput> {
  @override
  final Iterable<Type> types = const [
    UpdateLoginConfigurationInput,
    _$UpdateLoginConfigurationInput
  ];

  @override
  final String wireName = r'UpdateLoginConfigurationInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateLoginConfigurationInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.redirectUris != null) {
      yield r'redirectUris';
      yield serializers.serialize(
        object.redirectUris,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.postLogoutRedirectUris != null) {
      yield r'postLogoutRedirectUris';
      yield serializers.serialize(
        object.postLogoutRedirectUris,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.clientSecret != null) {
      yield r'clientSecret';
      yield serializers.serialize(
        object.clientSecret,
        specifiedType: const FullType(String),
      );
    }
    if (object.vpDefinition != null) {
      yield r'vpDefinition';
      yield serializers.serialize(
        object.vpDefinition,
        specifiedType: const FullType(String),
      );
    }
    if (object.presentationDefinition != null) {
      yield r'presentationDefinition';
      yield serializers.serialize(
        object.presentationDefinition,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.clientMetadata != null) {
      yield r'clientMetadata';
      yield serializers.serialize(
        object.clientMetadata,
        specifiedType: const FullType(LoginConfigurationClientMetadataInput),
      );
    }
    if (object.tokenEndpointAuthMethod != null) {
      yield r'tokenEndpointAuthMethod';
      yield serializers.serialize(
        object.tokenEndpointAuthMethod,
        specifiedType: const FullType(TokenEndpointAuthMethod),
      );
    }
    if (object.failOnMappingConflict != null) {
      yield r'failOnMappingConflict';
      yield serializers.serialize(
        object.failOnMappingConflict,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateLoginConfigurationInput object, {
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
    required UpdateLoginConfigurationInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'redirectUris':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.redirectUris.replace(valueDes);
          break;
        case r'postLogoutRedirectUris':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.postLogoutRedirectUris.replace(valueDes);
          break;
        case r'clientSecret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientSecret = valueDes;
          break;
        case r'vpDefinition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.vpDefinition = valueDes;
          break;
        case r'presentationDefinition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.presentationDefinition = valueDes;
          break;
        case r'clientMetadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(LoginConfigurationClientMetadataInput),
          ) as LoginConfigurationClientMetadataInput;
          result.clientMetadata.replace(valueDes);
          break;
        case r'tokenEndpointAuthMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TokenEndpointAuthMethod),
          ) as TokenEndpointAuthMethod;
          result.tokenEndpointAuthMethod = valueDes;
          break;
        case r'failOnMappingConflict':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.failOnMappingConflict = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateLoginConfigurationInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateLoginConfigurationInputBuilder();
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
