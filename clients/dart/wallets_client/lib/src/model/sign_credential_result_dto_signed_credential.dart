//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'sign_credential_result_dto_signed_credential.g.dart';

/// SignCredentialResultDtoSignedCredential
@BuiltValue()
abstract class SignCredentialResultDtoSignedCredential implements Built<SignCredentialResultDtoSignedCredential, SignCredentialResultDtoSignedCredentialBuilder> {
  /// One Of [JsonObject], [String]
  OneOf get oneOf;

  SignCredentialResultDtoSignedCredential._();

  factory SignCredentialResultDtoSignedCredential([void updates(SignCredentialResultDtoSignedCredentialBuilder b)]) = _$SignCredentialResultDtoSignedCredential;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignCredentialResultDtoSignedCredentialBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignCredentialResultDtoSignedCredential> get serializer => _$SignCredentialResultDtoSignedCredentialSerializer();
}

class _$SignCredentialResultDtoSignedCredentialSerializer implements PrimitiveSerializer<SignCredentialResultDtoSignedCredential> {
  @override
  final Iterable<Type> types = const [SignCredentialResultDtoSignedCredential, _$SignCredentialResultDtoSignedCredential];

  @override
  final String wireName = r'SignCredentialResultDtoSignedCredential';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignCredentialResultDtoSignedCredential object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    SignCredentialResultDtoSignedCredential object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  SignCredentialResultDtoSignedCredential deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignCredentialResultDtoSignedCredentialBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(JsonObject), FullType(String), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

