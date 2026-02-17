//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_endpoint_dto.g.dart';

/// Service endpoint information
///
/// Properties:
/// * [id] - service endpoint ID
/// * [name] - name of the service endpoint
/// * [description] - description of the service endpoint
/// * [url] - service endpoint URL
/// * [walletAri] - wallet ARI this endpoint belongs to
/// * [projectId] - project ID
/// * [createdAt] - when this endpoint was created
/// * [modifiedAt] - when this endpoint was last modified
/// * [createdBy] - identifier of the user who created the entity
/// * [modifiedBy] - identifier of the user who last updated the entity
@BuiltValue()
abstract class ServiceEndpointDto
    implements Built<ServiceEndpointDto, ServiceEndpointDtoBuilder> {
  /// service endpoint ID
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// name of the service endpoint
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// description of the service endpoint
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// service endpoint URL
  @BuiltValueField(wireName: r'url')
  String? get url;

  /// wallet ARI this endpoint belongs to
  @BuiltValueField(wireName: r'walletAri')
  String? get walletAri;

  /// project ID
  @BuiltValueField(wireName: r'projectId')
  String? get projectId;

  /// when this endpoint was created
  @BuiltValueField(wireName: r'createdAt')
  String? get createdAt;

  /// when this endpoint was last modified
  @BuiltValueField(wireName: r'modifiedAt')
  String? get modifiedAt;

  /// identifier of the user who created the entity
  @BuiltValueField(wireName: r'createdBy')
  String? get createdBy;

  /// identifier of the user who last updated the entity
  @BuiltValueField(wireName: r'modifiedBy')
  String? get modifiedBy;

  ServiceEndpointDto._();

  factory ServiceEndpointDto([void updates(ServiceEndpointDtoBuilder b)]) =
      _$ServiceEndpointDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceEndpointDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceEndpointDto> get serializer =>
      _$ServiceEndpointDtoSerializer();
}

class _$ServiceEndpointDtoSerializer
    implements PrimitiveSerializer<ServiceEndpointDto> {
  @override
  final Iterable<Type> types = const [ServiceEndpointDto, _$ServiceEndpointDto];

  @override
  final String wireName = r'ServiceEndpointDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceEndpointDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.walletAri != null) {
      yield r'walletAri';
      yield serializers.serialize(
        object.walletAri,
        specifiedType: const FullType(String),
      );
    }
    if (object.projectId != null) {
      yield r'projectId';
      yield serializers.serialize(
        object.projectId,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.modifiedAt != null) {
      yield r'modifiedAt';
      yield serializers.serialize(
        object.modifiedAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdBy != null) {
      yield r'createdBy';
      yield serializers.serialize(
        object.createdBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.modifiedBy != null) {
      yield r'modifiedBy';
      yield serializers.serialize(
        object.modifiedBy,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceEndpointDto object, {
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
    required ServiceEndpointDtoBuilder result,
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
        case r'walletAri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.walletAri = valueDes;
          break;
        case r'projectId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.projectId = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'modifiedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.modifiedAt = valueDes;
          break;
        case r'createdBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdBy = valueDes;
          break;
        case r'modifiedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.modifiedBy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServiceEndpointDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceEndpointDtoBuilder();
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
