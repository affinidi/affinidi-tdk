//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/filter_const.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/filter_items.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter.g.dart';

/// Filter
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
abstract class Filter implements Built<Filter, FilterBuilder> {
  @BuiltValueField(wireName: r'_const')
  FilterConst? get const_;

  @BuiltValueField(wireName: r'_enum')
  BuiltList<FilterConst>? get enum_;

  @BuiltValueField(wireName: r'exclusiveMinimum')
  FilterConst? get exclusiveMinimum;

  @BuiltValueField(wireName: r'exclusiveMaximum')
  FilterConst? get exclusiveMaximum;

  @BuiltValueField(wireName: r'format')
  String? get format;

  @BuiltValueField(wireName: r'formatMaximum')
  String? get formatMaximum;

  @BuiltValueField(wireName: r'formatMinimum')
  String? get formatMinimum;

  @BuiltValueField(wireName: r'formatExclusiveMaximum')
  String? get formatExclusiveMaximum;

  @BuiltValueField(wireName: r'formatExclusiveMinimum')
  String? get formatExclusiveMinimum;

  @BuiltValueField(wireName: r'minLength')
  int? get minLength;

  @BuiltValueField(wireName: r'maxLength')
  int? get maxLength;

  @BuiltValueField(wireName: r'minimum')
  FilterConst? get minimum;

  @BuiltValueField(wireName: r'maximum')
  FilterConst? get maximum;

  @BuiltValueField(wireName: r'not')
  JsonObject? get not;

  @BuiltValueField(wireName: r'pattern')
  String? get pattern;

  @BuiltValueField(wireName: r'contains')
  Filter? get contains;

  @BuiltValueField(wireName: r'items')
  FilterItems? get items;

  @BuiltValueField(wireName: r'type')
  String? get type;

  Filter._();

  factory Filter([void updates(FilterBuilder b)]) = _$Filter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Filter> get serializer => _$FilterSerializer();
}

class _$FilterSerializer implements PrimitiveSerializer<Filter> {
  @override
  final Iterable<Type> types = const [Filter, _$Filter];

  @override
  final String wireName = r'Filter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Filter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.const_ != null) {
      yield r'_const';
      yield serializers.serialize(
        object.const_,
        specifiedType: const FullType(FilterConst),
      );
    }
    if (object.enum_ != null) {
      yield r'_enum';
      yield serializers.serialize(
        object.enum_,
        specifiedType: const FullType(BuiltList, [FullType(FilterConst)]),
      );
    }
    if (object.exclusiveMinimum != null) {
      yield r'exclusiveMinimum';
      yield serializers.serialize(
        object.exclusiveMinimum,
        specifiedType: const FullType(FilterConst),
      );
    }
    if (object.exclusiveMaximum != null) {
      yield r'exclusiveMaximum';
      yield serializers.serialize(
        object.exclusiveMaximum,
        specifiedType: const FullType(FilterConst),
      );
    }
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(String),
      );
    }
    if (object.formatMaximum != null) {
      yield r'formatMaximum';
      yield serializers.serialize(
        object.formatMaximum,
        specifiedType: const FullType(String),
      );
    }
    if (object.formatMinimum != null) {
      yield r'formatMinimum';
      yield serializers.serialize(
        object.formatMinimum,
        specifiedType: const FullType(String),
      );
    }
    if (object.formatExclusiveMaximum != null) {
      yield r'formatExclusiveMaximum';
      yield serializers.serialize(
        object.formatExclusiveMaximum,
        specifiedType: const FullType(String),
      );
    }
    if (object.formatExclusiveMinimum != null) {
      yield r'formatExclusiveMinimum';
      yield serializers.serialize(
        object.formatExclusiveMinimum,
        specifiedType: const FullType(String),
      );
    }
    if (object.minLength != null) {
      yield r'minLength';
      yield serializers.serialize(
        object.minLength,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxLength != null) {
      yield r'maxLength';
      yield serializers.serialize(
        object.maxLength,
        specifiedType: const FullType(int),
      );
    }
    if (object.minimum != null) {
      yield r'minimum';
      yield serializers.serialize(
        object.minimum,
        specifiedType: const FullType(FilterConst),
      );
    }
    if (object.maximum != null) {
      yield r'maximum';
      yield serializers.serialize(
        object.maximum,
        specifiedType: const FullType(FilterConst),
      );
    }
    if (object.not != null) {
      yield r'not';
      yield serializers.serialize(
        object.not,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.pattern != null) {
      yield r'pattern';
      yield serializers.serialize(
        object.pattern,
        specifiedType: const FullType(String),
      );
    }
    if (object.contains != null) {
      yield r'contains';
      yield serializers.serialize(
        object.contains,
        specifiedType: const FullType(Filter),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(FilterItems),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Filter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_const':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FilterConst),
          ) as FilterConst;
          result.const_.replace(valueDes);
          break;
        case r'_enum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FilterConst)]),
          ) as BuiltList<FilterConst>;
          result.enum_.replace(valueDes);
          break;
        case r'exclusiveMinimum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FilterConst),
          ) as FilterConst;
          result.exclusiveMinimum.replace(valueDes);
          break;
        case r'exclusiveMaximum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FilterConst),
          ) as FilterConst;
          result.exclusiveMaximum.replace(valueDes);
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.format = valueDes;
          break;
        case r'formatMaximum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.formatMaximum = valueDes;
          break;
        case r'formatMinimum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.formatMinimum = valueDes;
          break;
        case r'formatExclusiveMaximum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.formatExclusiveMaximum = valueDes;
          break;
        case r'formatExclusiveMinimum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.formatExclusiveMinimum = valueDes;
          break;
        case r'minLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.minLength = valueDes;
          break;
        case r'maxLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxLength = valueDes;
          break;
        case r'minimum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FilterConst),
          ) as FilterConst;
          result.minimum.replace(valueDes);
          break;
        case r'maximum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FilterConst),
          ) as FilterConst;
          result.maximum.replace(valueDes);
          break;
        case r'not':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.not = valueDes;
          break;
        case r'pattern':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pattern = valueDes;
          break;
        case r'contains':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Filter),
          ) as Filter;
          result.contains.replace(valueDes);
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FilterItems),
          ) as FilterItems;
          result.items.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Filter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterBuilder();
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

