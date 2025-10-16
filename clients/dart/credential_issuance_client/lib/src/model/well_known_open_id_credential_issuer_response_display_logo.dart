//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'well_known_open_id_credential_issuer_response_display_logo.g.dart';

/// WellKnownOpenIdCredentialIssuerResponseDisplayLogo
///
/// Properties:
/// * [uri]
/// * [altText]
@BuiltValue()
abstract class WellKnownOpenIdCredentialIssuerResponseDisplayLogo
    implements
        Built<WellKnownOpenIdCredentialIssuerResponseDisplayLogo,
            WellKnownOpenIdCredentialIssuerResponseDisplayLogoBuilder> {
  @BuiltValueField(wireName: r'uri')
  String get uri;

  @BuiltValueField(wireName: r'alt_text')
  String? get altText;

  WellKnownOpenIdCredentialIssuerResponseDisplayLogo._();

  factory WellKnownOpenIdCredentialIssuerResponseDisplayLogo(
          [void updates(
              WellKnownOpenIdCredentialIssuerResponseDisplayLogoBuilder b)]) =
      _$WellKnownOpenIdCredentialIssuerResponseDisplayLogo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          WellKnownOpenIdCredentialIssuerResponseDisplayLogoBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WellKnownOpenIdCredentialIssuerResponseDisplayLogo>
      get serializer =>
          _$WellKnownOpenIdCredentialIssuerResponseDisplayLogoSerializer();
}

class _$WellKnownOpenIdCredentialIssuerResponseDisplayLogoSerializer
    implements
        PrimitiveSerializer<
            WellKnownOpenIdCredentialIssuerResponseDisplayLogo> {
  @override
  final Iterable<Type> types = const [
    WellKnownOpenIdCredentialIssuerResponseDisplayLogo,
    _$WellKnownOpenIdCredentialIssuerResponseDisplayLogo
  ];

  @override
  final String wireName = r'WellKnownOpenIdCredentialIssuerResponseDisplayLogo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WellKnownOpenIdCredentialIssuerResponseDisplayLogo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'uri';
    yield serializers.serialize(
      object.uri,
      specifiedType: const FullType(String),
    );
    if (object.altText != null) {
      yield r'alt_text';
      yield serializers.serialize(
        object.altText,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WellKnownOpenIdCredentialIssuerResponseDisplayLogo object, {
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
    required WellKnownOpenIdCredentialIssuerResponseDisplayLogoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uri = valueDes;
          break;
        case r'alt_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.altText = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WellKnownOpenIdCredentialIssuerResponseDisplayLogo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WellKnownOpenIdCredentialIssuerResponseDisplayLogoBuilder();
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
