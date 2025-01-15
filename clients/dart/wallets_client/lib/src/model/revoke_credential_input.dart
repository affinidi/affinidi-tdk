//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'revoke_credential_input.g.dart';

/// RevokeCredentialInput
///
/// Properties:
/// * [revocationReason] 
/// * [credentialId] 
@BuiltValue()
abstract class RevokeCredentialInput implements Built<RevokeCredentialInput, RevokeCredentialInputBuilder> {
  @BuiltValueField(wireName: r'revocationReason')
  String? get revocationReason;

  @BuiltValueField(wireName: r'credentialId')
  String? get credentialId;

  RevokeCredentialInput._();

  factory RevokeCredentialInput([void updates(RevokeCredentialInputBuilder b)]) = _$RevokeCredentialInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RevokeCredentialInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RevokeCredentialInput> get serializer => _$RevokeCredentialInputSerializer();
}

class _$RevokeCredentialInputSerializer implements PrimitiveSerializer<RevokeCredentialInput> {
  @override
  final Iterable<Type> types = const [RevokeCredentialInput, _$RevokeCredentialInput];

  @override
  final String wireName = r'RevokeCredentialInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RevokeCredentialInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.revocationReason != null) {
      yield r'revocationReason';
      yield serializers.serialize(
        object.revocationReason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.credentialId != null) {
      yield r'credentialId';
      yield serializers.serialize(
        object.credentialId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RevokeCredentialInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RevokeCredentialInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'revocationReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.revocationReason = valueDes;
          break;
        case r'credentialId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.credentialId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RevokeCredentialInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RevokeCredentialInputBuilder();
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

