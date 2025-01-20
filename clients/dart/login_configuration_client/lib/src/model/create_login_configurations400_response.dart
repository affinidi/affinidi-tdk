//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/create_hydra_network_error.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/create_project_network_error.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_parameter_error.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'create_login_configurations400_response.g.dart';

/// CreateLoginConfigurations400Response
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class CreateLoginConfigurations400Response implements Built<CreateLoginConfigurations400Response, CreateLoginConfigurations400ResponseBuilder> {
  /// One Of [CreateHydraNetworkError], [CreateProjectNetworkError], [InvalidParameterError]
  OneOf get oneOf;

  CreateLoginConfigurations400Response._();

  factory CreateLoginConfigurations400Response([void updates(CreateLoginConfigurations400ResponseBuilder b)]) = _$CreateLoginConfigurations400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateLoginConfigurations400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateLoginConfigurations400Response> get serializer => _$CreateLoginConfigurations400ResponseSerializer();
}

class _$CreateLoginConfigurations400ResponseSerializer implements PrimitiveSerializer<CreateLoginConfigurations400Response> {
  @override
  final Iterable<Type> types = const [CreateLoginConfigurations400Response, _$CreateLoginConfigurations400Response];

  @override
  final String wireName = r'CreateLoginConfigurations400Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateLoginConfigurations400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateLoginConfigurations400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  CreateLoginConfigurations400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateLoginConfigurations400ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(InvalidParameterError), FullType(CreateHydraNetworkError), FullType(CreateProjectNetworkError), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class CreateLoginConfigurations400ResponseNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'CreateProjectNetworkError')
  static const CreateLoginConfigurations400ResponseNameEnum createProjectNetworkError = _$createLoginConfigurations400ResponseNameEnum_createProjectNetworkError;

  static Serializer<CreateLoginConfigurations400ResponseNameEnum> get serializer => _$createLoginConfigurations400ResponseNameEnumSerializer;

  const CreateLoginConfigurations400ResponseNameEnum._(String name): super(name);

  static BuiltSet<CreateLoginConfigurations400ResponseNameEnum> get values => _$createLoginConfigurations400ResponseNameEnumValues;
  static CreateLoginConfigurations400ResponseNameEnum valueOf(String name) => _$createLoginConfigurations400ResponseNameEnumValueOf(name);
}

class CreateLoginConfigurations400ResponseMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'CreateProjectNetworkError')
  static const CreateLoginConfigurations400ResponseMessageEnum createProjectNetworkError = _$createLoginConfigurations400ResponseMessageEnum_createProjectNetworkError;

  static Serializer<CreateLoginConfigurations400ResponseMessageEnum> get serializer => _$createLoginConfigurations400ResponseMessageEnumSerializer;

  const CreateLoginConfigurations400ResponseMessageEnum._(String name): super(name);

  static BuiltSet<CreateLoginConfigurations400ResponseMessageEnum> get values => _$createLoginConfigurations400ResponseMessageEnumValues;
  static CreateLoginConfigurations400ResponseMessageEnum valueOf(String name) => _$createLoginConfigurations400ResponseMessageEnumValueOf(name);
}

class CreateLoginConfigurations400ResponseHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 400)
  static const CreateLoginConfigurations400ResponseHttpStatusCodeEnum number400 = _$createLoginConfigurations400ResponseHttpStatusCodeEnum_number400;

  static Serializer<CreateLoginConfigurations400ResponseHttpStatusCodeEnum> get serializer => _$createLoginConfigurations400ResponseHttpStatusCodeEnumSerializer;

  const CreateLoginConfigurations400ResponseHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<CreateLoginConfigurations400ResponseHttpStatusCodeEnum> get values => _$createLoginConfigurations400ResponseHttpStatusCodeEnumValues;
  static CreateLoginConfigurations400ResponseHttpStatusCodeEnum valueOf(String name) => _$createLoginConfigurations400ResponseHttpStatusCodeEnumValueOf(name);
}

