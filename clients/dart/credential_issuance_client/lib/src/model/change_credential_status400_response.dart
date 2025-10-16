//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_issuance_client/src/model/change_status_forbidden_error.dart';
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/invalid_parameter_error.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'change_credential_status400_response.g.dart';

/// ChangeCredentialStatus400Response
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class ChangeCredentialStatus400Response
    implements
        Built<ChangeCredentialStatus400Response,
            ChangeCredentialStatus400ResponseBuilder> {
  /// One Of [ChangeStatusForbiddenError], [InvalidParameterError]
  OneOf get oneOf;

  ChangeCredentialStatus400Response._();

  factory ChangeCredentialStatus400Response(
          [void updates(ChangeCredentialStatus400ResponseBuilder b)]) =
      _$ChangeCredentialStatus400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChangeCredentialStatus400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChangeCredentialStatus400Response> get serializer =>
      _$ChangeCredentialStatus400ResponseSerializer();
}

class _$ChangeCredentialStatus400ResponseSerializer
    implements PrimitiveSerializer<ChangeCredentialStatus400Response> {
  @override
  final Iterable<Type> types = const [
    ChangeCredentialStatus400Response,
    _$ChangeCredentialStatus400Response
  ];

  @override
  final String wireName = r'ChangeCredentialStatus400Response';

  Iterable<Object?> _serializeProperties(Serializers serializers,
      ChangeCredentialStatus400Response object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ChangeCredentialStatus400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ChangeCredentialStatus400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChangeCredentialStatus400ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(InvalidParameterError),
      FullType(ChangeStatusForbiddenError),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class ChangeCredentialStatus400ResponseNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ChangeStatusForbiddenError')
  static const ChangeCredentialStatus400ResponseNameEnum
      changeStatusForbiddenError =
      _$changeCredentialStatus400ResponseNameEnum_changeStatusForbiddenError;

  static Serializer<ChangeCredentialStatus400ResponseNameEnum> get serializer =>
      _$changeCredentialStatus400ResponseNameEnumSerializer;

  const ChangeCredentialStatus400ResponseNameEnum._(String name) : super(name);

  static BuiltSet<ChangeCredentialStatus400ResponseNameEnum> get values =>
      _$changeCredentialStatus400ResponseNameEnumValues;
  static ChangeCredentialStatus400ResponseNameEnum valueOf(String name) =>
      _$changeCredentialStatus400ResponseNameEnumValueOf(name);
}

class ChangeCredentialStatus400ResponseMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Related VC status cannot be changed')
  static const ChangeCredentialStatus400ResponseMessageEnum
      relatedVCStatusCannotBeChanged =
      _$changeCredentialStatus400ResponseMessageEnum_relatedVCStatusCannotBeChanged;

  static Serializer<ChangeCredentialStatus400ResponseMessageEnum>
      get serializer =>
          _$changeCredentialStatus400ResponseMessageEnumSerializer;

  const ChangeCredentialStatus400ResponseMessageEnum._(String name)
      : super(name);

  static BuiltSet<ChangeCredentialStatus400ResponseMessageEnum> get values =>
      _$changeCredentialStatus400ResponseMessageEnumValues;
  static ChangeCredentialStatus400ResponseMessageEnum valueOf(String name) =>
      _$changeCredentialStatus400ResponseMessageEnumValueOf(name);
}

class ChangeCredentialStatus400ResponseHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 400)
  static const ChangeCredentialStatus400ResponseHttpStatusCodeEnum number400 =
      _$changeCredentialStatus400ResponseHttpStatusCodeEnum_number400;

  static Serializer<ChangeCredentialStatus400ResponseHttpStatusCodeEnum>
      get serializer =>
          _$changeCredentialStatus400ResponseHttpStatusCodeEnumSerializer;

  const ChangeCredentialStatus400ResponseHttpStatusCodeEnum._(String name)
      : super(name);

  static BuiltSet<ChangeCredentialStatus400ResponseHttpStatusCodeEnum>
      get values => _$changeCredentialStatus400ResponseHttpStatusCodeEnumValues;
  static ChangeCredentialStatus400ResponseHttpStatusCodeEnum valueOf(
          String name) =>
      _$changeCredentialStatus400ResponseHttpStatusCodeEnumValueOf(name);
}
