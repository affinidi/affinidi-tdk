//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_claim_context_error.dart';
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/vp_token_validation_error.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_parameter_error.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_vp_token_creation_time_error.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'inline_object.g.dart';

/// InlineObject
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class InlineObject
    implements Built<InlineObject, InlineObjectBuilder> {
  /// One Of [InvalidClaimContextError], [InvalidParameterError], [InvalidVPTokenCreationTimeError], [VPTokenValidationError]
  OneOf get oneOf;

  InlineObject._();

  factory InlineObject([void updates(InlineObjectBuilder b)]) = _$InlineObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InlineObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InlineObject> get serializer => _$InlineObjectSerializer();
}

class _$InlineObjectSerializer implements PrimitiveSerializer<InlineObject> {
  @override
  final Iterable<Type> types = const [InlineObject, _$InlineObject];

  @override
  final String wireName = r'InlineObject';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, InlineObject object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    InlineObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  InlineObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InlineObjectBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(InvalidParameterError),
      FullType(VPTokenValidationError),
      FullType(InvalidClaimContextError),
      FullType(InvalidVPTokenCreationTimeError),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class InlineObjectNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'InvalidVPTokenCreationTimeError')
  static const InlineObjectNameEnum invalidVPTokenCreationTimeError =
      _$inlineObjectNameEnum_invalidVPTokenCreationTimeError;

  static Serializer<InlineObjectNameEnum> get serializer =>
      _$inlineObjectNameEnumSerializer;

  const InlineObjectNameEnum._(String name) : super(name);

  static BuiltSet<InlineObjectNameEnum> get values =>
      _$inlineObjectNameEnumValues;
  static InlineObjectNameEnum valueOf(String name) =>
      _$inlineObjectNameEnumValueOf(name);
}

class InlineObjectMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'VP token has expired')
  static const InlineObjectMessageEnum vPTokenHasExpired =
      _$inlineObjectMessageEnum_vPTokenHasExpired;

  static Serializer<InlineObjectMessageEnum> get serializer =>
      _$inlineObjectMessageEnumSerializer;

  const InlineObjectMessageEnum._(String name) : super(name);

  static BuiltSet<InlineObjectMessageEnum> get values =>
      _$inlineObjectMessageEnumValues;
  static InlineObjectMessageEnum valueOf(String name) =>
      _$inlineObjectMessageEnumValueOf(name);
}

class InlineObjectHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 400)
  static const InlineObjectHttpStatusCodeEnum number400 =
      _$inlineObjectHttpStatusCodeEnum_number400;

  static Serializer<InlineObjectHttpStatusCodeEnum> get serializer =>
      _$inlineObjectHttpStatusCodeEnumSerializer;

  const InlineObjectHttpStatusCodeEnum._(String name) : super(name);

  static BuiltSet<InlineObjectHttpStatusCodeEnum> get values =>
      _$inlineObjectHttpStatusCodeEnumValues;
  static InlineObjectHttpStatusCodeEnum valueOf(String name) =>
      _$inlineObjectHttpStatusCodeEnumValueOf(name);
}
