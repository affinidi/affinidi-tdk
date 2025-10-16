//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_revocation_credential_status_ok.g.dart';

/// DTO contains revocation list credential
///
/// Properties:
/// * [revocationListCredential]
@BuiltValue()
abstract class GetRevocationCredentialStatusOK
    implements
        Built<GetRevocationCredentialStatusOK,
            GetRevocationCredentialStatusOKBuilder> {
  @BuiltValueField(wireName: r'revocationListCredential')
  JsonObject get revocationListCredential;

  GetRevocationCredentialStatusOK._();

  factory GetRevocationCredentialStatusOK(
          [void updates(GetRevocationCredentialStatusOKBuilder b)]) =
      _$GetRevocationCredentialStatusOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetRevocationCredentialStatusOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetRevocationCredentialStatusOK> get serializer =>
      _$GetRevocationCredentialStatusOKSerializer();
}

class _$GetRevocationCredentialStatusOKSerializer
    implements PrimitiveSerializer<GetRevocationCredentialStatusOK> {
  @override
  final Iterable<Type> types = const [
    GetRevocationCredentialStatusOK,
    _$GetRevocationCredentialStatusOK
  ];

  @override
  final String wireName = r'GetRevocationCredentialStatusOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetRevocationCredentialStatusOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'revocationListCredential';
    yield serializers.serialize(
      object.revocationListCredential,
      specifiedType: const FullType(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetRevocationCredentialStatusOK object, {
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
    required GetRevocationCredentialStatusOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'revocationListCredential':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.revocationListCredential = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetRevocationCredentialStatusOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetRevocationCredentialStatusOKBuilder();
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
