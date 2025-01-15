//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_proof.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_credential_input.g.dart';

/// CreateCredentialInput
///
/// Properties:
/// * [credentialIdentifier] - It is a String that identifies a Credential that is being requested to be issued.
/// * [proof] 
@BuiltValue()
abstract class CreateCredentialInput implements Built<CreateCredentialInput, CreateCredentialInputBuilder> {
  /// It is a String that identifies a Credential that is being requested to be issued.
  @BuiltValueField(wireName: r'credential_identifier')
  String? get credentialIdentifier;

  @BuiltValueField(wireName: r'proof')
  CredentialProof get proof;

  CreateCredentialInput._();

  factory CreateCredentialInput([void updates(CreateCredentialInputBuilder b)]) = _$CreateCredentialInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateCredentialInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateCredentialInput> get serializer => _$CreateCredentialInputSerializer();
}

class _$CreateCredentialInputSerializer implements PrimitiveSerializer<CreateCredentialInput> {
  @override
  final Iterable<Type> types = const [CreateCredentialInput, _$CreateCredentialInput];

  @override
  final String wireName = r'CreateCredentialInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateCredentialInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.credentialIdentifier != null) {
      yield r'credential_identifier';
      yield serializers.serialize(
        object.credentialIdentifier,
        specifiedType: const FullType(String),
      );
    }
    yield r'proof';
    yield serializers.serialize(
      object.proof,
      specifiedType: const FullType(CredentialProof),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateCredentialInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateCredentialInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credential_identifier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.credentialIdentifier = valueDes;
          break;
        case r'proof':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialProof),
          ) as CredentialProof;
          result.proof.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateCredentialInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCredentialInputBuilder();
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

