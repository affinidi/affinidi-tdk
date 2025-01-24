//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'claimed_credential_list_response.g.dart';

/// List of claimed credential
///
/// Properties:
/// * [credentials] - list of credentials
/// * [next] - for pagination to fetch next set of records
@BuiltValue()
abstract class ClaimedCredentialListResponse implements Built<ClaimedCredentialListResponse, ClaimedCredentialListResponseBuilder> {
  /// list of credentials
  @BuiltValueField(wireName: r'credentials')
  BuiltList<BuiltMap<String, JsonObject?>>? get credentials;

  /// for pagination to fetch next set of records
  @BuiltValueField(wireName: r'next')
  String? get next;

  ClaimedCredentialListResponse._();

  factory ClaimedCredentialListResponse([void updates(ClaimedCredentialListResponseBuilder b)]) = _$ClaimedCredentialListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClaimedCredentialListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClaimedCredentialListResponse> get serializer => _$ClaimedCredentialListResponseSerializer();
}

class _$ClaimedCredentialListResponseSerializer implements PrimitiveSerializer<ClaimedCredentialListResponse> {
  @override
  final Iterable<Type> types = const [ClaimedCredentialListResponse, _$ClaimedCredentialListResponse];

  @override
  final String wireName = r'ClaimedCredentialListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClaimedCredentialListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.credentials != null) {
      yield r'credentials';
      yield serializers.serialize(
        object.credentials,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
      );
    }
    if (object.next != null) {
      yield r'next';
      yield serializers.serialize(
        object.next,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClaimedCredentialListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ClaimedCredentialListResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credentials':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>;
          result.credentials.replace(valueDes);
          break;
        case r'next':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.next = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClaimedCredentialListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClaimedCredentialListResponseBuilder();
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

