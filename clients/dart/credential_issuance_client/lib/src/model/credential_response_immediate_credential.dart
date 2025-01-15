//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'credential_response_immediate_credential.g.dart';

/// CredentialResponseImmediateCredential
@BuiltValue()
abstract class CredentialResponseImmediateCredential implements Built<CredentialResponseImmediateCredential, CredentialResponseImmediateCredentialBuilder> {
  /// One Of [BuiltMap<String, JsonObject>], [String]
  OneOf get oneOf;

  CredentialResponseImmediateCredential._();

  factory CredentialResponseImmediateCredential([void updates(CredentialResponseImmediateCredentialBuilder b)]) = _$CredentialResponseImmediateCredential;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialResponseImmediateCredentialBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialResponseImmediateCredential> get serializer => _$CredentialResponseImmediateCredentialSerializer();
}

class _$CredentialResponseImmediateCredentialSerializer implements PrimitiveSerializer<CredentialResponseImmediateCredential> {
  @override
  final Iterable<Type> types = const [CredentialResponseImmediateCredential, _$CredentialResponseImmediateCredential];

  @override
  final String wireName = r'CredentialResponseImmediateCredential';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialResponseImmediateCredential object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialResponseImmediateCredential object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  CredentialResponseImmediateCredential deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialResponseImmediateCredentialBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]), FullType(String), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

