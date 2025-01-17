//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/service_error_response_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_error_response.g.dart';

/// Service Error Response
///
/// Properties:
/// * [debugId] - unique id for correlating this specific error to logs
/// * [name] - name of the error
/// * [code] - backwards compatible Affinidi error code
/// * [details] - error details
@BuiltValue()
abstract class ServiceErrorResponse implements Built<ServiceErrorResponse, ServiceErrorResponseBuilder> {
  /// unique id for correlating this specific error to logs
  @BuiltValueField(wireName: r'debugId')
  String get debugId;

  /// name of the error
  @BuiltValueField(wireName: r'name')
  String get name;

  /// backwards compatible Affinidi error code
  @BuiltValueField(wireName: r'code')
  String get code;

  /// error details
  @BuiltValueField(wireName: r'details')
  BuiltList<ServiceErrorResponseDetailsInner>? get details;

  ServiceErrorResponse._();

  factory ServiceErrorResponse([void updates(ServiceErrorResponseBuilder b)]) = _$ServiceErrorResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceErrorResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceErrorResponse> get serializer => _$ServiceErrorResponseSerializer();
}

class _$ServiceErrorResponseSerializer implements PrimitiveSerializer<ServiceErrorResponse> {
  @override
  final Iterable<Type> types = const [ServiceErrorResponse, _$ServiceErrorResponse];

  @override
  final String wireName = r'ServiceErrorResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceErrorResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'debugId';
    yield serializers.serialize(
      object.debugId,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType(BuiltList, [FullType(ServiceErrorResponseDetailsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceErrorResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServiceErrorResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'debugId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.debugId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ServiceErrorResponseDetailsInner)]),
          ) as BuiltList<ServiceErrorResponseDetailsInner>;
          result.details.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServiceErrorResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceErrorResponseBuilder();
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

