//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iota_client/src/model/iota_configuration_dto_client_metadata.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_configuration_by_id_input.g.dart';

/// UpdateConfigurationByIdInput
///
/// Properties:
/// * [name] - The name of the configuration to quickly identify the resource.
/// * [walletAri] - The unique resource identifier of the Wallet used to sign the request token.
/// * [iotaResponseWebhookURL] - The webhook URL is used for callback when the data is ready.
/// * [enableVerification] - Cryptographically verifies the data shared by the user when enabled.
/// * [enableConsentAuditLog] - Records the user's consent when they share their data, including the type of data shared when enabled.
/// * [tokenMaxAge] - This is the lifetime of the signed request token during the data-sharing flow.
/// * [description] - An optional description of what the configuration is used for.
/// * [clientMetadata] 
/// * [mode] - Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
/// * [redirectUris] - List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect.
/// * [enableIdvProviders] - Enables identity verification from user with a 3rd-party provider when a verified identity document is not found.
@BuiltValue()
abstract class UpdateConfigurationByIdInput implements Built<UpdateConfigurationByIdInput, UpdateConfigurationByIdInputBuilder> {
  /// The name of the configuration to quickly identify the resource.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The unique resource identifier of the Wallet used to sign the request token.
  @BuiltValueField(wireName: r'walletAri')
  String? get walletAri;

  /// The webhook URL is used for callback when the data is ready.
  @BuiltValueField(wireName: r'iotaResponseWebhookURL')
  String? get iotaResponseWebhookURL;

  /// Cryptographically verifies the data shared by the user when enabled.
  @BuiltValueField(wireName: r'enableVerification')
  bool? get enableVerification;

  /// Records the user's consent when they share their data, including the type of data shared when enabled.
  @BuiltValueField(wireName: r'enableConsentAuditLog')
  bool? get enableConsentAuditLog;

  /// This is the lifetime of the signed request token during the data-sharing flow.
  @BuiltValueField(wireName: r'tokenMaxAge')
  int? get tokenMaxAge;

  /// An optional description of what the configuration is used for.
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'clientMetadata')
  IotaConfigurationDtoClientMetadata? get clientMetadata;

  /// Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
  @BuiltValueField(wireName: r'mode')
  UpdateConfigurationByIdInputModeEnum? get mode;
  // enum modeEnum {  redirect,  websocket,  };

  /// List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect.
  @BuiltValueField(wireName: r'redirectUris')
  BuiltList<String>? get redirectUris;

  /// Enables identity verification from user with a 3rd-party provider when a verified identity document is not found.
  @BuiltValueField(wireName: r'enableIdvProviders')
  bool? get enableIdvProviders;

  UpdateConfigurationByIdInput._();

  factory UpdateConfigurationByIdInput([void updates(UpdateConfigurationByIdInputBuilder b)]) = _$UpdateConfigurationByIdInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateConfigurationByIdInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateConfigurationByIdInput> get serializer => _$UpdateConfigurationByIdInputSerializer();
}

class _$UpdateConfigurationByIdInputSerializer implements PrimitiveSerializer<UpdateConfigurationByIdInput> {
  @override
  final Iterable<Type> types = const [UpdateConfigurationByIdInput, _$UpdateConfigurationByIdInput];

  @override
  final String wireName = r'UpdateConfigurationByIdInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateConfigurationByIdInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.walletAri != null) {
      yield r'walletAri';
      yield serializers.serialize(
        object.walletAri,
        specifiedType: const FullType(String),
      );
    }
    if (object.iotaResponseWebhookURL != null) {
      yield r'iotaResponseWebhookURL';
      yield serializers.serialize(
        object.iotaResponseWebhookURL,
        specifiedType: const FullType(String),
      );
    }
    if (object.enableVerification != null) {
      yield r'enableVerification';
      yield serializers.serialize(
        object.enableVerification,
        specifiedType: const FullType(bool),
      );
    }
    if (object.enableConsentAuditLog != null) {
      yield r'enableConsentAuditLog';
      yield serializers.serialize(
        object.enableConsentAuditLog,
        specifiedType: const FullType(bool),
      );
    }
    if (object.tokenMaxAge != null) {
      yield r'tokenMaxAge';
      yield serializers.serialize(
        object.tokenMaxAge,
        specifiedType: const FullType(int),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.clientMetadata != null) {
      yield r'clientMetadata';
      yield serializers.serialize(
        object.clientMetadata,
        specifiedType: const FullType(IotaConfigurationDtoClientMetadata),
      );
    }
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(UpdateConfigurationByIdInputModeEnum),
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
    UpdateConfigurationByIdInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateConfigurationByIdInputBuilder result,
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
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
            specifiedType: const FullType(UpdateConfigurationByIdInputModeEnum),
          ) as UpdateConfigurationByIdInputModeEnum;
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
  UpdateConfigurationByIdInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateConfigurationByIdInputBuilder();
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

class UpdateConfigurationByIdInputModeEnum extends EnumClass {

  /// Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
  @BuiltValueEnumConst(wireName: r'redirect')
  static const UpdateConfigurationByIdInputModeEnum redirect = _$updateConfigurationByIdInputModeEnum_redirect;
  /// Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
  @BuiltValueEnumConst(wireName: r'websocket')
  static const UpdateConfigurationByIdInputModeEnum websocket = _$updateConfigurationByIdInputModeEnum_websocket;

  static Serializer<UpdateConfigurationByIdInputModeEnum> get serializer => _$updateConfigurationByIdInputModeEnumSerializer;

  const UpdateConfigurationByIdInputModeEnum._(String name): super(name);

  static BuiltSet<UpdateConfigurationByIdInputModeEnum> get values => _$updateConfigurationByIdInputModeEnumValues;
  static UpdateConfigurationByIdInputModeEnum valueOf(String name) => _$updateConfigurationByIdInputModeEnumValueOf(name);
}

