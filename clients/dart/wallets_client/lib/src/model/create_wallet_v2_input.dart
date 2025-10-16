//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_wallet_v2_input.g.dart';

/// CreateWalletV2Input
///
/// Properties:
/// * [name] - The name of the wallet
/// * [description] - The description of the wallet
/// * [didMethod] - Define how DID of your wallet is created and resolved
/// * [didWebUrl] - URL of the DID. Required if the did method is web
/// * [algorithm] - algorithm to generate key for the wallet
@BuiltValue()
abstract class CreateWalletV2Input
    implements Built<CreateWalletV2Input, CreateWalletV2InputBuilder> {
  /// The name of the wallet
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The description of the wallet
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Define how DID of your wallet is created and resolved
  @BuiltValueField(wireName: r'didMethod')
  CreateWalletV2InputDidMethodEnum? get didMethod;
  // enum didMethodEnum {  key,  web,  peer0,  };

  /// URL of the DID. Required if the did method is web
  @BuiltValueField(wireName: r'didWebUrl')
  String? get didWebUrl;

  /// algorithm to generate key for the wallet
  @BuiltValueField(wireName: r'algorithm')
  CreateWalletV2InputAlgorithmEnum? get algorithm;
  // enum algorithmEnum {  secp256k1,  ed25519,  p256,  };

  CreateWalletV2Input._();

  factory CreateWalletV2Input([void updates(CreateWalletV2InputBuilder b)]) =
      _$CreateWalletV2Input;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateWalletV2InputBuilder b) => b
    ..didMethod = const CreateWalletV2InputDidMethodEnum._('key')
    ..algorithm = const CreateWalletV2InputAlgorithmEnum._('secp256k1');

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateWalletV2Input> get serializer =>
      _$CreateWalletV2InputSerializer();
}

class _$CreateWalletV2InputSerializer
    implements PrimitiveSerializer<CreateWalletV2Input> {
  @override
  final Iterable<Type> types = const [
    CreateWalletV2Input,
    _$CreateWalletV2Input
  ];

  @override
  final String wireName = r'CreateWalletV2Input';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateWalletV2Input object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.didMethod != null) {
      yield r'didMethod';
      yield serializers.serialize(
        object.didMethod,
        specifiedType: const FullType(CreateWalletV2InputDidMethodEnum),
      );
    }
    if (object.didWebUrl != null) {
      yield r'didWebUrl';
      yield serializers.serialize(
        object.didWebUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.algorithm != null) {
      yield r'algorithm';
      yield serializers.serialize(
        object.algorithm,
        specifiedType: const FullType(CreateWalletV2InputAlgorithmEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateWalletV2Input object, {
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
    required CreateWalletV2InputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'didMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateWalletV2InputDidMethodEnum),
          ) as CreateWalletV2InputDidMethodEnum;
          result.didMethod = valueDes;
          break;
        case r'didWebUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.didWebUrl = valueDes;
          break;
        case r'algorithm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateWalletV2InputAlgorithmEnum),
          ) as CreateWalletV2InputAlgorithmEnum;
          result.algorithm = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateWalletV2Input deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateWalletV2InputBuilder();
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

class CreateWalletV2InputDidMethodEnum extends EnumClass {
  /// Define how DID of your wallet is created and resolved
  @BuiltValueEnumConst(wireName: r'key')
  static const CreateWalletV2InputDidMethodEnum key =
      _$createWalletV2InputDidMethodEnum_key;

  /// Define how DID of your wallet is created and resolved
  @BuiltValueEnumConst(wireName: r'web')
  static const CreateWalletV2InputDidMethodEnum web =
      _$createWalletV2InputDidMethodEnum_web;

  /// Define how DID of your wallet is created and resolved
  @BuiltValueEnumConst(wireName: r'peer0')
  static const CreateWalletV2InputDidMethodEnum peer0 =
      _$createWalletV2InputDidMethodEnum_peer0;

  static Serializer<CreateWalletV2InputDidMethodEnum> get serializer =>
      _$createWalletV2InputDidMethodEnumSerializer;

  const CreateWalletV2InputDidMethodEnum._(String name) : super(name);

  static BuiltSet<CreateWalletV2InputDidMethodEnum> get values =>
      _$createWalletV2InputDidMethodEnumValues;
  static CreateWalletV2InputDidMethodEnum valueOf(String name) =>
      _$createWalletV2InputDidMethodEnumValueOf(name);
}

class CreateWalletV2InputAlgorithmEnum extends EnumClass {
  /// algorithm to generate key for the wallet
  @BuiltValueEnumConst(wireName: r'secp256k1')
  static const CreateWalletV2InputAlgorithmEnum secp256k1 =
      _$createWalletV2InputAlgorithmEnum_secp256k1;

  /// algorithm to generate key for the wallet
  @BuiltValueEnumConst(wireName: r'ed25519')
  static const CreateWalletV2InputAlgorithmEnum ed25519 =
      _$createWalletV2InputAlgorithmEnum_ed25519;

  /// algorithm to generate key for the wallet
  @BuiltValueEnumConst(wireName: r'p256')
  static const CreateWalletV2InputAlgorithmEnum p256 =
      _$createWalletV2InputAlgorithmEnum_p256;

  static Serializer<CreateWalletV2InputAlgorithmEnum> get serializer =>
      _$createWalletV2InputAlgorithmEnumSerializer;

  const CreateWalletV2InputAlgorithmEnum._(String name) : super(name);

  static BuiltSet<CreateWalletV2InputAlgorithmEnum> get values =>
      _$createWalletV2InputAlgorithmEnumValues;
  static CreateWalletV2InputAlgorithmEnum valueOf(String name) =>
      _$createWalletV2InputAlgorithmEnumValueOf(name);
}
