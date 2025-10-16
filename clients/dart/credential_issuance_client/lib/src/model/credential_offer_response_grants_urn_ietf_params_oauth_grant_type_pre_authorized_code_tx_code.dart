//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code.g.dart';

/// Object specifying whether the Authorization Server expects presentation of a Transaction Code by the End-User along with the Token Request in a Pre-Authorized Code Flow
///
/// Properties:
/// * [length] - Integer specifying the length of the Transaction Code
/// * [inputMode] - String specifying the input character set. Possible values are numeric (only digits) and text (any characters).
/// * [description] - String containing guidance for the Holder of the Wallet on how to obtain the Transaction Code
@BuiltValue()
abstract class CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode
    implements
        Built<
            CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode,
            CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCodeBuilder> {
  /// Integer specifying the length of the Transaction Code
  @BuiltValueField(wireName: r'length')
  num? get length;

  /// String specifying the input character set. Possible values are numeric (only digits) and text (any characters).
  @BuiltValueField(wireName: r'input_mode')
  String? get inputMode;

  /// String containing guidance for the Holder of the Wallet on how to obtain the Transaction Code
  @BuiltValueField(wireName: r'description')
  String? get description;

  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode._();

  factory CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode(
          [void updates(
              CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCodeBuilder
                  b)]) =
      _$CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCodeBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
          CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode>
      get serializer =>
          _$CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCodeSerializer();
}

class _$CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCodeSerializer
    implements
        PrimitiveSerializer<
            CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode> {
  @override
  final Iterable<Type> types = const [
    CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode,
    _$CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode
  ];

  @override
  final String wireName =
      r'CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode
        object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.length != null) {
      yield r'length';
      yield serializers.serialize(
        object.length,
        specifiedType: const FullType(num),
      );
    }
    if (object.inputMode != null) {
      yield r'input_mode';
      yield serializers.serialize(
        object.inputMode,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode
        object, {
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
    required CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCodeBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'length':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.length = valueDes;
          break;
        case r'input_mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inputMode = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode
      deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCodeBuilder();
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
