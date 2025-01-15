//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_wallets_client/src/model/did_key_input_params.dart';
import 'package:affinidi_tdk_wallets_client/src/model/did_web_input_params.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'create_wallet_input.g.dart';

/// CreateWalletInput
///
/// Properties:
/// * [name] - The name of the wallet
/// * [description] - The description of the wallet
/// * [didMethod] 
/// * [didWebUrl] - If the did method is web, this is the URL of the did
@BuiltValue()
abstract class CreateWalletInput implements Built<CreateWalletInput, CreateWalletInputBuilder> {
  /// One Of [DidKeyInputParams], [DidWebInputParams]
  OneOf get oneOf;

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
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateWalletInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  CreateWalletInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateWalletInputBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(DidWebInputParams), FullType(DidKeyInputParams), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class CreateWalletInputDidMethodEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'key')
  static const CreateWalletInputDidMethodEnum key = _$createWalletInputDidMethodEnum_key;

  static Serializer<CreateWalletInputDidMethodEnum> get serializer => _$createWalletInputDidMethodEnumSerializer;

  const CreateWalletInputDidMethodEnum._(String name): super(name);

  static BuiltSet<CreateWalletInputDidMethodEnum> get values => _$createWalletInputDidMethodEnumValues;
  static CreateWalletInputDidMethodEnum valueOf(String name) => _$createWalletInputDidMethodEnumValueOf(name);
}

