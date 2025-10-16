//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_wallets_client/src/model/wallet_v2_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_wallet_v2_response.g.dart';

/// wallet dto
///
/// Properties:
/// * [wallet]
@BuiltValue()
abstract class CreateWalletV2Response
    implements Built<CreateWalletV2Response, CreateWalletV2ResponseBuilder> {
  @BuiltValueField(wireName: r'wallet')
  WalletV2Dto? get wallet;

  CreateWalletV2Response._();

  factory CreateWalletV2Response(
          [void updates(CreateWalletV2ResponseBuilder b)]) =
      _$CreateWalletV2Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateWalletV2ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateWalletV2Response> get serializer =>
      _$CreateWalletV2ResponseSerializer();
}

class _$CreateWalletV2ResponseSerializer
    implements PrimitiveSerializer<CreateWalletV2Response> {
  @override
  final Iterable<Type> types = const [
    CreateWalletV2Response,
    _$CreateWalletV2Response
  ];

  @override
  final String wireName = r'CreateWalletV2Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateWalletV2Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.wallet != null) {
      yield r'wallet';
      yield serializers.serialize(
        object.wallet,
        specifiedType: const FullType(WalletV2Dto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateWalletV2Response object, {
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
    required CreateWalletV2ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'wallet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WalletV2Dto),
          ) as WalletV2Dto;
          result.wallet.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateWalletV2Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateWalletV2ResponseBuilder();
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
