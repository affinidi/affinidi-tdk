//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/action_forbidden_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'missing_holder_did_error.g.dart';

/// MissingHolderDidError
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class MissingHolderDidError
    implements Built<MissingHolderDidError, MissingHolderDidErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  MissingHolderDidErrorNameEnum get name;
  // enum nameEnum {  MissingHolderDidError,  };

  @BuiltValueField(wireName: r'message')
  MissingHolderDidErrorMessageEnum get message;
  // enum messageEnum {  holderDID is required in this claimMode,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  MissingHolderDidErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ActionForbiddenErrorDetailsInner>? get details;

  MissingHolderDidError._();

  factory MissingHolderDidError(
      [void updates(MissingHolderDidErrorBuilder b)]) = _$MissingHolderDidError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MissingHolderDidErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MissingHolderDidError> get serializer =>
      _$MissingHolderDidErrorSerializer();
}

class _$MissingHolderDidErrorSerializer
    implements PrimitiveSerializer<MissingHolderDidError> {
  @override
  final Iterable<Type> types = const [
    MissingHolderDidError,
    _$MissingHolderDidError
  ];

  @override
  final String wireName = r'MissingHolderDidError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MissingHolderDidError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(MissingHolderDidErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(MissingHolderDidErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(MissingHolderDidErrorHttpStatusCodeEnum),
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
        specifiedType: const FullType(
            BuiltList, [FullType(ActionForbiddenErrorDetailsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MissingHolderDidError object, {
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
    required MissingHolderDidErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MissingHolderDidErrorNameEnum),
          ) as MissingHolderDidErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MissingHolderDidErrorMessageEnum),
          ) as MissingHolderDidErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(MissingHolderDidErrorHttpStatusCodeEnum),
          ) as MissingHolderDidErrorHttpStatusCodeEnum;
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
            specifiedType: const FullType(
                BuiltList, [FullType(ActionForbiddenErrorDetailsInner)]),
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
  MissingHolderDidError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MissingHolderDidErrorBuilder();
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

class MissingHolderDidErrorNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MissingHolderDidError')
  static const MissingHolderDidErrorNameEnum missingHolderDidError =
      _$missingHolderDidErrorNameEnum_missingHolderDidError;

  static Serializer<MissingHolderDidErrorNameEnum> get serializer =>
      _$missingHolderDidErrorNameEnumSerializer;

  const MissingHolderDidErrorNameEnum._(String name) : super(name);

  static BuiltSet<MissingHolderDidErrorNameEnum> get values =>
      _$missingHolderDidErrorNameEnumValues;
  static MissingHolderDidErrorNameEnum valueOf(String name) =>
      _$missingHolderDidErrorNameEnumValueOf(name);
}

class MissingHolderDidErrorMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'holderDID is required in this claimMode')
  static const MissingHolderDidErrorMessageEnum
      holderDIDIsRequiredInThisClaimMode =
      _$missingHolderDidErrorMessageEnum_holderDIDIsRequiredInThisClaimMode;

  static Serializer<MissingHolderDidErrorMessageEnum> get serializer =>
      _$missingHolderDidErrorMessageEnumSerializer;

  const MissingHolderDidErrorMessageEnum._(String name) : super(name);

  static BuiltSet<MissingHolderDidErrorMessageEnum> get values =>
      _$missingHolderDidErrorMessageEnumValues;
  static MissingHolderDidErrorMessageEnum valueOf(String name) =>
      _$missingHolderDidErrorMessageEnumValueOf(name);
}

class MissingHolderDidErrorHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 400)
  static const MissingHolderDidErrorHttpStatusCodeEnum number400 =
      _$missingHolderDidErrorHttpStatusCodeEnum_number400;

  static Serializer<MissingHolderDidErrorHttpStatusCodeEnum> get serializer =>
      _$missingHolderDidErrorHttpStatusCodeEnumSerializer;

  const MissingHolderDidErrorHttpStatusCodeEnum._(String name) : super(name);

  static BuiltSet<MissingHolderDidErrorHttpStatusCodeEnum> get values =>
      _$missingHolderDidErrorHttpStatusCodeEnumValues;
  static MissingHolderDidErrorHttpStatusCodeEnum valueOf(String name) =>
      _$missingHolderDidErrorHttpStatusCodeEnumValueOf(name);
}
