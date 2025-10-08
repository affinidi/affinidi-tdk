//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aws_credential_exchange_operation_ok.g.dart';

/// AwsCredentialExchangeOperationOK
///
/// Properties:
/// * [token]
/// * [identityId]
@BuiltValue()
abstract class AwsCredentialExchangeOperationOK
    implements
        Built<AwsCredentialExchangeOperationOK,
            AwsCredentialExchangeOperationOKBuilder> {
  @BuiltValueField(wireName: r'token')
  String get token;

  @BuiltValueField(wireName: r'identityId')
  String get identityId;

  AwsCredentialExchangeOperationOK._();

  factory AwsCredentialExchangeOperationOK(
          [void updates(AwsCredentialExchangeOperationOKBuilder b)]) =
      _$AwsCredentialExchangeOperationOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AwsCredentialExchangeOperationOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AwsCredentialExchangeOperationOK> get serializer =>
      _$AwsCredentialExchangeOperationOKSerializer();
}

class _$AwsCredentialExchangeOperationOKSerializer
    implements PrimitiveSerializer<AwsCredentialExchangeOperationOK> {
  @override
  final Iterable<Type> types = const [
    AwsCredentialExchangeOperationOK,
    _$AwsCredentialExchangeOperationOK
  ];

  @override
  final String wireName = r'AwsCredentialExchangeOperationOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AwsCredentialExchangeOperationOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
    yield r'identityId';
    yield serializers.serialize(
      object.identityId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AwsCredentialExchangeOperationOK object, {
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
    required AwsCredentialExchangeOperationOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        case r'identityId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.identityId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AwsCredentialExchangeOperationOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AwsCredentialExchangeOperationOKBuilder();
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
