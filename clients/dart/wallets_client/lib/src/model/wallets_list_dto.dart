//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_wallets_client/src/model/wallet_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wallets_list_dto.g.dart';

/// list of wallets
///
/// Properties:
/// * [wallets]
@BuiltValue()
abstract class WalletsListDto
    implements Built<WalletsListDto, WalletsListDtoBuilder> {
  @BuiltValueField(wireName: r'wallets')
  BuiltList<WalletDto>? get wallets;

  WalletsListDto._();

  factory WalletsListDto([void updates(WalletsListDtoBuilder b)]) =
      _$WalletsListDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WalletsListDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WalletsListDto> get serializer =>
      _$WalletsListDtoSerializer();
}

class _$WalletsListDtoSerializer
    implements PrimitiveSerializer<WalletsListDto> {
  @override
  final Iterable<Type> types = const [WalletsListDto, _$WalletsListDto];

  @override
  final String wireName = r'WalletsListDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WalletsListDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.wallets != null) {
      yield r'wallets';
      yield serializers.serialize(
        object.wallets,
        specifiedType: const FullType(BuiltList, [FullType(WalletDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WalletsListDto object, {
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
    required WalletsListDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'wallets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WalletDto)]),
          ) as BuiltList<WalletDto>;
          result.wallets.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WalletsListDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WalletsListDtoBuilder();
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
