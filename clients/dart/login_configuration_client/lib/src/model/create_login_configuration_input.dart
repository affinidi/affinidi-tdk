//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_login_configuration_client/src/model/login_configuration_client_metadata_input.dart';
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/id_token_mapping_item.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/token_endpoint_auth_method.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_login_configuration_input.g.dart';

/// CreateLoginConfigurationInput
///
/// Properties:
/// * [name] - User defined login configuration name
/// * [description]
/// * [redirectUris] - OAuth 2.0 Redirect URIs
/// * [postLogoutRedirectUris] - Post Logout Redirect URIs, Used to redirect the user's browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs
/// * [vpDefinition] - VP definition in JSON stringify format
/// * [presentationDefinition] - Presentation Definition
/// * [dcqlQuery] - DCQL query in JSON stringify format
/// * [idTokenMapping] - Fields name/path mapping between the vp_token and the id_token
/// * [clientMetadata]
/// * [claimFormat] - ID token claims output format. Default is array.
/// * [failOnMappingConflict] - Interrupts login process if duplications of data fields names will be found
/// * [scope] - List of groups separated by space
/// * [tokenEndpointAuthMethod]
@BuiltValue()
abstract class CreateLoginConfigurationInput
    implements
        Built<CreateLoginConfigurationInput,
            CreateLoginConfigurationInputBuilder> {
  /// User defined login configuration name
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  /// OAuth 2.0 Redirect URIs
  @BuiltValueField(wireName: r'redirectUris')
  BuiltList<String> get redirectUris;

  /// Post Logout Redirect URIs, Used to redirect the user's browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs
  @BuiltValueField(wireName: r'postLogoutRedirectUris')
  BuiltList<String>? get postLogoutRedirectUris;

  /// VP definition in JSON stringify format
  @BuiltValueField(wireName: r'vpDefinition')
  String? get vpDefinition;

  /// Presentation Definition
  @BuiltValueField(wireName: r'presentationDefinition')
  JsonObject? get presentationDefinition;

  /// DCQL query in JSON stringify format
  @BuiltValueField(wireName: r'dcqlQuery')
  JsonObject? get dcqlQuery;

  /// Fields name/path mapping between the vp_token and the id_token
  @BuiltValueField(wireName: r'idTokenMapping')
  BuiltList<IdTokenMappingItem>? get idTokenMapping;

  @BuiltValueField(wireName: r'clientMetadata')
  LoginConfigurationClientMetadataInput? get clientMetadata;

  /// ID token claims output format. Default is array.
  @BuiltValueField(wireName: r'claimFormat')
  CreateLoginConfigurationInputClaimFormatEnum? get claimFormat;
  // enum claimFormatEnum {  array,  map,  };

  /// Interrupts login process if duplications of data fields names will be found
  @BuiltValueField(wireName: r'failOnMappingConflict')
  bool? get failOnMappingConflict;

  /// List of groups separated by space
  @BuiltValueField(wireName: r'scope')
  String? get scope;

  @BuiltValueField(wireName: r'tokenEndpointAuthMethod')
  TokenEndpointAuthMethod? get tokenEndpointAuthMethod;
  // enum tokenEndpointAuthMethodEnum {  client_secret_basic,  client_secret_post,  none,  };

  CreateLoginConfigurationInput._();

  factory CreateLoginConfigurationInput(
          [void updates(CreateLoginConfigurationInputBuilder b)]) =
      _$CreateLoginConfigurationInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateLoginConfigurationInputBuilder b) =>
      b..failOnMappingConflict = true;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateLoginConfigurationInput> get serializer =>
      _$CreateLoginConfigurationInputSerializer();
}

class _$CreateLoginConfigurationInputSerializer
    implements PrimitiveSerializer<CreateLoginConfigurationInput> {
  @override
  final Iterable<Type> types = const [
    CreateLoginConfigurationInput,
    _$CreateLoginConfigurationInput
  ];

  @override
  final String wireName = r'CreateLoginConfigurationInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateLoginConfigurationInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    yield r'redirectUris';
    yield serializers.serialize(
      object.redirectUris,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.postLogoutRedirectUris != null) {
      yield r'postLogoutRedirectUris';
      yield serializers.serialize(
        object.postLogoutRedirectUris,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
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
    if (object.dcqlQuery != null) {
      yield r'dcqlQuery';
      yield serializers.serialize(
        object.dcqlQuery,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.idTokenMapping != null) {
      yield r'idTokenMapping';
      yield serializers.serialize(
        object.idTokenMapping,
        specifiedType:
            const FullType(BuiltList, [FullType(IdTokenMappingItem)]),
      );
    }
    if (object.clientMetadata != null) {
      yield r'clientMetadata';
      yield serializers.serialize(
        object.clientMetadata,
        specifiedType: const FullType(LoginConfigurationClientMetadataInput),
      );
    }
    if (object.claimFormat != null) {
      yield r'claimFormat';
      yield serializers.serialize(
        object.claimFormat,
        specifiedType:
            const FullType(CreateLoginConfigurationInputClaimFormatEnum),
      );
    }
    if (object.failOnMappingConflict != null) {
      yield r'failOnMappingConflict';
      yield serializers.serialize(
        object.failOnMappingConflict,
        specifiedType: const FullType(bool),
      );
    }
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType(String),
      );
    }
    if (object.tokenEndpointAuthMethod != null) {
      yield r'tokenEndpointAuthMethod';
      yield serializers.serialize(
        object.tokenEndpointAuthMethod,
        specifiedType: const FullType(TokenEndpointAuthMethod),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateLoginConfigurationInput object, {
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
    required CreateLoginConfigurationInputBuilder result,
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
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
        case r'dcqlQuery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.dcqlQuery = valueDes;
          break;
        case r'idTokenMapping':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(IdTokenMappingItem)]),
          ) as BuiltList<IdTokenMappingItem>;
          result.idTokenMapping.replace(valueDes);
          break;
        case r'clientMetadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(LoginConfigurationClientMetadataInput),
          ) as LoginConfigurationClientMetadataInput;
          result.clientMetadata.replace(valueDes);
          break;
        case r'claimFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(CreateLoginConfigurationInputClaimFormatEnum),
          ) as CreateLoginConfigurationInputClaimFormatEnum;
          result.claimFormat = valueDes;
          break;
        case r'failOnMappingConflict':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.failOnMappingConflict = valueDes;
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.scope = valueDes;
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
  CreateLoginConfigurationInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateLoginConfigurationInputBuilder();
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

class CreateLoginConfigurationInputClaimFormatEnum extends EnumClass {
  /// ID token claims output format. Default is array.
  @BuiltValueEnumConst(wireName: r'array')
  static const CreateLoginConfigurationInputClaimFormatEnum array =
      _$createLoginConfigurationInputClaimFormatEnum_array;

  /// ID token claims output format. Default is array.
  @BuiltValueEnumConst(wireName: r'map')
  static const CreateLoginConfigurationInputClaimFormatEnum map =
      _$createLoginConfigurationInputClaimFormatEnum_map;

  static Serializer<CreateLoginConfigurationInputClaimFormatEnum>
      get serializer =>
          _$createLoginConfigurationInputClaimFormatEnumSerializer;

  const CreateLoginConfigurationInputClaimFormatEnum._(String name)
      : super(name);

  static BuiltSet<CreateLoginConfigurationInputClaimFormatEnum> get values =>
      _$createLoginConfigurationInputClaimFormatEnumValues;
  static CreateLoginConfigurationInputClaimFormatEnum valueOf(String name) =>
      _$createLoginConfigurationInputClaimFormatEnumValueOf(name);
}
