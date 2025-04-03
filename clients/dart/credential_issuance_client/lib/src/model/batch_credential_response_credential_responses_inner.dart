//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_credential_response_credential_responses_inner.g.dart';

/// BatchCredentialResponseCredentialResponsesInner
///
/// Properties:
/// * [credential] - Issued Credential, It can be a string or an object, depending on the Credential format. default format  is `ldp_vc`.
@BuiltValue()
abstract class BatchCredentialResponseCredentialResponsesInner implements Built<BatchCredentialResponseCredentialResponsesInner, BatchCredentialResponseCredentialResponsesInnerBuilder> {
  /// Issued Credential, It can be a string or an object, depending on the Credential format. default format  is `ldp_vc`.
  @BuiltValueField(wireName: r'credential')
  JsonObject? get credential;

  BatchCredentialResponseCredentialResponsesInner._();

  factory BatchCredentialResponseCredentialResponsesInner([void updates(BatchCredentialResponseCredentialResponsesInnerBuilder b)]) = _$BatchCredentialResponseCredentialResponsesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchCredentialResponseCredentialResponsesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchCredentialResponseCredentialResponsesInner> get serializer => _$BatchCredentialResponseCredentialResponsesInnerSerializer();
}

class _$BatchCredentialResponseCredentialResponsesInnerSerializer implements PrimitiveSerializer<BatchCredentialResponseCredentialResponsesInner> {
  @override
  final Iterable<Type> types = const [BatchCredentialResponseCredentialResponsesInner, _$BatchCredentialResponseCredentialResponsesInner];

  @override
  final String wireName = r'BatchCredentialResponseCredentialResponsesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchCredentialResponseCredentialResponsesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'credential';
    yield object.credential == null ? null : serializers.serialize(
      object.credential,
      specifiedType: const FullType.nullable(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchCredentialResponseCredentialResponsesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchCredentialResponseCredentialResponsesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credential':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.credential = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchCredentialResponseCredentialResponsesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchCredentialResponseCredentialResponsesInnerBuilder();
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

