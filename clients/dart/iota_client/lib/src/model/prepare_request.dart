//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'prepare_request.g.dart';

/// PrepareRequest
///
/// Properties:
/// * [connectionClientId] 
/// * [queryId] 
/// * [correlationId] - A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.
/// * [tokenMaxAge] - This is the lifetime of the signed request token during the data-sharing flow.
/// * [audience] 
@BuiltValue()
abstract class PrepareRequest implements Built<PrepareRequest, PrepareRequestBuilder> {
  @BuiltValueField(wireName: r'connectionClientId')
  String get connectionClientId;

  @BuiltValueField(wireName: r'queryId')
  String get queryId;

  /// A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.
  @BuiltValueField(wireName: r'correlationId')
  String get correlationId;

  /// This is the lifetime of the signed request token during the data-sharing flow.
  @BuiltValueField(wireName: r'tokenMaxAge')
  int? get tokenMaxAge;

  @BuiltValueField(wireName: r'audience')
  String? get audience;

  PrepareRequest._();

  factory PrepareRequest([void updates(PrepareRequestBuilder b)]) = _$PrepareRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrepareRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrepareRequest> get serializer => _$PrepareRequestSerializer();
}

class _$PrepareRequestSerializer implements PrimitiveSerializer<PrepareRequest> {
  @override
  final Iterable<Type> types = const [PrepareRequest, _$PrepareRequest];

  @override
  final String wireName = r'PrepareRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrepareRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'connectionClientId';
    yield serializers.serialize(
      object.connectionClientId,
      specifiedType: const FullType(String),
    );
    yield r'queryId';
    yield serializers.serialize(
      object.queryId,
      specifiedType: const FullType(String),
    );
    yield r'correlationId';
    yield serializers.serialize(
      object.correlationId,
      specifiedType: const FullType(String),
    );
    if (object.tokenMaxAge != null) {
      yield r'tokenMaxAge';
      yield serializers.serialize(
        object.tokenMaxAge,
        specifiedType: const FullType(int),
      );
    }
    if (object.audience != null) {
      yield r'audience';
      yield serializers.serialize(
        object.audience,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrepareRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PrepareRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'connectionClientId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.connectionClientId = valueDes;
          break;
        case r'queryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.queryId = valueDes;
          break;
        case r'correlationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.correlationId = valueDes;
          break;
        case r'tokenMaxAge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tokenMaxAge = valueDes;
          break;
        case r'audience':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.audience = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrepareRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrepareRequestBuilder();
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

