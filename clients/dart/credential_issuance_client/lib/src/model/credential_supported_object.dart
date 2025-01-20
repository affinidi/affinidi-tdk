//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_issuance_client/src/model/supported_credential_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credential_supported_object.g.dart';

/// CredentialSupportedObject
///
/// Properties:
/// * [credentialTypeId] - It is a String that identifies a Credential that is being requested to be issued.
/// * [jsonSchemaUrl] - credential jsonLdContextUrl
/// * [jsonLdContextUrl] - credential jsonSchemaUrl
/// * [metadata] 
@BuiltValue()
abstract class CredentialSupportedObject implements Built<CredentialSupportedObject, CredentialSupportedObjectBuilder> {
  /// It is a String that identifies a Credential that is being requested to be issued.
  @BuiltValueField(wireName: r'credentialTypeId')
  String get credentialTypeId;

  /// credential jsonLdContextUrl
  @BuiltValueField(wireName: r'jsonSchemaUrl')
  String get jsonSchemaUrl;

  /// credential jsonSchemaUrl
  @BuiltValueField(wireName: r'jsonLdContextUrl')
  String get jsonLdContextUrl;

  @BuiltValueField(wireName: r'metadata')
  SupportedCredentialMetadata? get metadata;

  CredentialSupportedObject._();

  factory CredentialSupportedObject([void updates(CredentialSupportedObjectBuilder b)]) = _$CredentialSupportedObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialSupportedObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialSupportedObject> get serializer => _$CredentialSupportedObjectSerializer();
}

class _$CredentialSupportedObjectSerializer implements PrimitiveSerializer<CredentialSupportedObject> {
  @override
  final Iterable<Type> types = const [CredentialSupportedObject, _$CredentialSupportedObject];

  @override
  final String wireName = r'CredentialSupportedObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialSupportedObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'credentialTypeId';
    yield serializers.serialize(
      object.credentialTypeId,
      specifiedType: const FullType(String),
    );
    yield r'jsonSchemaUrl';
    yield serializers.serialize(
      object.jsonSchemaUrl,
      specifiedType: const FullType(String),
    );
    yield r'jsonLdContextUrl';
    yield serializers.serialize(
      object.jsonLdContextUrl,
      specifiedType: const FullType(String),
    );
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(SupportedCredentialMetadata),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialSupportedObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CredentialSupportedObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credentialTypeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.credentialTypeId = valueDes;
          break;
        case r'jsonSchemaUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.jsonSchemaUrl = valueDes;
          break;
        case r'jsonLdContextUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.jsonLdContextUrl = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SupportedCredentialMetadata),
          ) as SupportedCredentialMetadata;
          result.metadata = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CredentialSupportedObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialSupportedObjectBuilder();
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

