//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'credential_response_immediate_c_nonce_expires_in.g.dart';

/// CredentialResponseImmediateCNonceExpiresIn
@BuiltValue()
abstract class CredentialResponseImmediateCNonceExpiresIn
    implements
        Built<CredentialResponseImmediateCNonceExpiresIn,
            CredentialResponseImmediateCNonceExpiresInBuilder> {
  /// One Of [String], [num]
  OneOf get oneOf;

  CredentialResponseImmediateCNonceExpiresIn._();

  factory CredentialResponseImmediateCNonceExpiresIn(
          [void updates(CredentialResponseImmediateCNonceExpiresInBuilder b)]) =
      _$CredentialResponseImmediateCNonceExpiresIn;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialResponseImmediateCNonceExpiresInBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialResponseImmediateCNonceExpiresIn>
      get serializer =>
          _$CredentialResponseImmediateCNonceExpiresInSerializer();
}

class _$CredentialResponseImmediateCNonceExpiresInSerializer
    implements PrimitiveSerializer<CredentialResponseImmediateCNonceExpiresIn> {
  @override
  final Iterable<Type> types = const [
    CredentialResponseImmediateCNonceExpiresIn,
    _$CredentialResponseImmediateCNonceExpiresIn
  ];

  @override
  final String wireName = r'CredentialResponseImmediateCNonceExpiresIn';

  Iterable<Object?> _serializeProperties(Serializers serializers,
      CredentialResponseImmediateCNonceExpiresIn object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    CredentialResponseImmediateCNonceExpiresIn object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  CredentialResponseImmediateCNonceExpiresIn deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialResponseImmediateCNonceExpiresInBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(num),
      FullType(String),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
