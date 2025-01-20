//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/id_token_mapping_item.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/login_configuration_client_metadata_output.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/token_endpoint_auth_method.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_configuration_object.g.dart';

/// LoginConfigurationObject
///
/// Properties:
/// * [ari] - Configuration ari
/// * [configurationId] - Configuration id
/// * [projectId] - Project id
/// * [name] - User defined login configuration name
/// * [redirectUris] - OAuth 2.0 Redirect URIs
/// * [postLogoutRedirectUris] - Post Logout Redirect URIs, Used to redirect the user's browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs
/// * [scope] - OAuth 2.0 Client Scope
/// * [clientId] - OAuth 2.0 Client ID
/// * [creationDate] - OAuth 2.0 Client Creation Date
/// * [vpDefinition] - VP definition in JSON stringify format
/// * [presentationDefinition] - Presentation Definition
/// * [idTokenMapping] - Fields name/path mapping between the vp_token and the id_token
/// * [clientMetadata] 
/// * [tokenEndpointAuthMethod] 
@BuiltValue()
abstract class LoginConfigurationObject implements Built<LoginConfigurationObject, LoginConfigurationObjectBuilder> {
  /// Configuration ari
  @BuiltValueField(wireName: r'ari')
  String get ari;

  /// Configuration id
  @BuiltValueField(wireName: r'configurationId')
  String? get configurationId;

  /// Project id
  @BuiltValueField(wireName: r'projectId')
  String get projectId;

  /// User defined login configuration name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// OAuth 2.0 Redirect URIs
  @BuiltValueField(wireName: r'redirectUris')
  BuiltList<String>? get redirectUris;

  /// Post Logout Redirect URIs, Used to redirect the user's browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs
  @BuiltValueField(wireName: r'postLogoutRedirectUris')
  BuiltList<String>? get postLogoutRedirectUris;

  /// OAuth 2.0 Client Scope
  @BuiltValueField(wireName: r'scope')
  String? get scope;

  /// OAuth 2.0 Client ID
  @BuiltValueField(wireName: r'clientId')
  String get clientId;

  /// OAuth 2.0 Client Creation Date
  @BuiltValueField(wireName: r'creationDate')
  String get creationDate;

  /// VP definition in JSON stringify format
  @BuiltValueField(wireName: r'vpDefinition')
  String get vpDefinition;

  /// Presentation Definition
  @BuiltValueField(wireName: r'presentationDefinition')
  JsonObject? get presentationDefinition;

  /// Fields name/path mapping between the vp_token and the id_token
  @BuiltValueField(wireName: r'idTokenMapping')
  BuiltList<IdTokenMappingItem> get idTokenMapping;

  @BuiltValueField(wireName: r'clientMetadata')
  LoginConfigurationClientMetadataOutput get clientMetadata;

  @BuiltValueField(wireName: r'tokenEndpointAuthMethod')
  TokenEndpointAuthMethod get tokenEndpointAuthMethod;
  // enum tokenEndpointAuthMethodEnum {  client_secret_basic,  client_secret_post,  none,  };

  LoginConfigurationObject._();

  factory LoginConfigurationObject([void updates(LoginConfigurationObjectBuilder b)]) = _$LoginConfigurationObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LoginConfigurationObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LoginConfigurationObject> get serializer => _$LoginConfigurationObjectSerializer();
}

class _$LoginConfigurationObjectSerializer implements PrimitiveSerializer<LoginConfigurationObject> {
  @override
  final Iterable<Type> types = const [LoginConfigurationObject, _$LoginConfigurationObject];

  @override
  final String wireName = r'LoginConfigurationObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LoginConfigurationObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ari';
    yield serializers.serialize(
      object.ari,
      specifiedType: const FullType(String),
    );
    if (object.configurationId != null) {
      yield r'configurationId';
      yield serializers.serialize(
        object.configurationId,
        specifiedType: const FullType(String),
      );
    }
    yield r'projectId';
    yield serializers.serialize(
      object.projectId,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
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
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType(String),
      );
    }
    yield r'clientId';
    yield serializers.serialize(
      object.clientId,
      specifiedType: const FullType(String),
    );
    yield r'creationDate';
    yield serializers.serialize(
      object.creationDate,
      specifiedType: const FullType(String),
    );
    yield r'vpDefinition';
    yield serializers.serialize(
      object.vpDefinition,
      specifiedType: const FullType(String),
    );
    if (object.presentationDefinition != null) {
      yield r'presentationDefinition';
      yield serializers.serialize(
        object.presentationDefinition,
        specifiedType: const FullType(JsonObject),
      );
    }
    yield r'idTokenMapping';
    yield serializers.serialize(
      object.idTokenMapping,
      specifiedType: const FullType(BuiltList, [FullType(IdTokenMappingItem)]),
    );
    yield r'clientMetadata';
    yield serializers.serialize(
      object.clientMetadata,
      specifiedType: const FullType(LoginConfigurationClientMetadataOutput),
    );
    yield r'tokenEndpointAuthMethod';
    yield serializers.serialize(
      object.tokenEndpointAuthMethod,
      specifiedType: const FullType(TokenEndpointAuthMethod),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LoginConfigurationObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LoginConfigurationObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ari':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ari = valueDes;
          break;
        case r'configurationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.configurationId = valueDes;
          break;
        case r'projectId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.projectId = valueDes;
          break;
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
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.scope = valueDes;
          break;
        case r'clientId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientId = valueDes;
          break;
        case r'creationDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.creationDate = valueDes;
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
        case r'idTokenMapping':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IdTokenMappingItem)]),
          ) as BuiltList<IdTokenMappingItem>;
          result.idTokenMapping.replace(valueDes);
          break;
        case r'clientMetadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LoginConfigurationClientMetadataOutput),
          ) as LoginConfigurationClientMetadataOutput;
          result.clientMetadata = valueDes;
          break;
        case r'tokenEndpointAuthMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TokenEndpointAuthMethod),
          ) as TokenEndpointAuthMethod;
          result.tokenEndpointAuthMethod = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LoginConfigurationObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoginConfigurationObjectBuilder();
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

