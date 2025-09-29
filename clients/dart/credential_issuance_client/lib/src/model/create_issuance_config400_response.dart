//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_issuance_client/src/model/project_credential_config_exist_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/project_credential_config_not_exist_error.dart';
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/invalid_issuer_wallet_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/action_forbidden_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'create_issuance_config400_response.g.dart';

/// CreateIssuanceConfig400Response
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class CreateIssuanceConfig400Response
    implements
        Built<CreateIssuanceConfig400Response,
            CreateIssuanceConfig400ResponseBuilder> {
  /// One Of [InvalidIssuerWalletError], [ProjectCredentialConfigExistError], [ProjectCredentialConfigNotExistError]
  OneOf get oneOf;

  CreateIssuanceConfig400Response._();

  factory CreateIssuanceConfig400Response(
          [void updates(CreateIssuanceConfig400ResponseBuilder b)]) =
      _$CreateIssuanceConfig400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateIssuanceConfig400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateIssuanceConfig400Response> get serializer =>
      _$CreateIssuanceConfig400ResponseSerializer();
}

class _$CreateIssuanceConfig400ResponseSerializer
    implements PrimitiveSerializer<CreateIssuanceConfig400Response> {
  @override
  final Iterable<Type> types = const [
    CreateIssuanceConfig400Response,
    _$CreateIssuanceConfig400Response
  ];

  @override
  final String wireName = r'CreateIssuanceConfig400Response';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, CreateIssuanceConfig400Response object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    CreateIssuanceConfig400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  CreateIssuanceConfig400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateIssuanceConfig400ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(ProjectCredentialConfigNotExistError),
      FullType(ProjectCredentialConfigExistError),
      FullType(InvalidIssuerWalletError),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class CreateIssuanceConfig400ResponseNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'InvalidIssuerWalletError')
  static const CreateIssuanceConfig400ResponseNameEnum
      invalidIssuerWalletError =
      _$createIssuanceConfig400ResponseNameEnum_invalidIssuerWalletError;

  static Serializer<CreateIssuanceConfig400ResponseNameEnum> get serializer =>
      _$createIssuanceConfig400ResponseNameEnumSerializer;

  const CreateIssuanceConfig400ResponseNameEnum._(String name) : super(name);

  static BuiltSet<CreateIssuanceConfig400ResponseNameEnum> get values =>
      _$createIssuanceConfig400ResponseNameEnumValues;
  static CreateIssuanceConfig400ResponseNameEnum valueOf(String name) =>
      _$createIssuanceConfig400ResponseNameEnumValueOf(name);
}

class CreateIssuanceConfig400ResponseMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'issuer wallet id is invalid')
  static const CreateIssuanceConfig400ResponseMessageEnum
      issuerWalletIdIsInvalid =
      _$createIssuanceConfig400ResponseMessageEnum_issuerWalletIdIsInvalid;

  static Serializer<CreateIssuanceConfig400ResponseMessageEnum>
      get serializer => _$createIssuanceConfig400ResponseMessageEnumSerializer;

  const CreateIssuanceConfig400ResponseMessageEnum._(String name) : super(name);

  static BuiltSet<CreateIssuanceConfig400ResponseMessageEnum> get values =>
      _$createIssuanceConfig400ResponseMessageEnumValues;
  static CreateIssuanceConfig400ResponseMessageEnum valueOf(String name) =>
      _$createIssuanceConfig400ResponseMessageEnumValueOf(name);
}

class CreateIssuanceConfig400ResponseHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 400)
  static const CreateIssuanceConfig400ResponseHttpStatusCodeEnum number400 =
      _$createIssuanceConfig400ResponseHttpStatusCodeEnum_number400;

  static Serializer<CreateIssuanceConfig400ResponseHttpStatusCodeEnum>
      get serializer =>
          _$createIssuanceConfig400ResponseHttpStatusCodeEnumSerializer;

  const CreateIssuanceConfig400ResponseHttpStatusCodeEnum._(String name)
      : super(name);

  static BuiltSet<CreateIssuanceConfig400ResponseHttpStatusCodeEnum>
      get values => _$createIssuanceConfig400ResponseHttpStatusCodeEnumValues;
  static CreateIssuanceConfig400ResponseHttpStatusCodeEnum valueOf(
          String name) =>
      _$createIssuanceConfig400ResponseHttpStatusCodeEnumValueOf(name);
}
