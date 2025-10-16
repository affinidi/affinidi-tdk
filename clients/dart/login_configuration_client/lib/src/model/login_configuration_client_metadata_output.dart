//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_configuration_client_metadata_output.g.dart';

/// login configuration client metadata
///
/// Properties:
/// * [name] - application name that will be displayed in consent page
/// * [origin] - origin url that will be displayed in consent page
/// * [logo] - logo url that will be displayed in consent page
/// * [domainVerified] - indicates if the developer's ownership of the domain has been verified
@BuiltValue()
abstract class LoginConfigurationClientMetadataOutput
    implements
        Built<LoginConfigurationClientMetadataOutput,
            LoginConfigurationClientMetadataOutputBuilder> {
  /// application name that will be displayed in consent page
  @BuiltValueField(wireName: r'name')
  String get name;

  /// origin url that will be displayed in consent page
  @BuiltValueField(wireName: r'origin')
  String get origin;

  /// logo url that will be displayed in consent page
  @BuiltValueField(wireName: r'logo')
  String get logo;

  /// indicates if the developer's ownership of the domain has been verified
  @BuiltValueField(wireName: r'domainVerified')
  bool? get domainVerified;

  LoginConfigurationClientMetadataOutput._();

  factory LoginConfigurationClientMetadataOutput(
          [void updates(LoginConfigurationClientMetadataOutputBuilder b)]) =
      _$LoginConfigurationClientMetadataOutput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LoginConfigurationClientMetadataOutputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LoginConfigurationClientMetadataOutput> get serializer =>
      _$LoginConfigurationClientMetadataOutputSerializer();
}

class _$LoginConfigurationClientMetadataOutputSerializer
    implements PrimitiveSerializer<LoginConfigurationClientMetadataOutput> {
  @override
  final Iterable<Type> types = const [
    LoginConfigurationClientMetadataOutput,
    _$LoginConfigurationClientMetadataOutput
  ];

  @override
  final String wireName = r'LoginConfigurationClientMetadataOutput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LoginConfigurationClientMetadataOutput object, {
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
    if (object.domainVerified != null) {
      yield r'domainVerified';
      yield serializers.serialize(
        object.domainVerified,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LoginConfigurationClientMetadataOutput object, {
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
    required LoginConfigurationClientMetadataOutputBuilder result,
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
        case r'domainVerified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.domainVerified = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LoginConfigurationClientMetadataOutput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoginConfigurationClientMetadataOutputBuilder();
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
