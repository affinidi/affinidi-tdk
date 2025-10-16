//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'well_known_open_id_credential_issuer_response_credentials_supported_inner.g.dart';

/// WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner
///
/// Properties:
/// * [credentialTypeId] - It is a String that identifies a Credential that is being requested to be issued.
/// * [jsonSchemaUrl] - credential jsonLdContextUrl
/// * [jsonLdContextUrl] - credential jsonSchemaUrl
@BuiltValue()
abstract class WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner
    implements
        Built<WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner,
            WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInnerBuilder> {
  /// It is a String that identifies a Credential that is being requested to be issued.
  @BuiltValueField(wireName: r'credentialTypeId')
  String get credentialTypeId;

  /// credential jsonLdContextUrl
  @BuiltValueField(wireName: r'jsonSchemaUrl')
  String get jsonSchemaUrl;

  /// credential jsonSchemaUrl
  @BuiltValueField(wireName: r'jsonLdContextUrl')
  String get jsonLdContextUrl;

  WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner._();

  factory WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner(
          [void updates(
              WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInnerBuilder
                  b)]) =
      _$WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInnerBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
          WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner>
      get serializer =>
          _$WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInnerSerializer();
}

class _$WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInnerSerializer
    implements
        PrimitiveSerializer<
            WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner> {
  @override
  final Iterable<Type> types = const [
    WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner,
    _$WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner
  ];

  @override
  final String wireName =
      r'WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'credentialTypeId';
    yield serializers.serialize(
      object.credentialTypeId,
      specifiedType: const FullType(String),
    );
    yield r'jsonSchemaUrl';
    yield serializers.serialize(
      object.jsonSchemaUrl,
      specifiedType: const FullType(String),
    );
    yield r'jsonLdContextUrl';
    yield serializers.serialize(
      object.jsonLdContextUrl,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner object, {
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
    required WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInnerBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credentialTypeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.credentialTypeId = valueDes;
          break;
        case r'jsonSchemaUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.jsonSchemaUrl = valueDes;
          break;
        case r'jsonLdContextUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.jsonLdContextUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInnerBuilder();
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
