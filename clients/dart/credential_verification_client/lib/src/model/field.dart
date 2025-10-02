//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/filter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'field.g.dart';

/// Field
///
/// Properties:
/// * [id]
/// * [path]
/// * [purpose]
/// * [filter]
/// * [predicate]
@BuiltValue()
abstract class Field implements Built<Field, FieldBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'path')
  BuiltList<String>? get path;

  @BuiltValueField(wireName: r'purpose')
  String? get purpose;

  @BuiltValueField(wireName: r'filter')
  Filter? get filter;

  @BuiltValueField(wireName: r'predicate')
  FieldPredicateEnum? get predicate;
  // enum predicateEnum {  required,  preferred,  };

  Field._();

  factory Field([void updates(FieldBuilder b)]) = _$Field;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FieldBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Field> get serializer => _$FieldSerializer();
}

class _$FieldSerializer implements PrimitiveSerializer<Field> {
  @override
  final Iterable<Type> types = const [Field, _$Field];

  @override
  final String wireName = r'Field';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Field object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.purpose != null) {
      yield r'purpose';
      yield serializers.serialize(
        object.purpose,
        specifiedType: const FullType(String),
      );
    }
    if (object.filter != null) {
      yield r'filter';
      yield serializers.serialize(
        object.filter,
        specifiedType: const FullType(Filter),
      );
    }
    if (object.predicate != null) {
      yield r'predicate';
      yield serializers.serialize(
        object.predicate,
        specifiedType: const FullType(FieldPredicateEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Field object, {
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
    required FieldBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.path.replace(valueDes);
          break;
        case r'purpose':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.purpose = valueDes;
          break;
        case r'filter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Filter),
          ) as Filter;
          result.filter.replace(valueDes);
          break;
        case r'predicate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FieldPredicateEnum),
          ) as FieldPredicateEnum;
          result.predicate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Field deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FieldBuilder();
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

class FieldPredicateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'required')
  static const FieldPredicateEnum required_ = _$fieldPredicateEnum_required_;
  @BuiltValueEnumConst(wireName: r'preferred')
  static const FieldPredicateEnum preferred = _$fieldPredicateEnum_preferred;

  static Serializer<FieldPredicateEnum> get serializer =>
      _$fieldPredicateEnumSerializer;

  const FieldPredicateEnum._(String name) : super(name);

  static BuiltSet<FieldPredicateEnum> get values => _$fieldPredicateEnumValues;
  static FieldPredicateEnum valueOf(String name) =>
      _$fieldPredicateEnumValueOf(name);
}
