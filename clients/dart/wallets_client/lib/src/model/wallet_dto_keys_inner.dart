//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wallet_dto_keys_inner.g.dart';

/// WalletDtoKeysInner
///
/// Properties:
/// * [id] - id of linked key
/// * [ari] - ari of linked key
@BuiltValue()
abstract class WalletDtoKeysInner
    implements Built<WalletDtoKeysInner, WalletDtoKeysInnerBuilder> {
  /// id of linked key
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// ari of linked key
  @BuiltValueField(wireName: r'ari')
  String? get ari;

  WalletDtoKeysInner._();

  factory WalletDtoKeysInner([void updates(WalletDtoKeysInnerBuilder b)]) =
      _$WalletDtoKeysInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WalletDtoKeysInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WalletDtoKeysInner> get serializer =>
      _$WalletDtoKeysInnerSerializer();
}

class _$WalletDtoKeysInnerSerializer
    implements PrimitiveSerializer<WalletDtoKeysInner> {
  @override
  final Iterable<Type> types = const [WalletDtoKeysInner, _$WalletDtoKeysInner];

  @override
  final String wireName = r'WalletDtoKeysInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WalletDtoKeysInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.ari != null) {
      yield r'ari';
      yield serializers.serialize(
        object.ari,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WalletDtoKeysInner object, {
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
    required WalletDtoKeysInnerBuilder result,
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
        case r'ari':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ari = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WalletDtoKeysInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WalletDtoKeysInnerBuilder();
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
