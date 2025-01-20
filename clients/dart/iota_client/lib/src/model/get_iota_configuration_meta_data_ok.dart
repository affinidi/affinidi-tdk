//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_iota_configuration_meta_data_ok.g.dart';

/// GetIotaConfigurationMetaDataOK
///
/// Properties:
/// * [name] - The name displayed on the consent page indicates who is requesting data from the user. It can be the application or website's name.
/// * [origin] - The URL of the requester displayed on the consent page indicates the request's origin.
/// * [logo] - The logo of the requester displayed on the consent page, allowing users to easily recognise who requests the data.
@BuiltValue()
abstract class GetIotaConfigurationMetaDataOK implements Built<GetIotaConfigurationMetaDataOK, GetIotaConfigurationMetaDataOKBuilder> {
  /// The name displayed on the consent page indicates who is requesting data from the user. It can be the application or website's name.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// The URL of the requester displayed on the consent page indicates the request's origin.
  @BuiltValueField(wireName: r'origin')
  String get origin;

  /// The logo of the requester displayed on the consent page, allowing users to easily recognise who requests the data.
  @BuiltValueField(wireName: r'logo')
  String get logo;

  GetIotaConfigurationMetaDataOK._();

  factory GetIotaConfigurationMetaDataOK([void updates(GetIotaConfigurationMetaDataOKBuilder b)]) = _$GetIotaConfigurationMetaDataOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetIotaConfigurationMetaDataOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetIotaConfigurationMetaDataOK> get serializer => _$GetIotaConfigurationMetaDataOKSerializer();
}

class _$GetIotaConfigurationMetaDataOKSerializer implements PrimitiveSerializer<GetIotaConfigurationMetaDataOK> {
  @override
  final Iterable<Type> types = const [GetIotaConfigurationMetaDataOK, _$GetIotaConfigurationMetaDataOK];

  @override
  final String wireName = r'GetIotaConfigurationMetaDataOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetIotaConfigurationMetaDataOK object, {
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
    GetIotaConfigurationMetaDataOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetIotaConfigurationMetaDataOKBuilder result,
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
  GetIotaConfigurationMetaDataOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIotaConfigurationMetaDataOKBuilder();
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

