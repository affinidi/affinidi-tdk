//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_issuance_client/src/model/invalid_proof_error.dart';
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/invalid_credential_request_error.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'generate_credentials400_response.g.dart';

/// GenerateCredentials400Response
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class GenerateCredentials400Response
    implements
        Built<GenerateCredentials400Response,
            GenerateCredentials400ResponseBuilder> {
  /// One Of [InvalidCredentialRequestError], [InvalidProofError]
  OneOf get oneOf;

  GenerateCredentials400Response._();

  factory GenerateCredentials400Response(
          [void updates(GenerateCredentials400ResponseBuilder b)]) =
      _$GenerateCredentials400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GenerateCredentials400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GenerateCredentials400Response> get serializer =>
      _$GenerateCredentials400ResponseSerializer();
}

class _$GenerateCredentials400ResponseSerializer
    implements PrimitiveSerializer<GenerateCredentials400Response> {
  @override
  final Iterable<Type> types = const [
    GenerateCredentials400Response,
    _$GenerateCredentials400Response
  ];

  @override
  final String wireName = r'GenerateCredentials400Response';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, GenerateCredentials400Response object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    GenerateCredentials400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  GenerateCredentials400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GenerateCredentials400ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(InvalidCredentialRequestError),
      FullType(InvalidProofError),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class GenerateCredentials400ResponseNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'InvalidProofError')
  static const GenerateCredentials400ResponseNameEnum invalidProofError =
      _$generateCredentials400ResponseNameEnum_invalidProofError;

  static Serializer<GenerateCredentials400ResponseNameEnum> get serializer =>
      _$generateCredentials400ResponseNameEnumSerializer;

  const GenerateCredentials400ResponseNameEnum._(String name) : super(name);

  static BuiltSet<GenerateCredentials400ResponseNameEnum> get values =>
      _$generateCredentials400ResponseNameEnumValues;
  static GenerateCredentials400ResponseNameEnum valueOf(String name) =>
      _$generateCredentials400ResponseNameEnumValueOf(name);
}

class GenerateCredentials400ResponseMessageEnum extends EnumClass {
  @BuiltValueEnumConst(
      wireName: r'The proof in the Credential Request is invalid')
  static const GenerateCredentials400ResponseMessageEnum
      theProofInTheCredentialRequestIsInvalid =
      _$generateCredentials400ResponseMessageEnum_theProofInTheCredentialRequestIsInvalid;

  static Serializer<GenerateCredentials400ResponseMessageEnum> get serializer =>
      _$generateCredentials400ResponseMessageEnumSerializer;

  const GenerateCredentials400ResponseMessageEnum._(String name) : super(name);

  static BuiltSet<GenerateCredentials400ResponseMessageEnum> get values =>
      _$generateCredentials400ResponseMessageEnumValues;
  static GenerateCredentials400ResponseMessageEnum valueOf(String name) =>
      _$generateCredentials400ResponseMessageEnumValueOf(name);
}

class GenerateCredentials400ResponseHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 400)
  static const GenerateCredentials400ResponseHttpStatusCodeEnum number400 =
      _$generateCredentials400ResponseHttpStatusCodeEnum_number400;

  static Serializer<GenerateCredentials400ResponseHttpStatusCodeEnum>
      get serializer =>
          _$generateCredentials400ResponseHttpStatusCodeEnumSerializer;

  const GenerateCredentials400ResponseHttpStatusCodeEnum._(String name)
      : super(name);

  static BuiltSet<GenerateCredentials400ResponseHttpStatusCodeEnum>
      get values => _$generateCredentials400ResponseHttpStatusCodeEnumValues;
  static GenerateCredentials400ResponseHttpStatusCodeEnum valueOf(
          String name) =>
      _$generateCredentials400ResponseHttpStatusCodeEnumValueOf(name);
}
