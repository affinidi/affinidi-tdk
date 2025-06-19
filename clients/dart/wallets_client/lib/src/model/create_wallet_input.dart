//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_wallet_input.g.dart';

/// CreateWalletInput
///
/// Properties:
/// * [name] - The name of the wallet
/// * [description] - The description of the wallet
/// * [didMethod] - Define how DID of your wallet is created and resolved
/// * [didWebUrl] - URL of the DID. Required if the did method is web
@BuiltValue()
abstract class CreateWalletInput implements Built<CreateWalletInput, CreateWalletInputBuilder> {
  /// The name of the wallet
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The description of the wallet
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Define how DID of your wallet is created and resolved
  @BuiltValueField(wireName: r'didMethod')
  CreateWalletInputDidMethodEnum get didMethod;
  // enum didMethodEnum {  key,  web,  };

  /// URL of the DID. Required if the did method is web
  @BuiltValueField(wireName: r'didWebUrl')
  String? get didWebUrl;

  CreateWalletInput._();

  factory CreateWalletInput([void updates(CreateWalletInputBuilder b)]) = _$CreateWalletInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateWalletInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateWalletInput> get serializer => _$CreateWalletInputSerializer();
}

class _$CreateWalletInputSerializer implements PrimitiveSerializer<CreateWalletInput> {
  @override
  final Iterable<Type> types = const [CreateWalletInput, _$CreateWalletInput];

  @override
  final String wireName = r'CreateWalletInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateWalletInput object, {
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
    yield r'didMethod';
    yield serializers.serialize(
      object.didMethod,
      specifiedType: const FullType(CreateWalletInputDidMethodEnum),
    );
    if (object.didWebUrl != null) {
      yield r'didWebUrl';
      yield serializers.serialize(
        object.didWebUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateWalletInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateWalletInputBuilder result,
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
            specifiedType: const FullType(CreateWalletInputDidMethodEnum),
          ) as CreateWalletInputDidMethodEnum;
          result.didMethod = valueDes;
          break;
        case r'didWebUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.didWebUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateWalletInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateWalletInputBuilder();
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

class CreateWalletInputDidMethodEnum extends EnumClass {

  /// Define how DID of your wallet is created and resolved
  @BuiltValueEnumConst(wireName: r'key')
  static const CreateWalletInputDidMethodEnum key = _$createWalletInputDidMethodEnum_key;
  /// Define how DID of your wallet is created and resolved
  @BuiltValueEnumConst(wireName: r'web')
  static const CreateWalletInputDidMethodEnum web = _$createWalletInputDidMethodEnum_web;

  static Serializer<CreateWalletInputDidMethodEnum> get serializer => _$createWalletInputDidMethodEnumSerializer;

  const CreateWalletInputDidMethodEnum._(String name): super(name);

  static BuiltSet<CreateWalletInputDidMethodEnum> get values => _$createWalletInputDidMethodEnumValues;
  static CreateWalletInputDidMethodEnum valueOf(String name) => _$createWalletInputDidMethodEnumValueOf(name);
}

