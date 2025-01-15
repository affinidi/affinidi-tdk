//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_verification_client/src/model/constraints_statuses.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/field.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/holder_subject.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'constraints.g.dart';

/// Constraints
///
/// Properties:
/// * [limitDisclosure] 
/// * [statuses] 
/// * [fields] 
/// * [subjectIsIssuer] 
/// * [isHolder] 
/// * [sameSubject] 
@BuiltValue()
abstract class Constraints implements Built<Constraints, ConstraintsBuilder> {
  @BuiltValueField(wireName: r'limit_disclosure')
  ConstraintsLimitDisclosureEnum? get limitDisclosure;
  // enum limitDisclosureEnum {  required,  preferred,  };

  @BuiltValueField(wireName: r'statuses')
  ConstraintsStatuses? get statuses;

  @BuiltValueField(wireName: r'fields')
  BuiltList<Field>? get fields;

  @BuiltValueField(wireName: r'subject_is_issuer')
  ConstraintsSubjectIsIssuerEnum? get subjectIsIssuer;
  // enum subjectIsIssuerEnum {  required,  preferred,  };

  @BuiltValueField(wireName: r'is_holder')
  BuiltList<HolderSubject>? get isHolder;

  @BuiltValueField(wireName: r'same_subject')
  BuiltList<HolderSubject>? get sameSubject;

  Constraints._();

  factory Constraints([void updates(ConstraintsBuilder b)]) = _$Constraints;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConstraintsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Constraints> get serializer => _$ConstraintsSerializer();
}

class _$ConstraintsSerializer implements PrimitiveSerializer<Constraints> {
  @override
  final Iterable<Type> types = const [Constraints, _$Constraints];

  @override
  final String wireName = r'Constraints';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Constraints object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.limitDisclosure != null) {
      yield r'limit_disclosure';
      yield serializers.serialize(
        object.limitDisclosure,
        specifiedType: const FullType(ConstraintsLimitDisclosureEnum),
      );
    }
    if (object.statuses != null) {
      yield r'statuses';
      yield serializers.serialize(
        object.statuses,
        specifiedType: const FullType(ConstraintsStatuses),
      );
    }
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(BuiltList, [FullType(Field)]),
      );
    }
    if (object.subjectIsIssuer != null) {
      yield r'subject_is_issuer';
      yield serializers.serialize(
        object.subjectIsIssuer,
        specifiedType: const FullType(ConstraintsSubjectIsIssuerEnum),
      );
    }
    if (object.isHolder != null) {
      yield r'is_holder';
      yield serializers.serialize(
        object.isHolder,
        specifiedType: const FullType(BuiltList, [FullType(HolderSubject)]),
      );
    }
    if (object.sameSubject != null) {
      yield r'same_subject';
      yield serializers.serialize(
        object.sameSubject,
        specifiedType: const FullType(BuiltList, [FullType(HolderSubject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Constraints object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConstraintsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'limit_disclosure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ConstraintsLimitDisclosureEnum),
          ) as ConstraintsLimitDisclosureEnum;
          result.limitDisclosure = valueDes;
          break;
        case r'statuses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ConstraintsStatuses),
          ) as ConstraintsStatuses;
          result.statuses.replace(valueDes);
          break;
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Field)]),
          ) as BuiltList<Field>;
          result.fields.replace(valueDes);
          break;
        case r'subject_is_issuer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ConstraintsSubjectIsIssuerEnum),
          ) as ConstraintsSubjectIsIssuerEnum;
          result.subjectIsIssuer = valueDes;
          break;
        case r'is_holder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(HolderSubject)]),
          ) as BuiltList<HolderSubject>;
          result.isHolder.replace(valueDes);
          break;
        case r'same_subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(HolderSubject)]),
          ) as BuiltList<HolderSubject>;
          result.sameSubject.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Constraints deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConstraintsBuilder();
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

class ConstraintsLimitDisclosureEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'required')
  static const ConstraintsLimitDisclosureEnum required_ = _$constraintsLimitDisclosureEnum_required_;
  @BuiltValueEnumConst(wireName: r'preferred')
  static const ConstraintsLimitDisclosureEnum preferred = _$constraintsLimitDisclosureEnum_preferred;

  static Serializer<ConstraintsLimitDisclosureEnum> get serializer => _$constraintsLimitDisclosureEnumSerializer;

  const ConstraintsLimitDisclosureEnum._(String name): super(name);

  static BuiltSet<ConstraintsLimitDisclosureEnum> get values => _$constraintsLimitDisclosureEnumValues;
  static ConstraintsLimitDisclosureEnum valueOf(String name) => _$constraintsLimitDisclosureEnumValueOf(name);
}

class ConstraintsSubjectIsIssuerEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'required')
  static const ConstraintsSubjectIsIssuerEnum required_ = _$constraintsSubjectIsIssuerEnum_required_;
  @BuiltValueEnumConst(wireName: r'preferred')
  static const ConstraintsSubjectIsIssuerEnum preferred = _$constraintsSubjectIsIssuerEnum_preferred;

  static Serializer<ConstraintsSubjectIsIssuerEnum> get serializer => _$constraintsSubjectIsIssuerEnumSerializer;

  const ConstraintsSubjectIsIssuerEnum._(String name): super(name);

  static BuiltSet<ConstraintsSubjectIsIssuerEnum> get values => _$constraintsSubjectIsIssuerEnumValues;
  static ConstraintsSubjectIsIssuerEnum valueOf(String name) => _$constraintsSubjectIsIssuerEnumValueOf(name);
}

