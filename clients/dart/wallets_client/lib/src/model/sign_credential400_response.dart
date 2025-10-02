//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_wallets_client/src/model/invalid_parameter_error.dart';
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_wallets_client/src/model/signing_failed_error.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'sign_credential400_response.g.dart';

/// SignCredential400Response
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class SignCredential400Response
    implements
        Built<SignCredential400Response, SignCredential400ResponseBuilder> {
  /// One Of [InvalidParameterError], [SigningFailedError]
  OneOf get oneOf;

  SignCredential400Response._();

  factory SignCredential400Response(
          [void updates(SignCredential400ResponseBuilder b)]) =
      _$SignCredential400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignCredential400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignCredential400Response> get serializer =>
      _$SignCredential400ResponseSerializer();
}

class _$SignCredential400ResponseSerializer
    implements PrimitiveSerializer<SignCredential400Response> {
  @override
  final Iterable<Type> types = const [
    SignCredential400Response,
    _$SignCredential400Response
  ];

  @override
  final String wireName = r'SignCredential400Response';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, SignCredential400Response object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    SignCredential400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  SignCredential400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignCredential400ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(InvalidParameterError),
      FullType(SigningFailedError),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class SignCredential400ResponseNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'SigningFailedError')
  static const SignCredential400ResponseNameEnum signingFailedError =
      _$signCredential400ResponseNameEnum_signingFailedError;

  static Serializer<SignCredential400ResponseNameEnum> get serializer =>
      _$signCredential400ResponseNameEnumSerializer;

  const SignCredential400ResponseNameEnum._(String name) : super(name);

  static BuiltSet<SignCredential400ResponseNameEnum> get values =>
      _$signCredential400ResponseNameEnumValues;
  static SignCredential400ResponseNameEnum valueOf(String name) =>
      _$signCredential400ResponseNameEnumValueOf(name);
}

class SignCredential400ResponseMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Signing failed.')
  static const SignCredential400ResponseMessageEnum signingFailedPeriod =
      _$signCredential400ResponseMessageEnum_signingFailedPeriod;

  static Serializer<SignCredential400ResponseMessageEnum> get serializer =>
      _$signCredential400ResponseMessageEnumSerializer;

  const SignCredential400ResponseMessageEnum._(String name) : super(name);

  static BuiltSet<SignCredential400ResponseMessageEnum> get values =>
      _$signCredential400ResponseMessageEnumValues;
  static SignCredential400ResponseMessageEnum valueOf(String name) =>
      _$signCredential400ResponseMessageEnumValueOf(name);
}

class SignCredential400ResponseHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 400)
  static const SignCredential400ResponseHttpStatusCodeEnum number400 =
      _$signCredential400ResponseHttpStatusCodeEnum_number400;

  static Serializer<SignCredential400ResponseHttpStatusCodeEnum>
      get serializer => _$signCredential400ResponseHttpStatusCodeEnumSerializer;

  const SignCredential400ResponseHttpStatusCodeEnum._(String name)
      : super(name);

  static BuiltSet<SignCredential400ResponseHttpStatusCodeEnum> get values =>
      _$signCredential400ResponseHttpStatusCodeEnumValues;
  static SignCredential400ResponseHttpStatusCodeEnum valueOf(String name) =>
      _$signCredential400ResponseHttpStatusCodeEnumValueOf(name);
}
