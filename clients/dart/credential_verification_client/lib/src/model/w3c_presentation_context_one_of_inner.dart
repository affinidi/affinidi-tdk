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

part 'w3c_presentation_context_one_of_inner.g.dart';

/// W3cPresentationContextOneOfInner
@BuiltValue()
abstract class W3cPresentationContextOneOfInner implements Built<W3cPresentationContextOneOfInner, W3cPresentationContextOneOfInnerBuilder> {
  /// One Of [BuiltMap<String, JsonObject>], [String]
  OneOf get oneOf;

  W3cPresentationContextOneOfInner._();

  factory W3cPresentationContextOneOfInner([void updates(W3cPresentationContextOneOfInnerBuilder b)]) = _$W3cPresentationContextOneOfInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(W3cPresentationContextOneOfInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<W3cPresentationContextOneOfInner> get serializer => _$W3cPresentationContextOneOfInnerSerializer();
}

class _$W3cPresentationContextOneOfInnerSerializer implements PrimitiveSerializer<W3cPresentationContextOneOfInner> {
  @override
  final Iterable<Type> types = const [W3cPresentationContextOneOfInner, _$W3cPresentationContextOneOfInner];

  @override
  final String wireName = r'W3cPresentationContextOneOfInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    W3cPresentationContextOneOfInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    W3cPresentationContextOneOfInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  W3cPresentationContextOneOfInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = W3cPresentationContextOneOfInnerBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(String), FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

