//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holder_subject.g.dart';

/// HolderSubject
///
/// Properties:
/// * [fieldId] 
/// * [directive] 
@BuiltValue()
abstract class HolderSubject implements Built<HolderSubject, HolderSubjectBuilder> {
  @BuiltValueField(wireName: r'field_id')
  BuiltList<String> get fieldId;

  @BuiltValueField(wireName: r'directive')
  HolderSubjectDirectiveEnum get directive;
  // enum directiveEnum {  required,  preferred,  };

  HolderSubject._();

  factory HolderSubject([void updates(HolderSubjectBuilder b)]) = _$HolderSubject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HolderSubjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HolderSubject> get serializer => _$HolderSubjectSerializer();
}

class _$HolderSubjectSerializer implements PrimitiveSerializer<HolderSubject> {
  @override
  final Iterable<Type> types = const [HolderSubject, _$HolderSubject];

  @override
  final String wireName = r'HolderSubject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HolderSubject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'field_id';
    yield serializers.serialize(
      object.fieldId,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'directive';
    yield serializers.serialize(
      object.directive,
      specifiedType: const FullType(HolderSubjectDirectiveEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HolderSubject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HolderSubjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'field_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.fieldId.replace(valueDes);
          break;
        case r'directive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HolderSubjectDirectiveEnum),
          ) as HolderSubjectDirectiveEnum;
          result.directive = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HolderSubject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HolderSubjectBuilder();
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

class HolderSubjectDirectiveEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'required')
  static const HolderSubjectDirectiveEnum required_ = _$holderSubjectDirectiveEnum_required_;
  @BuiltValueEnumConst(wireName: r'preferred')
  static const HolderSubjectDirectiveEnum preferred = _$holderSubjectDirectiveEnum_preferred;

  static Serializer<HolderSubjectDirectiveEnum> get serializer => _$holderSubjectDirectiveEnumSerializer;

  const HolderSubjectDirectiveEnum._(String name): super(name);

  static BuiltSet<HolderSubjectDirectiveEnum> get values => _$holderSubjectDirectiveEnumValues;
  static HolderSubjectDirectiveEnum valueOf(String name) => _$holderSubjectDirectiveEnumValueOf(name);
}

