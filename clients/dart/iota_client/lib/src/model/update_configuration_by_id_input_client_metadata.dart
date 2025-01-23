//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_configuration_by_id_input_client_metadata.g.dart';

/// It contains information about the requester or verifier.
///
/// Properties:
/// * [name] - The name displayed on the consent page indicates who is requesting data from the user. It can be the application or website's name.
/// * [origin] - The URL of the requester displayed on the consent page indicates the request's origin.
/// * [logo] - The logo of the requester displayed on the consent page, allowing users to easily recognise who requests the data.
@BuiltValue()
abstract class UpdateConfigurationByIdInputClientMetadata implements Built<UpdateConfigurationByIdInputClientMetadata, UpdateConfigurationByIdInputClientMetadataBuilder> {
  /// The name displayed on the consent page indicates who is requesting data from the user. It can be the application or website's name.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// The URL of the requester displayed on the consent page indicates the request's origin.
  @BuiltValueField(wireName: r'origin')
  String get origin;

  /// The logo of the requester displayed on the consent page, allowing users to easily recognise who requests the data.
  @BuiltValueField(wireName: r'logo')
  String get logo;

  UpdateConfigurationByIdInputClientMetadata._();

  factory UpdateConfigurationByIdInputClientMetadata([void updates(UpdateConfigurationByIdInputClientMetadataBuilder b)]) = _$UpdateConfigurationByIdInputClientMetadata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateConfigurationByIdInputClientMetadataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateConfigurationByIdInputClientMetadata> get serializer => _$UpdateConfigurationByIdInputClientMetadataSerializer();
}

class _$UpdateConfigurationByIdInputClientMetadataSerializer implements PrimitiveSerializer<UpdateConfigurationByIdInputClientMetadata> {
  @override
  final Iterable<Type> types = const [UpdateConfigurationByIdInputClientMetadata, _$UpdateConfigurationByIdInputClientMetadata];

  @override
  final String wireName = r'UpdateConfigurationByIdInputClientMetadata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateConfigurationByIdInputClientMetadata object, {
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
    UpdateConfigurationByIdInputClientMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateConfigurationByIdInputClientMetadataBuilder result,
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
  UpdateConfigurationByIdInputClientMetadata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateConfigurationByIdInputClientMetadataBuilder();
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

