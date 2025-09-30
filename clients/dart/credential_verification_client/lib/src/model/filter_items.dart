//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/filter.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/filter_const.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'filter_items.g.dart';

/// FilterItems
///
/// Properties:
/// * [const_]
/// * [enum_]
/// * [exclusiveMinimum]
/// * [exclusiveMaximum]
/// * [format]
/// * [formatMaximum]
/// * [formatMinimum]
/// * [formatExclusiveMaximum]
/// * [formatExclusiveMinimum]
/// * [minLength]
/// * [maxLength]
/// * [minimum]
/// * [maximum]
/// * [not]
/// * [pattern]
/// * [contains]
/// * [items]
/// * [type]
@BuiltValue()
abstract class FilterItems implements Built<FilterItems, FilterItemsBuilder> {
  /// One Of [BuiltList<Filter>], [Filter]
  OneOf get oneOf;

  FilterItems._();

  factory FilterItems([void updates(FilterItemsBuilder b)]) = _$FilterItems;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterItemsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilterItems> get serializer => _$FilterItemsSerializer();
}

class _$FilterItemsSerializer implements PrimitiveSerializer<FilterItems> {
  @override
  final Iterable<Type> types = const [FilterItems, _$FilterItems];

  @override
  final String wireName = r'FilterItems';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, FilterItems object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    FilterItems object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  FilterItems deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterItemsBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(Filter),
      FullType(BuiltList, [FullType(Filter)]),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
