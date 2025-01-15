//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_wallet_input.g.dart';

/// Update wallet input params
///
/// Properties:
/// * [name] - The name of the wallet
/// * [description] - The description of the wallet
@BuiltValue()
abstract class UpdateWalletInput implements Built<UpdateWalletInput, UpdateWalletInputBuilder> {
  /// The name of the wallet
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The description of the wallet
  @BuiltValueField(wireName: r'description')
  String? get description;

  UpdateWalletInput._();

  factory UpdateWalletInput([void updates(UpdateWalletInputBuilder b)]) = _$UpdateWalletInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateWalletInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateWalletInput> get serializer => _$UpdateWalletInputSerializer();
}

class _$UpdateWalletInputSerializer implements PrimitiveSerializer<UpdateWalletInput> {
  @override
  final Iterable<Type> types = const [UpdateWalletInput, _$UpdateWalletInput];

  @override
  final String wireName = r'UpdateWalletInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateWalletInput object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateWalletInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateWalletInputBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateWalletInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateWalletInputBuilder();
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

