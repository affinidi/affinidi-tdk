//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_response_immediate_c_nonce_expires_in.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_response_immediate_credential.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credential_response_immediate.g.dart';

/// CredentialResponseImmediate
///
/// Properties:
/// * [credential]
/// * [cNonce] - String containing a nonce to be used when creating a proof of possession of the key proof
/// * [cNonceExpiresIn]
@BuiltValue()
abstract class CredentialResponseImmediate
    implements
        Built<CredentialResponseImmediate, CredentialResponseImmediateBuilder> {
  @BuiltValueField(wireName: r'credential')
  CredentialResponseImmediateCredential get credential;

  /// String containing a nonce to be used when creating a proof of possession of the key proof
  @BuiltValueField(wireName: r'c_nonce')
  String get cNonce;

  @BuiltValueField(wireName: r'c_nonce_expires_in')
  CredentialResponseImmediateCNonceExpiresIn get cNonceExpiresIn;

  CredentialResponseImmediate._();

  factory CredentialResponseImmediate(
          [void updates(CredentialResponseImmediateBuilder b)]) =
      _$CredentialResponseImmediate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialResponseImmediateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialResponseImmediate> get serializer =>
      _$CredentialResponseImmediateSerializer();
}

class _$CredentialResponseImmediateSerializer
    implements PrimitiveSerializer<CredentialResponseImmediate> {
  @override
  final Iterable<Type> types = const [
    CredentialResponseImmediate,
    _$CredentialResponseImmediate
  ];

  @override
  final String wireName = r'CredentialResponseImmediate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialResponseImmediate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'credential';
    yield serializers.serialize(
      object.credential,
      specifiedType: const FullType(CredentialResponseImmediateCredential),
    );
    yield r'c_nonce';
    yield serializers.serialize(
      object.cNonce,
      specifiedType: const FullType(String),
    );
    yield r'c_nonce_expires_in';
    yield serializers.serialize(
      object.cNonceExpiresIn,
      specifiedType: const FullType(CredentialResponseImmediateCNonceExpiresIn),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialResponseImmediate object, {
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
    required CredentialResponseImmediateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credential':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(CredentialResponseImmediateCredential),
          ) as CredentialResponseImmediateCredential;
          result.credential.replace(valueDes);
          break;
        case r'c_nonce':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cNonce = valueDes;
          break;
        case r'c_nonce_expires_in':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(CredentialResponseImmediateCNonceExpiresIn),
          ) as CredentialResponseImmediateCNonceExpiresIn;
          result.cNonceExpiresIn.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CredentialResponseImmediate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialResponseImmediateBuilder();
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
