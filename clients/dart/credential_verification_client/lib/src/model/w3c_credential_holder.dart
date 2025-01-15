//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'w3c_credential_holder.g.dart';

/// W3cCredentialHolder
@BuiltValue()
abstract class W3cCredentialHolder implements Built<W3cCredentialHolder, W3cCredentialHolderBuilder> {
  /// One Of [JsonObject], [String]
  OneOf get oneOf;

  W3cCredentialHolder._();

  factory W3cCredentialHolder([void updates(W3cCredentialHolderBuilder b)]) = _$W3cCredentialHolder;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(W3cCredentialHolderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<W3cCredentialHolder> get serializer => _$W3cCredentialHolderSerializer();
}

class _$W3cCredentialHolderSerializer implements PrimitiveSerializer<W3cCredentialHolder> {
  @override
  final Iterable<Type> types = const [W3cCredentialHolder, _$W3cCredentialHolder];

  @override
  final String wireName = r'W3cCredentialHolder';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    W3cCredentialHolder object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    W3cCredentialHolder object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  W3cCredentialHolder deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = W3cCredentialHolderBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(JsonObject), FullType(String), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

