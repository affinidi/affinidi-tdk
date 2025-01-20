//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'w3c_credential_status.g.dart';

/// W3cCredentialStatus
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [revocationListIndex] 
/// * [revocationListCredential] 
@BuiltValue()
abstract class W3cCredentialStatus implements Built<W3cCredentialStatus, W3cCredentialStatusBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'revocationListIndex')
  String get revocationListIndex;

  @BuiltValueField(wireName: r'revocationListCredential')
  String get revocationListCredential;

  W3cCredentialStatus._();

  factory W3cCredentialStatus([void updates(W3cCredentialStatusBuilder b)]) = _$W3cCredentialStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(W3cCredentialStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<W3cCredentialStatus> get serializer => _$W3cCredentialStatusSerializer();
}

class _$W3cCredentialStatusSerializer implements PrimitiveSerializer<W3cCredentialStatus> {
  @override
  final Iterable<Type> types = const [W3cCredentialStatus, _$W3cCredentialStatus];

  @override
  final String wireName = r'W3cCredentialStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    W3cCredentialStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'revocationListIndex';
    yield serializers.serialize(
      object.revocationListIndex,
      specifiedType: const FullType(String),
    );
    yield r'revocationListCredential';
    yield serializers.serialize(
      object.revocationListCredential,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    W3cCredentialStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required W3cCredentialStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'revocationListIndex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.revocationListIndex = valueDes;
          break;
        case r'revocationListCredential':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  W3cCredentialStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = W3cCredentialStatusBuilder();
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

