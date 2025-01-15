//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'filter_const.g.dart';

/// FilterConst
@BuiltValue()
abstract class FilterConst implements Built<FilterConst, FilterConstBuilder> {
  /// One Of [String], [num]
  OneOf get oneOf;

  FilterConst._();

  factory FilterConst([void updates(FilterConstBuilder b)]) = _$FilterConst;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterConstBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilterConst> get serializer => _$FilterConstSerializer();
}

class _$FilterConstSerializer implements PrimitiveSerializer<FilterConst> {
  @override
  final Iterable<Type> types = const [FilterConst, _$FilterConst];

  @override
  final String wireName = r'FilterConst';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilterConst object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    FilterConst object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  FilterConst deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterConstBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(num), FullType(String), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

