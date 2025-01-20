//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_wallets_client/src/model/wallet_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_wallet_response.g.dart';

/// wallet dto
///
/// Properties:
/// * [wallet] 
@BuiltValue()
abstract class CreateWalletResponse implements Built<CreateWalletResponse, CreateWalletResponseBuilder> {
  @BuiltValueField(wireName: r'wallet')
  WalletDto? get wallet;

  CreateWalletResponse._();

  factory CreateWalletResponse([void updates(CreateWalletResponseBuilder b)]) = _$CreateWalletResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateWalletResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateWalletResponse> get serializer => _$CreateWalletResponseSerializer();
}

class _$CreateWalletResponseSerializer implements PrimitiveSerializer<CreateWalletResponse> {
  @override
  final Iterable<Type> types = const [CreateWalletResponse, _$CreateWalletResponse];

  @override
  final String wireName = r'CreateWalletResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateWalletResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.wallet != null) {
      yield r'wallet';
      yield serializers.serialize(
        object.wallet,
        specifiedType: const FullType(WalletDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateWalletResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateWalletResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'wallet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WalletDto),
          ) as WalletDto;
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
  CreateWalletResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateWalletResponseBuilder();
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

