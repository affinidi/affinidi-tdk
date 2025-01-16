//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'credential_requirements_constraints.g.dart';

/// Constraint list of the VC requirements
@BuiltValue()
abstract class CredentialRequirementsConstraints implements Built<CredentialRequirementsConstraints, CredentialRequirementsConstraintsBuilder> {
  /// Any Of [BuiltList<BuiltMap<String, BuiltList<JsonObject>>>], [BuiltList<String>]
  AnyOf get anyOf;

  CredentialRequirementsConstraints._();

  factory CredentialRequirementsConstraints([void updates(CredentialRequirementsConstraintsBuilder b)]) = _$CredentialRequirementsConstraints;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialRequirementsConstraintsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialRequirementsConstraints> get serializer => _$CredentialRequirementsConstraintsSerializer();
}

class _$CredentialRequirementsConstraintsSerializer implements PrimitiveSerializer<CredentialRequirementsConstraints> {
  @override
  final Iterable<Type> types = const [CredentialRequirementsConstraints, _$CredentialRequirementsConstraints];

  @override
  final String wireName = r'CredentialRequirementsConstraints';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialRequirementsConstraints object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialRequirementsConstraints object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  CredentialRequirementsConstraints deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialRequirementsConstraintsBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(BuiltList, [FullType(String)]), FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType.nullable(JsonObject)])])]), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

