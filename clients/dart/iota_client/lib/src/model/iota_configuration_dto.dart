//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iota_client/src/model/iota_configuration_dto_client_metadata.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'iota_configuration_dto.g.dart';

/// IotaConfigurationDto
///
/// Properties:
/// * [ari] - This is a unique resource identifier of the Affinidi Iota Framework configuration.
/// * [configurationId] - ID of the Affinidi Iota Framework configuration.
/// * [name] - The name of the configuration to quickly identify the resource.
/// * [projectId] - The ID of the project.
/// * [walletAri] - The unique resource identifier of the Wallet used to sign the request token.
/// * [tokenMaxAge] - This is the lifetime of the signed request token during the data-sharing flow.
/// * [iotaResponseWebhookURL] - The webhook URL is used for callback when the data is ready.
/// * [enableVerification] - Cryptographically verifies the data shared by the user when enabled.
/// * [enableConsentAuditLog] - Records the consent the user gave when they shared their data, including the type of data shared.
/// * [clientMetadata]
/// * [mode] - Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
/// * [redirectUris] - List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect.
/// * [enableIdvProviders] - Enables identity verification from user with a 3rd-party provider when a verified identity document is not found.
@BuiltValue()
abstract class IotaConfigurationDto
    implements Built<IotaConfigurationDto, IotaConfigurationDtoBuilder> {
  /// This is a unique resource identifier of the Affinidi Iota Framework configuration.
  @BuiltValueField(wireName: r'ari')
  String get ari;

  /// ID of the Affinidi Iota Framework configuration.
  @BuiltValueField(wireName: r'configurationId')
  String get configurationId;

  /// The name of the configuration to quickly identify the resource.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// The ID of the project.
  @BuiltValueField(wireName: r'projectId')
  String get projectId;

  /// The unique resource identifier of the Wallet used to sign the request token.
  @BuiltValueField(wireName: r'walletAri')
  String get walletAri;

  /// This is the lifetime of the signed request token during the data-sharing flow.
  @BuiltValueField(wireName: r'tokenMaxAge')
  int get tokenMaxAge;

  /// The webhook URL is used for callback when the data is ready.
  @BuiltValueField(wireName: r'iotaResponseWebhookURL')
  String? get iotaResponseWebhookURL;

  /// Cryptographically verifies the data shared by the user when enabled.
  @BuiltValueField(wireName: r'enableVerification')
  bool get enableVerification;

  /// Records the consent the user gave when they shared their data, including the type of data shared.
  @BuiltValueField(wireName: r'enableConsentAuditLog')
  bool get enableConsentAuditLog;

  @BuiltValueField(wireName: r'clientMetadata')
  IotaConfigurationDtoClientMetadata get clientMetadata;

  /// Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
  @BuiltValueField(wireName: r'mode')
  IotaConfigurationDtoModeEnum? get mode;
  // enum modeEnum {  redirect,  websocket,  };

  /// List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect.
  @BuiltValueField(wireName: r'redirectUris')
  BuiltList<String>? get redirectUris;

  /// Enables identity verification from user with a 3rd-party provider when a verified identity document is not found.
  @BuiltValueField(wireName: r'enableIdvProviders')
  bool? get enableIdvProviders;

  IotaConfigurationDto._();

  factory IotaConfigurationDto([void updates(IotaConfigurationDtoBuilder b)]) =
      _$IotaConfigurationDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IotaConfigurationDtoBuilder b) =>
      b..mode = const IotaConfigurationDtoModeEnum._('websocket');

  @BuiltValueSerializer(custom: true)
  static Serializer<IotaConfigurationDto> get serializer =>
      _$IotaConfigurationDtoSerializer();
}

class _$IotaConfigurationDtoSerializer
    implements PrimitiveSerializer<IotaConfigurationDto> {
  @override
  final Iterable<Type> types = const [
    IotaConfigurationDto,
    _$IotaConfigurationDto
  ];

  @override
  final String wireName = r'IotaConfigurationDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IotaConfigurationDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ari';
    yield serializers.serialize(
      object.ari,
      specifiedType: const FullType(String),
    );
    yield r'configurationId';
    yield serializers.serialize(
      object.configurationId,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'projectId';
    yield serializers.serialize(
      object.projectId,
      specifiedType: const FullType(String),
    );
    yield r'walletAri';
    yield serializers.serialize(
      object.walletAri,
      specifiedType: const FullType(String),
    );
    yield r'tokenMaxAge';
    yield serializers.serialize(
      object.tokenMaxAge,
      specifiedType: const FullType(int),
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
    yield r'clientMetadata';
    yield serializers.serialize(
      object.clientMetadata,
      specifiedType: const FullType(IotaConfigurationDtoClientMetadata),
    );
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(IotaConfigurationDtoModeEnum),
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
    IotaConfigurationDto object, {
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
    required IotaConfigurationDtoBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'projectId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.projectId = valueDes;
          break;
        case r'walletAri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.walletAri = valueDes;
          break;
        case r'tokenMaxAge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tokenMaxAge = valueDes;
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
        case r'clientMetadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IotaConfigurationDtoClientMetadata),
          ) as IotaConfigurationDtoClientMetadata;
          result.clientMetadata = valueDes;
          break;
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IotaConfigurationDtoModeEnum),
          ) as IotaConfigurationDtoModeEnum;
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
  IotaConfigurationDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IotaConfigurationDtoBuilder();
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

class IotaConfigurationDtoModeEnum extends EnumClass {
  /// Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
  @BuiltValueEnumConst(wireName: r'redirect')
  static const IotaConfigurationDtoModeEnum redirect =
      _$iotaConfigurationDtoModeEnum_redirect;

  /// Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
  @BuiltValueEnumConst(wireName: r'websocket')
  static const IotaConfigurationDtoModeEnum websocket =
      _$iotaConfigurationDtoModeEnum_websocket;

  static Serializer<IotaConfigurationDtoModeEnum> get serializer =>
      _$iotaConfigurationDtoModeEnumSerializer;

  const IotaConfigurationDtoModeEnum._(String name) : super(name);

  static BuiltSet<IotaConfigurationDtoModeEnum> get values =>
      _$iotaConfigurationDtoModeEnumValues;
  static IotaConfigurationDtoModeEnum valueOf(String name) =>
      _$iotaConfigurationDtoModeEnumValueOf(name);
}
