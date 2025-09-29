//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/login_configuration_client_metadata_output.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/create_login_configuration_output_auth.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_login_configuration_output.g.dart';

/// CreateLoginConfigurationOutput
///
/// Properties:
/// * [ari] - Configuration ari
/// * [projectId] - Project id
/// * [configurationId] - Configuration id
/// * [name] - User defined login configuration name
/// * [auth]
/// * [redirectUris] - OAuth 2.0 Redirect URIs
/// * [clientMetadata]
/// * [creationDate] - OAuth 2.0 Client Creation Date
/// * [postLogoutRedirectUris] - Post Logout Redirect URIs, Used to redirect the user's browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs
@BuiltValue()
abstract class CreateLoginConfigurationOutput
    implements
        Built<CreateLoginConfigurationOutput,
            CreateLoginConfigurationOutputBuilder> {
  /// Configuration ari
  @BuiltValueField(wireName: r'ari')
  String get ari;

  /// Project id
  @BuiltValueField(wireName: r'projectId')
  String get projectId;

  /// Configuration id
  @BuiltValueField(wireName: r'configurationId')
  String? get configurationId;

  /// User defined login configuration name
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'auth')
  CreateLoginConfigurationOutputAuth get auth;

  /// OAuth 2.0 Redirect URIs
  @BuiltValueField(wireName: r'redirectUris')
  BuiltList<String> get redirectUris;

  @BuiltValueField(wireName: r'clientMetadata')
  LoginConfigurationClientMetadataOutput get clientMetadata;

  /// OAuth 2.0 Client Creation Date
  @BuiltValueField(wireName: r'creationDate')
  String get creationDate;

  /// Post Logout Redirect URIs, Used to redirect the user's browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs
  @BuiltValueField(wireName: r'postLogoutRedirectUris')
  BuiltList<String>? get postLogoutRedirectUris;

  CreateLoginConfigurationOutput._();

  factory CreateLoginConfigurationOutput(
          [void updates(CreateLoginConfigurationOutputBuilder b)]) =
      _$CreateLoginConfigurationOutput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateLoginConfigurationOutputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateLoginConfigurationOutput> get serializer =>
      _$CreateLoginConfigurationOutputSerializer();
}

class _$CreateLoginConfigurationOutputSerializer
    implements PrimitiveSerializer<CreateLoginConfigurationOutput> {
  @override
  final Iterable<Type> types = const [
    CreateLoginConfigurationOutput,
    _$CreateLoginConfigurationOutput
  ];

  @override
  final String wireName = r'CreateLoginConfigurationOutput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateLoginConfigurationOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ari';
    yield serializers.serialize(
      object.ari,
      specifiedType: const FullType(String),
    );
    yield r'projectId';
    yield serializers.serialize(
      object.projectId,
      specifiedType: const FullType(String),
    );
    if (object.configurationId != null) {
      yield r'configurationId';
      yield serializers.serialize(
        object.configurationId,
        specifiedType: const FullType(String),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'auth';
    yield serializers.serialize(
      object.auth,
      specifiedType: const FullType(CreateLoginConfigurationOutputAuth),
    );
    yield r'redirectUris';
    yield serializers.serialize(
      object.redirectUris,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'clientMetadata';
    yield serializers.serialize(
      object.clientMetadata,
      specifiedType: const FullType(LoginConfigurationClientMetadataOutput),
    );
    yield r'creationDate';
    yield serializers.serialize(
      object.creationDate,
      specifiedType: const FullType(String),
    );
    if (object.postLogoutRedirectUris != null) {
      yield r'postLogoutRedirectUris';
      yield serializers.serialize(
        object.postLogoutRedirectUris,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateLoginConfigurationOutput object, {
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
    required CreateLoginConfigurationOutputBuilder result,
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
        case r'projectId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.projectId = valueDes;
          break;
        case r'configurationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.configurationId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'auth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateLoginConfigurationOutputAuth),
          ) as CreateLoginConfigurationOutputAuth;
          result.auth.replace(valueDes);
          break;
        case r'redirectUris':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.redirectUris.replace(valueDes);
          break;
        case r'clientMetadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(LoginConfigurationClientMetadataOutput),
          ) as LoginConfigurationClientMetadataOutput;
          result.clientMetadata = valueDes.toBuilder();
          break;
        case r'creationDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.creationDate = valueDes;
          break;
        case r'postLogoutRedirectUris':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.postLogoutRedirectUris.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateLoginConfigurationOutput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateLoginConfigurationOutputBuilder();
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
