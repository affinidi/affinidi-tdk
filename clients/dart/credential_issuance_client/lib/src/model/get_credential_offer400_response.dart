//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_issuance_client/src/model/project_credential_config_not_exist_error.dart';
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/invalid_parameter_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/vc_claimed_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_offer_claimed_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_offer_expired_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/action_forbidden_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'get_credential_offer400_response.g.dart';

/// GetCredentialOffer400Response
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class GetCredentialOffer400Response
    implements
        Built<GetCredentialOffer400Response,
            GetCredentialOffer400ResponseBuilder> {
  /// One Of [CredentialOfferClaimedError], [CredentialOfferExpiredError], [InvalidParameterError], [ProjectCredentialConfigNotExistError], [VcClaimedError]
  OneOf get oneOf;

  GetCredentialOffer400Response._();

  factory GetCredentialOffer400Response(
          [void updates(GetCredentialOffer400ResponseBuilder b)]) =
      _$GetCredentialOffer400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCredentialOffer400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCredentialOffer400Response> get serializer =>
      _$GetCredentialOffer400ResponseSerializer();
}

class _$GetCredentialOffer400ResponseSerializer
    implements PrimitiveSerializer<GetCredentialOffer400Response> {
  @override
  final Iterable<Type> types = const [
    GetCredentialOffer400Response,
    _$GetCredentialOffer400Response
  ];

  @override
  final String wireName = r'GetCredentialOffer400Response';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, GetCredentialOffer400Response object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    GetCredentialOffer400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  GetCredentialOffer400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCredentialOffer400ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(InvalidParameterError),
      FullType(ProjectCredentialConfigNotExistError),
      FullType(CredentialOfferExpiredError),
      FullType(CredentialOfferClaimedError),
      FullType(VcClaimedError),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class GetCredentialOffer400ResponseNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'VcClaimedError')
  static const GetCredentialOffer400ResponseNameEnum vcClaimedError =
      _$getCredentialOffer400ResponseNameEnum_vcClaimedError;

  static Serializer<GetCredentialOffer400ResponseNameEnum> get serializer =>
      _$getCredentialOffer400ResponseNameEnumSerializer;

  const GetCredentialOffer400ResponseNameEnum._(String name) : super(name);

  static BuiltSet<GetCredentialOffer400ResponseNameEnum> get values =>
      _$getCredentialOffer400ResponseNameEnumValues;
  static GetCredentialOffer400ResponseNameEnum valueOf(String name) =>
      _$getCredentialOffer400ResponseNameEnumValueOf(name);
}

class GetCredentialOffer400ResponseMessageEnum extends EnumClass {
  @BuiltValueEnumConst(
      wireName: r'The requested VC has already been claimed by the user')
  static const GetCredentialOffer400ResponseMessageEnum
      theRequestedVCHasAlreadyBeenClaimedByTheUser =
      _$getCredentialOffer400ResponseMessageEnum_theRequestedVCHasAlreadyBeenClaimedByTheUser;

  static Serializer<GetCredentialOffer400ResponseMessageEnum> get serializer =>
      _$getCredentialOffer400ResponseMessageEnumSerializer;

  const GetCredentialOffer400ResponseMessageEnum._(String name) : super(name);

  static BuiltSet<GetCredentialOffer400ResponseMessageEnum> get values =>
      _$getCredentialOffer400ResponseMessageEnumValues;
  static GetCredentialOffer400ResponseMessageEnum valueOf(String name) =>
      _$getCredentialOffer400ResponseMessageEnumValueOf(name);
}

class GetCredentialOffer400ResponseHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 400)
  static const GetCredentialOffer400ResponseHttpStatusCodeEnum number400 =
      _$getCredentialOffer400ResponseHttpStatusCodeEnum_number400;

  static Serializer<GetCredentialOffer400ResponseHttpStatusCodeEnum>
      get serializer =>
          _$getCredentialOffer400ResponseHttpStatusCodeEnumSerializer;

  const GetCredentialOffer400ResponseHttpStatusCodeEnum._(String name)
      : super(name);

  static BuiltSet<GetCredentialOffer400ResponseHttpStatusCodeEnum> get values =>
      _$getCredentialOffer400ResponseHttpStatusCodeEnumValues;
  static GetCredentialOffer400ResponseHttpStatusCodeEnum valueOf(String name) =>
      _$getCredentialOffer400ResponseHttpStatusCodeEnumValueOf(name);
}
