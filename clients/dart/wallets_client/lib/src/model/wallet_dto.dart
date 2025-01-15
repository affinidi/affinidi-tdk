//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_wallets_client/src/model/wallet_dto_keys_inner.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wallet_dto.g.dart';

/// wallet dto
///
/// Properties:
/// * [id] - id of the wallet in uuidV4 format
/// * [did] - did of the wallet
/// * [name] - The name of the wallet
/// * [description] - The description of the wallet
/// * [didDocument] - did document of the wallet
/// * [ari] - ARI of the wallet
/// * [keys] 
/// * [createdAt] 
/// * [modifiedAt] 
@BuiltValue()
abstract class WalletDto implements Built<WalletDto, WalletDtoBuilder> {
  /// id of the wallet in uuidV4 format
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// did of the wallet
  @BuiltValueField(wireName: r'did')
  String? get did;

  /// The name of the wallet
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The description of the wallet
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// did document of the wallet
  @BuiltValueField(wireName: r'didDocument')
  JsonObject? get didDocument;

  /// ARI of the wallet
  @BuiltValueField(wireName: r'ari')
  String? get ari;

  @BuiltValueField(wireName: r'keys')
  BuiltList<WalletDtoKeysInner>? get keys;

  @BuiltValueField(wireName: r'createdAt')
  String? get createdAt;

  @BuiltValueField(wireName: r'modifiedAt')
  String? get modifiedAt;

  WalletDto._();

  factory WalletDto([void updates(WalletDtoBuilder b)]) = _$WalletDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WalletDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WalletDto> get serializer => _$WalletDtoSerializer();
}

class _$WalletDtoSerializer implements PrimitiveSerializer<WalletDto> {
  @override
  final Iterable<Type> types = const [WalletDto, _$WalletDto];

  @override
  final String wireName = r'WalletDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WalletDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.did != null) {
      yield r'did';
      yield serializers.serialize(
        object.did,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
    if (object.didDocument != null) {
      yield r'didDocument';
      yield serializers.serialize(
        object.didDocument,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.ari != null) {
      yield r'ari';
      yield serializers.serialize(
        object.ari,
        specifiedType: const FullType(String),
      );
    }
    if (object.keys != null) {
      yield r'keys';
      yield serializers.serialize(
        object.keys,
        specifiedType: const FullType(BuiltList, [FullType(WalletDtoKeysInner)]),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.modifiedAt != null) {
      yield r'modifiedAt';
      yield serializers.serialize(
        object.modifiedAt,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WalletDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WalletDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'did':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.did = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'didDocument':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.didDocument = valueDes;
          break;
        case r'ari':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ari = valueDes;
          break;
        case r'keys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WalletDtoKeysInner)]),
          ) as BuiltList<WalletDtoKeysInner>;
          result.keys.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'modifiedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.modifiedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WalletDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WalletDtoBuilder();
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

