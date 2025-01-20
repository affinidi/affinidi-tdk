//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'did_key_input_params.g.dart';

/// Did key input params
///
/// Properties:
/// * [name] - The name of the wallet
/// * [description] - The description of the wallet
/// * [didMethod] 
@BuiltValue()
abstract class DidKeyInputParams implements Built<DidKeyInputParams, DidKeyInputParamsBuilder> {
  /// The name of the wallet
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The description of the wallet
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'didMethod')
  DidKeyInputParamsDidMethodEnum? get didMethod;
  // enum didMethodEnum {  key,  };

  DidKeyInputParams._();

  factory DidKeyInputParams([void updates(DidKeyInputParamsBuilder b)]) = _$DidKeyInputParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DidKeyInputParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DidKeyInputParams> get serializer => _$DidKeyInputParamsSerializer();
}

class _$DidKeyInputParamsSerializer implements PrimitiveSerializer<DidKeyInputParams> {
  @override
  final Iterable<Type> types = const [DidKeyInputParams, _$DidKeyInputParams];

  @override
  final String wireName = r'DidKeyInputParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DidKeyInputParams object, {
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
        specifiedType: const FullType(DidKeyInputParamsDidMethodEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DidKeyInputParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DidKeyInputParamsBuilder result,
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
            specifiedType: const FullType(DidKeyInputParamsDidMethodEnum),
          ) as DidKeyInputParamsDidMethodEnum;
          result.didMethod = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DidKeyInputParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DidKeyInputParamsBuilder();
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

class DidKeyInputParamsDidMethodEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'key')
  static const DidKeyInputParamsDidMethodEnum key = _$didKeyInputParamsDidMethodEnum_key;

  static Serializer<DidKeyInputParamsDidMethodEnum> get serializer => _$didKeyInputParamsDidMethodEnumSerializer;

  const DidKeyInputParamsDidMethodEnum._(String name): super(name);

  static BuiltSet<DidKeyInputParamsDidMethodEnum> get values => _$didKeyInputParamsDidMethodEnumValues;
  static DidKeyInputParamsDidMethodEnum valueOf(String name) => _$didKeyInputParamsDidMethodEnumValueOf(name);
}

