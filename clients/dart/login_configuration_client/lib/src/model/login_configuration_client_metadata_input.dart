//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_configuration_client_metadata_input.g.dart';

/// login configuration client metadata
///
/// Properties:
/// * [name] - application name that will be displayed in consent page
/// * [origin] - origin url that will be displayed in consent page
/// * [logo] - logo url that will be displayed in consent page
@BuiltValue()
abstract class LoginConfigurationClientMetadataInput implements Built<LoginConfigurationClientMetadataInput, LoginConfigurationClientMetadataInputBuilder> {
  /// application name that will be displayed in consent page
  @BuiltValueField(wireName: r'name')
  String get name;

  /// origin url that will be displayed in consent page
  @BuiltValueField(wireName: r'origin')
  String get origin;

  /// logo url that will be displayed in consent page
  @BuiltValueField(wireName: r'logo')
  String get logo;

  LoginConfigurationClientMetadataInput._();

  factory LoginConfigurationClientMetadataInput([void updates(LoginConfigurationClientMetadataInputBuilder b)]) = _$LoginConfigurationClientMetadataInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LoginConfigurationClientMetadataInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LoginConfigurationClientMetadataInput> get serializer => _$LoginConfigurationClientMetadataInputSerializer();
}

class _$LoginConfigurationClientMetadataInputSerializer implements PrimitiveSerializer<LoginConfigurationClientMetadataInput> {
  @override
  final Iterable<Type> types = const [LoginConfigurationClientMetadataInput, _$LoginConfigurationClientMetadataInput];

  @override
  final String wireName = r'LoginConfigurationClientMetadataInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LoginConfigurationClientMetadataInput object, {
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
    LoginConfigurationClientMetadataInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LoginConfigurationClientMetadataInputBuilder result,
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
  LoginConfigurationClientMetadataInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoginConfigurationClientMetadataInputBuilder();
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

