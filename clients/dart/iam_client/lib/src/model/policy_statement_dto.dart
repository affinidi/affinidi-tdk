//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'policy_statement_dto.g.dart';

/// PolicyStatementDto
///
/// Properties:
/// * [action]
/// * [effect]
/// * [principal]
/// * [resource]
@BuiltValue()
abstract class PolicyStatementDto
    implements Built<PolicyStatementDto, PolicyStatementDtoBuilder> {
  @BuiltValueField(wireName: r'action')
  BuiltList<String> get action;

  @BuiltValueField(wireName: r'effect')
  String get effect;

  @BuiltValueField(wireName: r'principal')
  BuiltList<String> get principal;

  @BuiltValueField(wireName: r'resource')
  BuiltList<String> get resource;

  PolicyStatementDto._();

  factory PolicyStatementDto([void updates(PolicyStatementDtoBuilder b)]) =
      _$PolicyStatementDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolicyStatementDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolicyStatementDto> get serializer =>
      _$PolicyStatementDtoSerializer();
}

class _$PolicyStatementDtoSerializer
    implements PrimitiveSerializer<PolicyStatementDto> {
  @override
  final Iterable<Type> types = const [PolicyStatementDto, _$PolicyStatementDto];

  @override
  final String wireName = r'PolicyStatementDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolicyStatementDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'effect';
    yield serializers.serialize(
      object.effect,
      specifiedType: const FullType(String),
    );
    yield r'principal';
    yield serializers.serialize(
      object.principal,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'resource';
    yield serializers.serialize(
      object.resource,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PolicyStatementDto object, {
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
    required PolicyStatementDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.action.replace(valueDes);
          break;
        case r'effect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.effect = valueDes;
          break;
        case r'principal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.principal.replace(valueDes);
          break;
        case r'resource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.resource.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PolicyStatementDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyStatementDtoBuilder();
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
