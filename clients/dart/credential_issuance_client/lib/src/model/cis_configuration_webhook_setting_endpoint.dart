//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cis_configuration_webhook_setting_endpoint.g.dart';

/// CisConfigurationWebhookSettingEndpoint
///
/// Properties:
/// * [url] - url endpoint where notification will be sent with issuanceId after user has claimed the VC related to issuanceId
@BuiltValue()
abstract class CisConfigurationWebhookSettingEndpoint
    implements
        Built<CisConfigurationWebhookSettingEndpoint,
            CisConfigurationWebhookSettingEndpointBuilder> {
  /// url endpoint where notification will be sent with issuanceId after user has claimed the VC related to issuanceId
  @BuiltValueField(wireName: r'url')
  String? get url;

  CisConfigurationWebhookSettingEndpoint._();

  factory CisConfigurationWebhookSettingEndpoint(
          [void updates(CisConfigurationWebhookSettingEndpointBuilder b)]) =
      _$CisConfigurationWebhookSettingEndpoint;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CisConfigurationWebhookSettingEndpointBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CisConfigurationWebhookSettingEndpoint> get serializer =>
      _$CisConfigurationWebhookSettingEndpointSerializer();
}

class _$CisConfigurationWebhookSettingEndpointSerializer
    implements PrimitiveSerializer<CisConfigurationWebhookSettingEndpoint> {
  @override
  final Iterable<Type> types = const [
    CisConfigurationWebhookSettingEndpoint,
    _$CisConfigurationWebhookSettingEndpoint
  ];

  @override
  final String wireName = r'CisConfigurationWebhookSettingEndpoint';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CisConfigurationWebhookSettingEndpoint object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CisConfigurationWebhookSettingEndpoint object, {
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
    required CisConfigurationWebhookSettingEndpointBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CisConfigurationWebhookSettingEndpoint deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CisConfigurationWebhookSettingEndpointBuilder();
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
