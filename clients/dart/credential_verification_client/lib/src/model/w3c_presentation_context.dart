//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_verification_client/src/model/w3c_presentation_context_one_of_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'w3c_presentation_context.g.dart';

/// W3cPresentationContext
@BuiltValue()
abstract class W3cPresentationContext implements Built<W3cPresentationContext, W3cPresentationContextBuilder> {
  /// One Of [BuiltList<W3cPresentationContextOneOfInner>], [BuiltMap<String, JsonObject>], [String]
  OneOf get oneOf;

  W3cPresentationContext._();

  factory W3cPresentationContext([void updates(W3cPresentationContextBuilder b)]) = _$W3cPresentationContext;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(W3cPresentationContextBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<W3cPresentationContext> get serializer => _$W3cPresentationContextSerializer();
}

class _$W3cPresentationContextSerializer implements PrimitiveSerializer<W3cPresentationContext> {
  @override
  final Iterable<Type> types = const [W3cPresentationContext, _$W3cPresentationContext];

  @override
  final String wireName = r'W3cPresentationContext';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    W3cPresentationContext object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    W3cPresentationContext object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  W3cPresentationContext deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = W3cPresentationContextBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(String), FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]), FullType(BuiltList, [FullType(W3cPresentationContextOneOfInner)]), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

