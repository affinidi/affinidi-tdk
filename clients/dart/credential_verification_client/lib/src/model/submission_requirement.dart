//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'submission_requirement.g.dart';

/// SubmissionRequirement
///
/// Properties:
/// * [name]
/// * [purpose]
/// * [rule]
/// * [count]
/// * [min]
/// * [max]
/// * [from]
/// * [fromNested]
@BuiltValue()
abstract class SubmissionRequirement
    implements Built<SubmissionRequirement, SubmissionRequirementBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'purpose')
  String? get purpose;

  @BuiltValueField(wireName: r'rule')
  SubmissionRequirementRuleEnum get rule;
  // enum ruleEnum {  all,  pick,  };

  @BuiltValueField(wireName: r'count')
  int? get count;

  @BuiltValueField(wireName: r'min')
  int? get min;

  @BuiltValueField(wireName: r'max')
  int? get max;

  @BuiltValueField(wireName: r'from')
  String? get from;

  @BuiltValueField(wireName: r'from_nested')
  BuiltList<SubmissionRequirement>? get fromNested;

  SubmissionRequirement._();

  factory SubmissionRequirement(
      [void updates(SubmissionRequirementBuilder b)]) = _$SubmissionRequirement;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubmissionRequirementBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubmissionRequirement> get serializer =>
      _$SubmissionRequirementSerializer();
}

class _$SubmissionRequirementSerializer
    implements PrimitiveSerializer<SubmissionRequirement> {
  @override
  final Iterable<Type> types = const [
    SubmissionRequirement,
    _$SubmissionRequirement
  ];

  @override
  final String wireName = r'SubmissionRequirement';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubmissionRequirement object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.purpose != null) {
      yield r'purpose';
      yield serializers.serialize(
        object.purpose,
        specifiedType: const FullType(String),
      );
    }
    yield r'rule';
    yield serializers.serialize(
      object.rule,
      specifiedType: const FullType(SubmissionRequirementRuleEnum),
    );
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
    if (object.min != null) {
      yield r'min';
      yield serializers.serialize(
        object.min,
        specifiedType: const FullType(int),
      );
    }
    if (object.max != null) {
      yield r'max';
      yield serializers.serialize(
        object.max,
        specifiedType: const FullType(int),
      );
    }
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType(String),
      );
    }
    if (object.fromNested != null) {
      yield r'from_nested';
      yield serializers.serialize(
        object.fromNested,
        specifiedType:
            const FullType(BuiltList, [FullType(SubmissionRequirement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SubmissionRequirement object, {
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
    required SubmissionRequirementBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'purpose':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.purpose = valueDes;
          break;
        case r'rule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SubmissionRequirementRuleEnum),
          ) as SubmissionRequirementRuleEnum;
          result.rule = valueDes;
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'min':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.min = valueDes;
          break;
        case r'max':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.max = valueDes;
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.from = valueDes;
          break;
        case r'from_nested':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(SubmissionRequirement)]),
          ) as BuiltList<SubmissionRequirement>;
          result.fromNested.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubmissionRequirement deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubmissionRequirementBuilder();
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

class SubmissionRequirementRuleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'all')
  static const SubmissionRequirementRuleEnum all =
      _$submissionRequirementRuleEnum_all;
  @BuiltValueEnumConst(wireName: r'pick')
  static const SubmissionRequirementRuleEnum pick =
      _$submissionRequirementRuleEnum_pick;

  static Serializer<SubmissionRequirementRuleEnum> get serializer =>
      _$submissionRequirementRuleEnumSerializer;

  const SubmissionRequirementRuleEnum._(String name) : super(name);

  static BuiltSet<SubmissionRequirementRuleEnum> get values =>
      _$submissionRequirementRuleEnumValues;
  static SubmissionRequirementRuleEnum valueOf(String name) =>
      _$submissionRequirementRuleEnumValueOf(name);
}
