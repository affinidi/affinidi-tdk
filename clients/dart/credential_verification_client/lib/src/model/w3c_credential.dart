//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_verification_client/src/model/w3c_proof.dart';
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/w3c_credential_credential_schema.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/w3c_credential_status.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/w3c_credential_credential_subject.dart';
import 'package:built_value/json_object.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/w3c_credential_holder.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'w3c_credential.g.dart';

/// W3cCredential
///
/// Properties:
/// * [atContext] 
/// * [id] 
/// * [type] 
/// * [holder] 
/// * [credentialSubject] 
/// * [credentialStatus] 
/// * [issuanceDate] 
/// * [issuer] 
/// * [expirationDate] 
/// * [proof] 
/// * [credentialSchema] 
@BuiltValue()
abstract class W3cCredential implements Built<W3cCredential, W3cCredentialBuilder> {
  @BuiltValueField(wireName: r'@context')
  BuiltMap<String, JsonObject?> get atContext;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'type')
  BuiltList<String> get type;

  @BuiltValueField(wireName: r'holder')
  W3cCredentialHolder? get holder;

  @BuiltValueField(wireName: r'credentialSubject')
  W3cCredentialCredentialSubject get credentialSubject;

  @BuiltValueField(wireName: r'credentialStatus')
  W3cCredentialStatus? get credentialStatus;

  @BuiltValueField(wireName: r'issuanceDate')
  String get issuanceDate;

  @BuiltValueField(wireName: r'issuer')
  String get issuer;

  @BuiltValueField(wireName: r'expirationDate')
  String? get expirationDate;

  @BuiltValueField(wireName: r'proof')
  W3cProof get proof;

  @BuiltValueField(wireName: r'credentialSchema')
  W3cCredentialCredentialSchema? get credentialSchema;

  W3cCredential._();

  factory W3cCredential([void updates(W3cCredentialBuilder b)]) = _$W3cCredential;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(W3cCredentialBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<W3cCredential> get serializer => _$W3cCredentialSerializer();
}

class _$W3cCredentialSerializer implements PrimitiveSerializer<W3cCredential> {
  @override
  final Iterable<Type> types = const [W3cCredential, _$W3cCredential];

  @override
  final String wireName = r'W3cCredential';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    W3cCredential object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@context';
    yield serializers.serialize(
      object.atContext,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.holder != null) {
      yield r'holder';
      yield serializers.serialize(
        object.holder,
        specifiedType: const FullType(W3cCredentialHolder),
      );
    }
    yield r'credentialSubject';
    yield serializers.serialize(
      object.credentialSubject,
      specifiedType: const FullType(W3cCredentialCredentialSubject),
    );
    if (object.credentialStatus != null) {
      yield r'credentialStatus';
      yield serializers.serialize(
        object.credentialStatus,
        specifiedType: const FullType(W3cCredentialStatus),
      );
    }
    yield r'issuanceDate';
    yield serializers.serialize(
      object.issuanceDate,
      specifiedType: const FullType(String),
    );
    yield r'issuer';
    yield serializers.serialize(
      object.issuer,
      specifiedType: const FullType(String),
    );
    if (object.expirationDate != null) {
      yield r'expirationDate';
      yield serializers.serialize(
        object.expirationDate,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'proof';
    yield serializers.serialize(
      object.proof,
      specifiedType: const FullType(W3cProof),
    );
    if (object.credentialSchema != null) {
      yield r'credentialSchema';
      yield serializers.serialize(
        object.credentialSchema,
        specifiedType: const FullType(W3cCredentialCredentialSchema),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    W3cCredential object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required W3cCredentialBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@context':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.atContext.replace(valueDes);
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.type.replace(valueDes);
          break;
        case r'holder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(W3cCredentialHolder),
          ) as W3cCredentialHolder;
          result.holder.replace(valueDes);
          break;
        case r'credentialSubject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(W3cCredentialCredentialSubject),
          ) as W3cCredentialCredentialSubject;
          result.credentialSubject.replace(valueDes);
          break;
        case r'credentialStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(W3cCredentialStatus),
          ) as W3cCredentialStatus;
          result.credentialStatus.replace(valueDes);
          break;
        case r'issuanceDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.issuanceDate = valueDes;
          break;
        case r'issuer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.issuer = valueDes;
          break;
        case r'expirationDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.expirationDate = valueDes;
          break;
        case r'proof':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(W3cProof),
          ) as W3cProof;
          result.proof.replace(valueDes);
          break;
        case r'credentialSchema':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(W3cCredentialCredentialSchema),
          ) as W3cCredentialCredentialSchema;
          result.credentialSchema.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  W3cCredential deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = W3cCredentialBuilder();
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

