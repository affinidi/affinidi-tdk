//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_get_well_known_open_id_credential_issuer_ok.g.dart';

/// CorsGetWellKnownOpenIdCredentialIssuerOK
///
/// Properties:
/// * [corsGetWellKnownOpenIdCredentialIssuerOk]
@BuiltValue()
abstract class CorsGetWellKnownOpenIdCredentialIssuerOK
    implements
        Built<CorsGetWellKnownOpenIdCredentialIssuerOK,
            CorsGetWellKnownOpenIdCredentialIssuerOKBuilder> {
  @BuiltValueField(wireName: r'corsGetWellKnownOpenIdCredentialIssuerOk')
  String? get corsGetWellKnownOpenIdCredentialIssuerOk;

  CorsGetWellKnownOpenIdCredentialIssuerOK._();

  factory CorsGetWellKnownOpenIdCredentialIssuerOK(
          [void updates(CorsGetWellKnownOpenIdCredentialIssuerOKBuilder b)]) =
      _$CorsGetWellKnownOpenIdCredentialIssuerOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsGetWellKnownOpenIdCredentialIssuerOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsGetWellKnownOpenIdCredentialIssuerOK> get serializer =>
      _$CorsGetWellKnownOpenIdCredentialIssuerOKSerializer();
}

class _$CorsGetWellKnownOpenIdCredentialIssuerOKSerializer
    implements PrimitiveSerializer<CorsGetWellKnownOpenIdCredentialIssuerOK> {
  @override
  final Iterable<Type> types = const [
    CorsGetWellKnownOpenIdCredentialIssuerOK,
    _$CorsGetWellKnownOpenIdCredentialIssuerOK
  ];

  @override
  final String wireName = r'CorsGetWellKnownOpenIdCredentialIssuerOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsGetWellKnownOpenIdCredentialIssuerOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsGetWellKnownOpenIdCredentialIssuerOk != null) {
      yield r'corsGetWellKnownOpenIdCredentialIssuerOk';
      yield serializers.serialize(
        object.corsGetWellKnownOpenIdCredentialIssuerOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsGetWellKnownOpenIdCredentialIssuerOK object, {
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
    required CorsGetWellKnownOpenIdCredentialIssuerOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsGetWellKnownOpenIdCredentialIssuerOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsGetWellKnownOpenIdCredentialIssuerOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsGetWellKnownOpenIdCredentialIssuerOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsGetWellKnownOpenIdCredentialIssuerOKBuilder();
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
