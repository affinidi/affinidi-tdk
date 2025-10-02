//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iota_client/src/model/iota_configuration_dto_client_metadata.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_iota_configuration_input.g.dart';

/// CreateIotaConfigurationInput
///
/// Properties:
/// * [name] - The name of the configuration to quickly identify the resource.
/// * [description] - An optional description of what the configuration is used for.
/// * [walletAri] - The unique resource identifier of the Wallet used to sign the request token.
/// * [iotaResponseWebhookURL] - The webhook URL is used for callback when the data is ready.
/// * [enableVerification] - Cryptographically verifies the data shared by the user when enabled.
/// * [enableConsentAuditLog] - Records the user's consent when they share their data, including the type of data shared when enabled.
/// * [tokenMaxAge] - This is the lifetime of the signed request token during the data-sharing flow.
/// * [clientMetadata]
/// * [mode] - Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
/// * [redirectUris] - List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect.
/// * [enableIdvProviders] - Enables identity verification from user with a 3rd-party provider when a verified identity document is not found.
@BuiltValue()
abstract class CreateIotaConfigurationInput
    implements
        Built<CreateIotaConfigurationInput,
            CreateIotaConfigurationInputBuilder> {
  /// The name of the configuration to quickly identify the resource.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// An optional description of what the configuration is used for.
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// The unique resource identifier of the Wallet used to sign the request token.
  @BuiltValueField(wireName: r'walletAri')
  String get walletAri;

  /// The webhook URL is used for callback when the data is ready.
  @BuiltValueField(wireName: r'iotaResponseWebhookURL')
  String? get iotaResponseWebhookURL;

  /// Cryptographically verifies the data shared by the user when enabled.
  @BuiltValueField(wireName: r'enableVerification')
  bool get enableVerification;

  /// Records the user's consent when they share their data, including the type of data shared when enabled.
  @BuiltValueField(wireName: r'enableConsentAuditLog')
  bool get enableConsentAuditLog;

  /// This is the lifetime of the signed request token during the data-sharing flow.
  @BuiltValueField(wireName: r'tokenMaxAge')
  int? get tokenMaxAge;

  @BuiltValueField(wireName: r'clientMetadata')
  IotaConfigurationDtoClientMetadata get clientMetadata;

  /// Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
  @BuiltValueField(wireName: r'mode')
  CreateIotaConfigurationInputModeEnum? get mode;
  // enum modeEnum {  redirect,  websocket,  };

  /// List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect.
  @BuiltValueField(wireName: r'redirectUris')
  BuiltList<String>? get redirectUris;

  /// Enables identity verification from user with a 3rd-party provider when a verified identity document is not found.
  @BuiltValueField(wireName: r'enableIdvProviders')
  bool? get enableIdvProviders;

  CreateIotaConfigurationInput._();

  factory CreateIotaConfigurationInput(
          [void updates(CreateIotaConfigurationInputBuilder b)]) =
      _$CreateIotaConfigurationInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateIotaConfigurationInputBuilder b) =>
      b..mode = const CreateIotaConfigurationInputModeEnum._('websocket');

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateIotaConfigurationInput> get serializer =>
      _$CreateIotaConfigurationInputSerializer();
}

class _$CreateIotaConfigurationInputSerializer
    implements PrimitiveSerializer<CreateIotaConfigurationInput> {
  @override
  final Iterable<Type> types = const [
    CreateIotaConfigurationInput,
    _$CreateIotaConfigurationInput
  ];

  @override
  final String wireName = r'CreateIotaConfigurationInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateIotaConfigurationInput object, {
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
    yield r'walletAri';
    yield serializers.serialize(
      object.walletAri,
      specifiedType: const FullType(String),
    );
    if (object.iotaResponseWebhookURL != null) {
      yield r'iotaResponseWebhookURL';
      yield serializers.serialize(
        object.iotaResponseWebhookURL,
        specifiedType: const FullType(String),
      );
    }
    yield r'enableVerification';
    yield serializers.serialize(
      object.enableVerification,
      specifiedType: const FullType(bool),
    );
    yield r'enableConsentAuditLog';
    yield serializers.serialize(
      object.enableConsentAuditLog,
      specifiedType: const FullType(bool),
    );
    if (object.tokenMaxAge != null) {
      yield r'tokenMaxAge';
      yield serializers.serialize(
        object.tokenMaxAge,
        specifiedType: const FullType(int),
      );
    }
    yield r'clientMetadata';
    yield serializers.serialize(
      object.clientMetadata,
      specifiedType: const FullType(IotaConfigurationDtoClientMetadata),
    );
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(CreateIotaConfigurationInputModeEnum),
      );
    }
    if (object.redirectUris != null) {
      yield r'redirectUris';
      yield serializers.serialize(
        object.redirectUris,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.enableIdvProviders != null) {
      yield r'enableIdvProviders';
      yield serializers.serialize(
        object.enableIdvProviders,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateIotaConfigurationInput object, {
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
    required CreateIotaConfigurationInputBuilder result,
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
        case r'walletAri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.walletAri = valueDes;
          break;
        case r'iotaResponseWebhookURL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.iotaResponseWebhookURL = valueDes;
          break;
        case r'enableVerification':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enableVerification = valueDes;
          break;
        case r'enableConsentAuditLog':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enableConsentAuditLog = valueDes;
          break;
        case r'tokenMaxAge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tokenMaxAge = valueDes;
          break;
        case r'clientMetadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IotaConfigurationDtoClientMetadata),
          ) as IotaConfigurationDtoClientMetadata;
          result.clientMetadata.replace(valueDes);
          break;
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateIotaConfigurationInputModeEnum),
          ) as CreateIotaConfigurationInputModeEnum;
          result.mode = valueDes;
          break;
        case r'redirectUris':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.redirectUris.replace(valueDes);
          break;
        case r'enableIdvProviders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enableIdvProviders = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateIotaConfigurationInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateIotaConfigurationInputBuilder();
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

class CreateIotaConfigurationInputModeEnum extends EnumClass {
  /// Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
  @BuiltValueEnumConst(wireName: r'redirect')
  static const CreateIotaConfigurationInputModeEnum redirect =
      _$createIotaConfigurationInputModeEnum_redirect;

  /// Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
  @BuiltValueEnumConst(wireName: r'websocket')
  static const CreateIotaConfigurationInputModeEnum websocket =
      _$createIotaConfigurationInputModeEnum_websocket;

  static Serializer<CreateIotaConfigurationInputModeEnum> get serializer =>
      _$createIotaConfigurationInputModeEnumSerializer;

  const CreateIotaConfigurationInputModeEnum._(String name) : super(name);

  static BuiltSet<CreateIotaConfigurationInputModeEnum> get values =>
      _$createIotaConfigurationInputModeEnumValues;
  static CreateIotaConfigurationInputModeEnum valueOf(String name) =>
      _$createIotaConfigurationInputModeEnumValueOf(name);
}
