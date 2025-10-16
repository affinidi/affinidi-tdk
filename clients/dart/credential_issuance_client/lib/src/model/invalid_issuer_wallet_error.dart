//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/action_forbidden_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invalid_issuer_wallet_error.g.dart';

/// InvalidIssuerWalletError
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class InvalidIssuerWalletError
    implements
        Built<InvalidIssuerWalletError, InvalidIssuerWalletErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  InvalidIssuerWalletErrorNameEnum get name;
  // enum nameEnum {  InvalidIssuerWalletError,  };

  @BuiltValueField(wireName: r'message')
  InvalidIssuerWalletErrorMessageEnum get message;
  // enum messageEnum {  issuer wallet id is invalid,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  InvalidIssuerWalletErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ActionForbiddenErrorDetailsInner>? get details;

  InvalidIssuerWalletError._();

  factory InvalidIssuerWalletError(
          [void updates(InvalidIssuerWalletErrorBuilder b)]) =
      _$InvalidIssuerWalletError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvalidIssuerWalletErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvalidIssuerWalletError> get serializer =>
      _$InvalidIssuerWalletErrorSerializer();
}

class _$InvalidIssuerWalletErrorSerializer
    implements PrimitiveSerializer<InvalidIssuerWalletError> {
  @override
  final Iterable<Type> types = const [
    InvalidIssuerWalletError,
    _$InvalidIssuerWalletError
  ];

  @override
  final String wireName = r'InvalidIssuerWalletError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvalidIssuerWalletError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(InvalidIssuerWalletErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(InvalidIssuerWalletErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(InvalidIssuerWalletErrorHttpStatusCodeEnum),
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
    InvalidIssuerWalletError object, {
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
    required InvalidIssuerWalletErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidIssuerWalletErrorNameEnum),
          ) as InvalidIssuerWalletErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidIssuerWalletErrorMessageEnum),
          ) as InvalidIssuerWalletErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(InvalidIssuerWalletErrorHttpStatusCodeEnum),
          ) as InvalidIssuerWalletErrorHttpStatusCodeEnum;
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
  InvalidIssuerWalletError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidIssuerWalletErrorBuilder();
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

class InvalidIssuerWalletErrorNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'InvalidIssuerWalletError')
  static const InvalidIssuerWalletErrorNameEnum invalidIssuerWalletError =
      _$invalidIssuerWalletErrorNameEnum_invalidIssuerWalletError;

  static Serializer<InvalidIssuerWalletErrorNameEnum> get serializer =>
      _$invalidIssuerWalletErrorNameEnumSerializer;

  const InvalidIssuerWalletErrorNameEnum._(String name) : super(name);

  static BuiltSet<InvalidIssuerWalletErrorNameEnum> get values =>
      _$invalidIssuerWalletErrorNameEnumValues;
  static InvalidIssuerWalletErrorNameEnum valueOf(String name) =>
      _$invalidIssuerWalletErrorNameEnumValueOf(name);
}

class InvalidIssuerWalletErrorMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'issuer wallet id is invalid')
  static const InvalidIssuerWalletErrorMessageEnum issuerWalletIdIsInvalid =
      _$invalidIssuerWalletErrorMessageEnum_issuerWalletIdIsInvalid;

  static Serializer<InvalidIssuerWalletErrorMessageEnum> get serializer =>
      _$invalidIssuerWalletErrorMessageEnumSerializer;

  const InvalidIssuerWalletErrorMessageEnum._(String name) : super(name);

  static BuiltSet<InvalidIssuerWalletErrorMessageEnum> get values =>
      _$invalidIssuerWalletErrorMessageEnumValues;
  static InvalidIssuerWalletErrorMessageEnum valueOf(String name) =>
      _$invalidIssuerWalletErrorMessageEnumValueOf(name);
}

class InvalidIssuerWalletErrorHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 400)
  static const InvalidIssuerWalletErrorHttpStatusCodeEnum number400 =
      _$invalidIssuerWalletErrorHttpStatusCodeEnum_number400;

  static Serializer<InvalidIssuerWalletErrorHttpStatusCodeEnum>
      get serializer => _$invalidIssuerWalletErrorHttpStatusCodeEnumSerializer;

  const InvalidIssuerWalletErrorHttpStatusCodeEnum._(String name) : super(name);

  static BuiltSet<InvalidIssuerWalletErrorHttpStatusCodeEnum> get values =>
      _$invalidIssuerWalletErrorHttpStatusCodeEnumValues;
  static InvalidIssuerWalletErrorHttpStatusCodeEnum valueOf(String name) =>
      _$invalidIssuerWalletErrorHttpStatusCodeEnumValueOf(name);
}
