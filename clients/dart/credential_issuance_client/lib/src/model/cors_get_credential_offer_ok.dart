//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_get_credential_offer_ok.g.dart';

/// CorsGetCredentialOfferOK
///
/// Properties:
/// * [corsGetCredentialOfferOk]
@BuiltValue()
abstract class CorsGetCredentialOfferOK
    implements
        Built<CorsGetCredentialOfferOK, CorsGetCredentialOfferOKBuilder> {
  @BuiltValueField(wireName: r'corsGetCredentialOfferOk')
  String? get corsGetCredentialOfferOk;

  CorsGetCredentialOfferOK._();

  factory CorsGetCredentialOfferOK(
          [void updates(CorsGetCredentialOfferOKBuilder b)]) =
      _$CorsGetCredentialOfferOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsGetCredentialOfferOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsGetCredentialOfferOK> get serializer =>
      _$CorsGetCredentialOfferOKSerializer();
}

class _$CorsGetCredentialOfferOKSerializer
    implements PrimitiveSerializer<CorsGetCredentialOfferOK> {
  @override
  final Iterable<Type> types = const [
    CorsGetCredentialOfferOK,
    _$CorsGetCredentialOfferOK
  ];

  @override
  final String wireName = r'CorsGetCredentialOfferOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsGetCredentialOfferOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsGetCredentialOfferOk != null) {
      yield r'corsGetCredentialOfferOk';
      yield serializers.serialize(
        object.corsGetCredentialOfferOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsGetCredentialOfferOK object, {
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
    required CorsGetCredentialOfferOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsGetCredentialOfferOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsGetCredentialOfferOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsGetCredentialOfferOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsGetCredentialOfferOKBuilder();
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
