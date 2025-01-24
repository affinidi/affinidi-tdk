//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_issuance_client/src/model/cis_configuration_webhook_setting_endpoint.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cis_configuration_webhook_setting.g.dart';

/// Webhook setting to notify developers for claimed VC
///
/// Properties:
/// * [enabled] - flag to enabled or disabled the webhook
/// * [endpoint] 
@BuiltValue()
abstract class CisConfigurationWebhookSetting implements Built<CisConfigurationWebhookSetting, CisConfigurationWebhookSettingBuilder> {
  /// flag to enabled or disabled the webhook
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'endpoint')
  CisConfigurationWebhookSettingEndpoint? get endpoint;

  CisConfigurationWebhookSetting._();

  factory CisConfigurationWebhookSetting([void updates(CisConfigurationWebhookSettingBuilder b)]) = _$CisConfigurationWebhookSetting;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CisConfigurationWebhookSettingBuilder b) => b
      ..enabled = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<CisConfigurationWebhookSetting> get serializer => _$CisConfigurationWebhookSettingSerializer();
}

class _$CisConfigurationWebhookSettingSerializer implements PrimitiveSerializer<CisConfigurationWebhookSetting> {
  @override
  final Iterable<Type> types = const [CisConfigurationWebhookSetting, _$CisConfigurationWebhookSetting];

  @override
  final String wireName = r'CisConfigurationWebhookSetting';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CisConfigurationWebhookSetting object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.endpoint != null) {
      yield r'endpoint';
      yield serializers.serialize(
        object.endpoint,
        specifiedType: const FullType(CisConfigurationWebhookSettingEndpoint),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CisConfigurationWebhookSetting object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CisConfigurationWebhookSettingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'endpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CisConfigurationWebhookSettingEndpoint),
          ) as CisConfigurationWebhookSettingEndpoint;
          result.endpoint.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CisConfigurationWebhookSetting deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CisConfigurationWebhookSettingBuilder();
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

