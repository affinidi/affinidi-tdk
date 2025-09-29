//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_credential_input_dto_unsigned_credential_params.g.dart';

/// unsignedCredentialParams. Used to build an unsigned credential before the signing. This param is not accepted when \"unsignedCredential\" is given
///
/// Properties:
/// * [jsonLdContextUrl]
/// * [jsonSchemaUrl]
/// * [typeName]
/// * [credentialSubject]
/// * [holderDid]
/// * [expiresAt]
@BuiltValue()
abstract class SignCredentialInputDtoUnsignedCredentialParams
    implements
        Built<SignCredentialInputDtoUnsignedCredentialParams,
            SignCredentialInputDtoUnsignedCredentialParamsBuilder> {
  @BuiltValueField(wireName: r'jsonLdContextUrl')
  String get jsonLdContextUrl;

  @BuiltValueField(wireName: r'jsonSchemaUrl')
  String get jsonSchemaUrl;

  @BuiltValueField(wireName: r'typeName')
  String get typeName;

  @BuiltValueField(wireName: r'credentialSubject')
  BuiltMap<String, JsonObject?> get credentialSubject;

  @BuiltValueField(wireName: r'holderDid')
  String get holderDid;

  @BuiltValueField(wireName: r'expiresAt')
  String get expiresAt;

  SignCredentialInputDtoUnsignedCredentialParams._();

  factory SignCredentialInputDtoUnsignedCredentialParams(
          [void updates(
              SignCredentialInputDtoUnsignedCredentialParamsBuilder b)]) =
      _$SignCredentialInputDtoUnsignedCredentialParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          SignCredentialInputDtoUnsignedCredentialParamsBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignCredentialInputDtoUnsignedCredentialParams>
      get serializer =>
          _$SignCredentialInputDtoUnsignedCredentialParamsSerializer();
}

class _$SignCredentialInputDtoUnsignedCredentialParamsSerializer
    implements
        PrimitiveSerializer<SignCredentialInputDtoUnsignedCredentialParams> {
  @override
  final Iterable<Type> types = const [
    SignCredentialInputDtoUnsignedCredentialParams,
    _$SignCredentialInputDtoUnsignedCredentialParams
  ];

  @override
  final String wireName = r'SignCredentialInputDtoUnsignedCredentialParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignCredentialInputDtoUnsignedCredentialParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'jsonLdContextUrl';
    yield serializers.serialize(
      object.jsonLdContextUrl,
      specifiedType: const FullType(String),
    );
    yield r'jsonSchemaUrl';
    yield serializers.serialize(
      object.jsonSchemaUrl,
      specifiedType: const FullType(String),
    );
    yield r'typeName';
    yield serializers.serialize(
      object.typeName,
      specifiedType: const FullType(String),
    );
    yield r'credentialSubject';
    yield serializers.serialize(
      object.credentialSubject,
      specifiedType: const FullType(
          BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
    );
    yield r'holderDid';
    yield serializers.serialize(
      object.holderDid,
      specifiedType: const FullType(String),
    );
    yield r'expiresAt';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SignCredentialInputDtoUnsignedCredentialParams object, {
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
    required SignCredentialInputDtoUnsignedCredentialParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'jsonLdContextUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.jsonLdContextUrl = valueDes;
          break;
        case r'jsonSchemaUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.jsonSchemaUrl = valueDes;
          break;
        case r'typeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.typeName = valueDes;
          break;
        case r'credentialSubject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.credentialSubject.replace(valueDes);
          break;
        case r'holderDid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.holderDid = valueDes;
          break;
        case r'expiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignCredentialInputDtoUnsignedCredentialParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignCredentialInputDtoUnsignedCredentialParamsBuilder();
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
