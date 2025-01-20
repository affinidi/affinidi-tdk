//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deferred_credential_input.g.dart';

/// DeferredCredentialInput
///
/// Properties:
/// * [transactionId] - String identifying a Deferred Issuance transaction. This claim is contained in the response if the Credential Issuer was unable to immediately issue the Credential.
@BuiltValue()
abstract class DeferredCredentialInput implements Built<DeferredCredentialInput, DeferredCredentialInputBuilder> {
  /// String identifying a Deferred Issuance transaction. This claim is contained in the response if the Credential Issuer was unable to immediately issue the Credential.
  @BuiltValueField(wireName: r'transaction_id')
  String get transactionId;

  DeferredCredentialInput._();

  factory DeferredCredentialInput([void updates(DeferredCredentialInputBuilder b)]) = _$DeferredCredentialInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeferredCredentialInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeferredCredentialInput> get serializer => _$DeferredCredentialInputSerializer();
}

class _$DeferredCredentialInputSerializer implements PrimitiveSerializer<DeferredCredentialInput> {
  @override
  final Iterable<Type> types = const [DeferredCredentialInput, _$DeferredCredentialInput];

  @override
  final String wireName = r'DeferredCredentialInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeferredCredentialInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'transaction_id';
    yield serializers.serialize(
      object.transactionId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeferredCredentialInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeferredCredentialInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'transaction_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.transactionId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeferredCredentialInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeferredCredentialInputBuilder();
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

