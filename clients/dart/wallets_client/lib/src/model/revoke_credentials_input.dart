//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'revoke_credentials_input.g.dart';

/// RevokeCredentialsInput
///
/// Properties:
/// * [revocationReason]
/// * [credentialId]
@BuiltValue()
abstract class RevokeCredentialsInput
    implements Built<RevokeCredentialsInput, RevokeCredentialsInputBuilder> {
  @BuiltValueField(wireName: r'revocationReason')
  String? get revocationReason;

  @BuiltValueField(wireName: r'credentialId')
  String get credentialId;

  RevokeCredentialsInput._();

  factory RevokeCredentialsInput(
          [void updates(RevokeCredentialsInputBuilder b)]) =
      _$RevokeCredentialsInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RevokeCredentialsInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RevokeCredentialsInput> get serializer =>
      _$RevokeCredentialsInputSerializer();
}

class _$RevokeCredentialsInputSerializer
    implements PrimitiveSerializer<RevokeCredentialsInput> {
  @override
  final Iterable<Type> types = const [
    RevokeCredentialsInput,
    _$RevokeCredentialsInput
  ];

  @override
  final String wireName = r'RevokeCredentialsInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RevokeCredentialsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.revocationReason != null) {
      yield r'revocationReason';
      yield serializers.serialize(
        object.revocationReason,
        specifiedType: const FullType(String),
      );
    }
    yield r'credentialId';
    yield serializers.serialize(
      object.credentialId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RevokeCredentialsInput object, {
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
    required RevokeCredentialsInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'revocationReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  RevokeCredentialsInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RevokeCredentialsInputBuilder();
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
