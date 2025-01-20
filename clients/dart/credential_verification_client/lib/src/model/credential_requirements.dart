//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/credential_requirements_constraints.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credential_requirements.g.dart';

/// Requirements of the VC
///
/// Properties:
/// * [type] - Type list of the VC requirements
/// * [constraints] 
@BuiltValue()
abstract class CredentialRequirements implements Built<CredentialRequirements, CredentialRequirementsBuilder> {
  /// Type list of the VC requirements
  @BuiltValueField(wireName: r'type')
  BuiltList<String> get type;

  @BuiltValueField(wireName: r'constraints')
  CredentialRequirementsConstraints? get constraints;

  CredentialRequirements._();

  factory CredentialRequirements([void updates(CredentialRequirementsBuilder b)]) = _$CredentialRequirements;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialRequirementsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialRequirements> get serializer => _$CredentialRequirementsSerializer();
}

class _$CredentialRequirementsSerializer implements PrimitiveSerializer<CredentialRequirements> {
  @override
  final Iterable<Type> types = const [CredentialRequirements, _$CredentialRequirements];

  @override
  final String wireName = r'CredentialRequirements';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialRequirements object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.constraints != null) {
      yield r'constraints';
      yield serializers.serialize(
        object.constraints,
        specifiedType: const FullType(CredentialRequirementsConstraints),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialRequirements object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CredentialRequirementsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.type.replace(valueDes);
          break;
        case r'constraints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialRequirementsConstraints),
          ) as CredentialRequirementsConstraints;
          result.constraints.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CredentialRequirements deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialRequirementsBuilder();
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

