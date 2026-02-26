//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_endpoint_input.g.dart';

/// Input for adding a service endpoint
///
/// Properties:
/// * [name] - Name of the service endpoint
/// * [description] - Description of the service endpoint
/// * [url] - service endpoint URL
@BuiltValue()
abstract class ServiceEndpointInput
    implements Built<ServiceEndpointInput, ServiceEndpointInputBuilder> {
  /// Name of the service endpoint
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Description of the service endpoint
  @BuiltValueField(wireName: r'description')
  String get description;

  /// service endpoint URL
  @BuiltValueField(wireName: r'url')
  String get url;

  ServiceEndpointInput._();

  factory ServiceEndpointInput([void updates(ServiceEndpointInputBuilder b)]) =
      _$ServiceEndpointInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceEndpointInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceEndpointInput> get serializer =>
      _$ServiceEndpointInputSerializer();
}

class _$ServiceEndpointInputSerializer
    implements PrimitiveSerializer<ServiceEndpointInput> {
  @override
  final Iterable<Type> types = const [
    ServiceEndpointInput,
    _$ServiceEndpointInput
  ];

  @override
  final String wireName = r'ServiceEndpointInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceEndpointInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceEndpointInput object, {
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
    required ServiceEndpointInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServiceEndpointInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceEndpointInputBuilder();
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
