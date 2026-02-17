//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wallet_v2_dto_keys_inner.g.dart';

/// WalletV2DtoKeysInner
///
/// Properties:
/// * [keyId] - wallet-scoped key identifier (e.g., \"key-1\")
/// * [kmsKeyId] - id of the key in KMS
/// * [kmsKeyAri] - ari of the key in KMS
/// * [kmsKeyType] - type of the key in KMS
/// * [relationships] - comma separated relationships
@BuiltValue()
abstract class WalletV2DtoKeysInner
    implements Built<WalletV2DtoKeysInner, WalletV2DtoKeysInnerBuilder> {
  /// wallet-scoped key identifier (e.g., \"key-1\")
  @BuiltValueField(wireName: r'keyId')
  String get keyId;

  /// id of the key in KMS
  @BuiltValueField(wireName: r'kmsKeyId')
  String get kmsKeyId;

  /// ari of the key in KMS
  @BuiltValueField(wireName: r'kmsKeyAri')
  String get kmsKeyAri;

  /// type of the key in KMS
  @BuiltValueField(wireName: r'kmsKeyType')
  String get kmsKeyType;

  /// comma separated relationships
  @BuiltValueField(wireName: r'relationships')
  String? get relationships;

  WalletV2DtoKeysInner._();

  factory WalletV2DtoKeysInner([void updates(WalletV2DtoKeysInnerBuilder b)]) =
      _$WalletV2DtoKeysInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WalletV2DtoKeysInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WalletV2DtoKeysInner> get serializer =>
      _$WalletV2DtoKeysInnerSerializer();
}

class _$WalletV2DtoKeysInnerSerializer
    implements PrimitiveSerializer<WalletV2DtoKeysInner> {
  @override
  final Iterable<Type> types = const [
    WalletV2DtoKeysInner,
    _$WalletV2DtoKeysInner
  ];

  @override
  final String wireName = r'WalletV2DtoKeysInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WalletV2DtoKeysInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'keyId';
    yield serializers.serialize(
      object.keyId,
      specifiedType: const FullType(String),
    );
    yield r'kmsKeyId';
    yield serializers.serialize(
      object.kmsKeyId,
      specifiedType: const FullType(String),
    );
    yield r'kmsKeyAri';
    yield serializers.serialize(
      object.kmsKeyAri,
      specifiedType: const FullType(String),
    );
    yield r'kmsKeyType';
    yield serializers.serialize(
      object.kmsKeyType,
      specifiedType: const FullType(String),
    );
    if (object.relationships != null) {
      yield r'relationships';
      yield serializers.serialize(
        object.relationships,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WalletV2DtoKeysInner object, {
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
    required WalletV2DtoKeysInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'keyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyId = valueDes;
          break;
        case r'kmsKeyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kmsKeyId = valueDes;
          break;
        case r'kmsKeyAri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kmsKeyAri = valueDes;
          break;
        case r'kmsKeyType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kmsKeyType = valueDes;
          break;
        case r'relationships':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.relationships = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WalletV2DtoKeysInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WalletV2DtoKeysInnerBuilder();
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
