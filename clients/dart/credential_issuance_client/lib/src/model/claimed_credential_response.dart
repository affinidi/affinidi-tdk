//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'claimed_credential_response.g.dart';

/// Response for getting the claimed VC
///
/// Properties:
/// * [credential] - claimed credential for a single issuance
/// * [credentials] - claimed credentials for batch issuances
@BuiltValue()
abstract class ClaimedCredentialResponse implements Built<ClaimedCredentialResponse, ClaimedCredentialResponseBuilder> {
  /// claimed credential for a single issuance
  @Deprecated('credential has been deprecated')
  @BuiltValueField(wireName: r'credential')
  BuiltMap<String, JsonObject?>? get credential;

  /// claimed credentials for batch issuances
  @BuiltValueField(wireName: r'credentials')
  BuiltList<BuiltMap<String, JsonObject?>>? get credentials;

  ClaimedCredentialResponse._();

  factory ClaimedCredentialResponse([void updates(ClaimedCredentialResponseBuilder b)]) = _$ClaimedCredentialResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClaimedCredentialResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClaimedCredentialResponse> get serializer => _$ClaimedCredentialResponseSerializer();
}

class _$ClaimedCredentialResponseSerializer implements PrimitiveSerializer<ClaimedCredentialResponse> {
  @override
  final Iterable<Type> types = const [ClaimedCredentialResponse, _$ClaimedCredentialResponse];

  @override
  final String wireName = r'ClaimedCredentialResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClaimedCredentialResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.credential != null) {
      yield r'credential';
      yield serializers.serialize(
        object.credential,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.credentials != null) {
      yield r'credentials';
      yield serializers.serialize(
        object.credentials,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClaimedCredentialResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ClaimedCredentialResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credential':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.credential.replace(valueDes);
          break;
        case r'credentials':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>;
          result.credentials.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClaimedCredentialResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClaimedCredentialResponseBuilder();
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

