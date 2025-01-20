//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/action_forbidden_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vc_claimed_error.g.dart';

/// VcClaimedError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class VcClaimedError implements Built<VcClaimedError, VcClaimedErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  VcClaimedErrorNameEnum get name;
  // enum nameEnum {  VcClaimedError,  };

  @BuiltValueField(wireName: r'message')
  VcClaimedErrorMessageEnum get message;
  // enum messageEnum {  The requested VC has already been claimed by the user,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  VcClaimedErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ActionForbiddenErrorDetailsInner>? get details;

  VcClaimedError._();

  factory VcClaimedError([void updates(VcClaimedErrorBuilder b)]) = _$VcClaimedError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VcClaimedErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VcClaimedError> get serializer => _$VcClaimedErrorSerializer();
}

class _$VcClaimedErrorSerializer implements PrimitiveSerializer<VcClaimedError> {
  @override
  final Iterable<Type> types = const [VcClaimedError, _$VcClaimedError];

  @override
  final String wireName = r'VcClaimedError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VcClaimedError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(VcClaimedErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(VcClaimedErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(VcClaimedErrorHttpStatusCodeEnum),
    );
    yield r'traceId';
    yield serializers.serialize(
      object.traceId,
      specifiedType: const FullType(String),
    );
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType(BuiltList, [FullType(ActionForbiddenErrorDetailsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VcClaimedError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VcClaimedErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VcClaimedErrorNameEnum),
          ) as VcClaimedErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VcClaimedErrorMessageEnum),
          ) as VcClaimedErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VcClaimedErrorHttpStatusCodeEnum),
          ) as VcClaimedErrorHttpStatusCodeEnum;
          result.httpStatusCode = valueDes;
          break;
        case r'traceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.traceId = valueDes;
          break;
        case r'details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ActionForbiddenErrorDetailsInner)]),
          ) as BuiltList<ActionForbiddenErrorDetailsInner>;
          result.details.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VcClaimedError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VcClaimedErrorBuilder();
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

class VcClaimedErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'VcClaimedError')
  static const VcClaimedErrorNameEnum vcClaimedError = _$vcClaimedErrorNameEnum_vcClaimedError;

  static Serializer<VcClaimedErrorNameEnum> get serializer => _$vcClaimedErrorNameEnumSerializer;

  const VcClaimedErrorNameEnum._(String name): super(name);

  static BuiltSet<VcClaimedErrorNameEnum> get values => _$vcClaimedErrorNameEnumValues;
  static VcClaimedErrorNameEnum valueOf(String name) => _$vcClaimedErrorNameEnumValueOf(name);
}

class VcClaimedErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'The requested VC has already been claimed by the user')
  static const VcClaimedErrorMessageEnum theRequestedVCHasAlreadyBeenClaimedByTheUser = _$vcClaimedErrorMessageEnum_theRequestedVCHasAlreadyBeenClaimedByTheUser;

  static Serializer<VcClaimedErrorMessageEnum> get serializer => _$vcClaimedErrorMessageEnumSerializer;

  const VcClaimedErrorMessageEnum._(String name): super(name);

  static BuiltSet<VcClaimedErrorMessageEnum> get values => _$vcClaimedErrorMessageEnumValues;
  static VcClaimedErrorMessageEnum valueOf(String name) => _$vcClaimedErrorMessageEnumValueOf(name);
}

class VcClaimedErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 400)
  static const VcClaimedErrorHttpStatusCodeEnum number400 = _$vcClaimedErrorHttpStatusCodeEnum_number400;

  static Serializer<VcClaimedErrorHttpStatusCodeEnum> get serializer => _$vcClaimedErrorHttpStatusCodeEnumSerializer;

  const VcClaimedErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<VcClaimedErrorHttpStatusCodeEnum> get values => _$vcClaimedErrorHttpStatusCodeEnumValues;
  static VcClaimedErrorHttpStatusCodeEnum valueOf(String name) => _$vcClaimedErrorHttpStatusCodeEnumValueOf(name);
}

