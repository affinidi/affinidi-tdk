//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'did_web_input_params.g.dart';

/// Additional params for did method web
///
/// Properties:
/// * [name] - The name of the wallet
/// * [description] - The description of the wallet
/// * [didMethod] 
/// * [didWebUrl] - If the did method is web, this is the URL of the did
@BuiltValue()
abstract class DidWebInputParams implements Built<DidWebInputParams, DidWebInputParamsBuilder> {
  /// The name of the wallet
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The description of the wallet
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'didMethod')
  DidWebInputParamsDidMethodEnum get didMethod;
  // enum didMethodEnum {  web,  };

  /// If the did method is web, this is the URL of the did
  @BuiltValueField(wireName: r'didWebUrl')
  String get didWebUrl;

  DidWebInputParams._();

  factory DidWebInputParams([void updates(DidWebInputParamsBuilder b)]) = _$DidWebInputParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DidWebInputParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DidWebInputParams> get serializer => _$DidWebInputParamsSerializer();
}

class _$DidWebInputParamsSerializer implements PrimitiveSerializer<DidWebInputParams> {
  @override
  final Iterable<Type> types = const [DidWebInputParams, _$DidWebInputParams];

  @override
  final String wireName = r'DidWebInputParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DidWebInputParams object, {
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
      specifiedType: const FullType(DidWebInputParamsDidMethodEnum),
    );
    yield r'didWebUrl';
    yield serializers.serialize(
      object.didWebUrl,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DidWebInputParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DidWebInputParamsBuilder result,
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
            specifiedType: const FullType(DidWebInputParamsDidMethodEnum),
          ) as DidWebInputParamsDidMethodEnum;
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
  DidWebInputParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DidWebInputParamsBuilder();
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

class DidWebInputParamsDidMethodEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'web')
  static const DidWebInputParamsDidMethodEnum web = _$didWebInputParamsDidMethodEnum_web;

  static Serializer<DidWebInputParamsDidMethodEnum> get serializer => _$didWebInputParamsDidMethodEnumSerializer;

  const DidWebInputParamsDidMethodEnum._(String name): super(name);

  static BuiltSet<DidWebInputParamsDidMethodEnum> get values => _$didWebInputParamsDidMethodEnumValues;
  static DidWebInputParamsDidMethodEnum valueOf(String name) => _$didWebInputParamsDidMethodEnumValueOf(name);
}

