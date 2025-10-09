//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_issuance_client/src/model/project_credential_config_not_exist_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/invalid_credential_type_error.dart';
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_issuance_id_exist_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/invalid_parameter_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/missing_holder_did_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_subject_not_valid_error.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'start_issuance400_response.g.dart';

/// StartIssuance400Response
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class StartIssuance400Response
    implements
        Built<StartIssuance400Response, StartIssuance400ResponseBuilder> {
  /// One Of [CredentialIssuanceIdExistError], [CredentialSubjectNotValidError], [InvalidCredentialTypeError], [InvalidParameterError], [MissingHolderDidError], [ProjectCredentialConfigNotExistError]
  OneOf get oneOf;

  StartIssuance400Response._();

  factory StartIssuance400Response(
          [void updates(StartIssuance400ResponseBuilder b)]) =
      _$StartIssuance400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StartIssuance400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StartIssuance400Response> get serializer =>
      _$StartIssuance400ResponseSerializer();
}

class _$StartIssuance400ResponseSerializer
    implements PrimitiveSerializer<StartIssuance400Response> {
  @override
  final Iterable<Type> types = const [
    StartIssuance400Response,
    _$StartIssuance400Response
  ];

  @override
  final String wireName = r'StartIssuance400Response';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, StartIssuance400Response object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    StartIssuance400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  StartIssuance400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartIssuance400ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(InvalidParameterError),
      FullType(InvalidCredentialTypeError),
      FullType(ProjectCredentialConfigNotExistError),
      FullType(CredentialSubjectNotValidError),
      FullType(CredentialIssuanceIdExistError),
      FullType(MissingHolderDidError),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class StartIssuance400ResponseNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MissingHolderDidError')
  static const StartIssuance400ResponseNameEnum missingHolderDidError =
      _$startIssuance400ResponseNameEnum_missingHolderDidError;

  static Serializer<StartIssuance400ResponseNameEnum> get serializer =>
      _$startIssuance400ResponseNameEnumSerializer;

  const StartIssuance400ResponseNameEnum._(String name) : super(name);

  static BuiltSet<StartIssuance400ResponseNameEnum> get values =>
      _$startIssuance400ResponseNameEnumValues;
  static StartIssuance400ResponseNameEnum valueOf(String name) =>
      _$startIssuance400ResponseNameEnumValueOf(name);
}

class StartIssuance400ResponseMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'holderDID is required in this claimMode')
  static const StartIssuance400ResponseMessageEnum
      holderDIDIsRequiredInThisClaimMode =
      _$startIssuance400ResponseMessageEnum_holderDIDIsRequiredInThisClaimMode;

  static Serializer<StartIssuance400ResponseMessageEnum> get serializer =>
      _$startIssuance400ResponseMessageEnumSerializer;

  const StartIssuance400ResponseMessageEnum._(String name) : super(name);

  static BuiltSet<StartIssuance400ResponseMessageEnum> get values =>
      _$startIssuance400ResponseMessageEnumValues;
  static StartIssuance400ResponseMessageEnum valueOf(String name) =>
      _$startIssuance400ResponseMessageEnumValueOf(name);
}

class StartIssuance400ResponseHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 400)
  static const StartIssuance400ResponseHttpStatusCodeEnum number400 =
      _$startIssuance400ResponseHttpStatusCodeEnum_number400;

  static Serializer<StartIssuance400ResponseHttpStatusCodeEnum>
      get serializer => _$startIssuance400ResponseHttpStatusCodeEnumSerializer;

  const StartIssuance400ResponseHttpStatusCodeEnum._(String name) : super(name);

  static BuiltSet<StartIssuance400ResponseHttpStatusCodeEnum> get values =>
      _$startIssuance400ResponseHttpStatusCodeEnumValues;
  static StartIssuance400ResponseHttpStatusCodeEnum valueOf(String name) =>
      _$startIssuance400ResponseHttpStatusCodeEnumValueOf(name);
}
