//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'iota_configuration_dto_client_metadata.g.dart';

/// It contains information about the requester or verifier.
///
/// Properties:
/// * [name] - The name displayed on the consent page indicates who is requesting data from the user. It can be the application or website's name.
/// * [origin] - The URL of the requester displayed on the consent page indicates the request's origin.
/// * [logo] - The logo of the requester displayed on the consent page, allowing users to easily recognise who requests the data.
@BuiltValue()
abstract class IotaConfigurationDtoClientMetadata
    implements
        Built<IotaConfigurationDtoClientMetadata,
            IotaConfigurationDtoClientMetadataBuilder> {
  /// The name displayed on the consent page indicates who is requesting data from the user. It can be the application or website's name.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// The URL of the requester displayed on the consent page indicates the request's origin.
  @BuiltValueField(wireName: r'origin')
  String get origin;

  /// The logo of the requester displayed on the consent page, allowing users to easily recognise who requests the data.
  @BuiltValueField(wireName: r'logo')
  String get logo;

  IotaConfigurationDtoClientMetadata._();

  factory IotaConfigurationDtoClientMetadata(
          [void updates(IotaConfigurationDtoClientMetadataBuilder b)]) =
      _$IotaConfigurationDtoClientMetadata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IotaConfigurationDtoClientMetadataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IotaConfigurationDtoClientMetadata> get serializer =>
      _$IotaConfigurationDtoClientMetadataSerializer();
}

class _$IotaConfigurationDtoClientMetadataSerializer
    implements PrimitiveSerializer<IotaConfigurationDtoClientMetadata> {
  @override
  final Iterable<Type> types = const [
    IotaConfigurationDtoClientMetadata,
    _$IotaConfigurationDtoClientMetadata
  ];

  @override
  final String wireName = r'IotaConfigurationDtoClientMetadata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IotaConfigurationDtoClientMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'origin';
    yield serializers.serialize(
      object.origin,
      specifiedType: const FullType(String),
    );
    yield r'logo';
    yield serializers.serialize(
      object.logo,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IotaConfigurationDtoClientMetadata object, {
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
    required IotaConfigurationDtoClientMetadataBuilder result,
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
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.origin = valueDes;
          break;
        case r'logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.logo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IotaConfigurationDtoClientMetadata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IotaConfigurationDtoClientMetadataBuilder();
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
