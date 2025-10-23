//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_issuance_client/src/model/well_known_open_id_credential_issuer_response_display_logo.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'well_known_open_id_credential_issuer_response_display.g.dart';

/// WellKnownOpenIdCredentialIssuerResponseDisplay
///
/// Properties:
/// * [name]
/// * [locale]
/// * [logo]
@BuiltValue()
abstract class WellKnownOpenIdCredentialIssuerResponseDisplay
    implements
        Built<WellKnownOpenIdCredentialIssuerResponseDisplay,
            WellKnownOpenIdCredentialIssuerResponseDisplayBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'locale')
  String? get locale;

  @BuiltValueField(wireName: r'logo')
  WellKnownOpenIdCredentialIssuerResponseDisplayLogo? get logo;

  WellKnownOpenIdCredentialIssuerResponseDisplay._();

  factory WellKnownOpenIdCredentialIssuerResponseDisplay(
          [void updates(
              WellKnownOpenIdCredentialIssuerResponseDisplayBuilder b)]) =
      _$WellKnownOpenIdCredentialIssuerResponseDisplay;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          WellKnownOpenIdCredentialIssuerResponseDisplayBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WellKnownOpenIdCredentialIssuerResponseDisplay>
      get serializer =>
          _$WellKnownOpenIdCredentialIssuerResponseDisplaySerializer();
}

class _$WellKnownOpenIdCredentialIssuerResponseDisplaySerializer
    implements
        PrimitiveSerializer<WellKnownOpenIdCredentialIssuerResponseDisplay> {
  @override
  final Iterable<Type> types = const [
    WellKnownOpenIdCredentialIssuerResponseDisplay,
    _$WellKnownOpenIdCredentialIssuerResponseDisplay
  ];

  @override
  final String wireName = r'WellKnownOpenIdCredentialIssuerResponseDisplay';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WellKnownOpenIdCredentialIssuerResponseDisplay object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.locale != null) {
      yield r'locale';
      yield serializers.serialize(
        object.locale,
        specifiedType: const FullType(String),
      );
    }
    if (object.logo != null) {
      yield r'logo';
      yield serializers.serialize(
        object.logo,
        specifiedType:
            const FullType(WellKnownOpenIdCredentialIssuerResponseDisplayLogo),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WellKnownOpenIdCredentialIssuerResponseDisplay object, {
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
    required WellKnownOpenIdCredentialIssuerResponseDisplayBuilder result,
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
        case r'locale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.locale = valueDes;
          break;
        case r'logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                WellKnownOpenIdCredentialIssuerResponseDisplayLogo),
          ) as WellKnownOpenIdCredentialIssuerResponseDisplayLogo;
          result.logo.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WellKnownOpenIdCredentialIssuerResponseDisplay deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WellKnownOpenIdCredentialIssuerResponseDisplayBuilder();
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
