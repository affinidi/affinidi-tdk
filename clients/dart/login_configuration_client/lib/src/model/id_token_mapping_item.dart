//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'id_token_mapping_item.g.dart';

/// IdTokenMappingItem
///
/// Properties:
/// * [sourceField] - Name(path) of the corresponding field in the vp_token
/// * [idTokenClaim] - Name of the corresponding field in the id_token
/// * [inputDescriptorId] - Id of related input descriptor from presentation definition
@BuiltValue()
abstract class IdTokenMappingItem
    implements Built<IdTokenMappingItem, IdTokenMappingItemBuilder> {
  /// Name(path) of the corresponding field in the vp_token
  @BuiltValueField(wireName: r'sourceField')
  String get sourceField;

  /// Name of the corresponding field in the id_token
  @BuiltValueField(wireName: r'idTokenClaim')
  String get idTokenClaim;

  /// Id of related input descriptor from presentation definition
  @BuiltValueField(wireName: r'inputDescriptorId')
  String? get inputDescriptorId;

  IdTokenMappingItem._();

  factory IdTokenMappingItem([void updates(IdTokenMappingItemBuilder b)]) =
      _$IdTokenMappingItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IdTokenMappingItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IdTokenMappingItem> get serializer =>
      _$IdTokenMappingItemSerializer();
}

class _$IdTokenMappingItemSerializer
    implements PrimitiveSerializer<IdTokenMappingItem> {
  @override
  final Iterable<Type> types = const [IdTokenMappingItem, _$IdTokenMappingItem];

  @override
  final String wireName = r'IdTokenMappingItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IdTokenMappingItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceField';
    yield serializers.serialize(
      object.sourceField,
      specifiedType: const FullType(String),
    );
    yield r'idTokenClaim';
    yield serializers.serialize(
      object.idTokenClaim,
      specifiedType: const FullType(String),
    );
    if (object.inputDescriptorId != null) {
      yield r'inputDescriptorId';
      yield serializers.serialize(
        object.inputDescriptorId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IdTokenMappingItem object, {
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
    required IdTokenMappingItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceField':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceField = valueDes;
          break;
        case r'idTokenClaim':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idTokenClaim = valueDes;
          break;
        case r'inputDescriptorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inputDescriptorId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IdTokenMappingItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdTokenMappingItemBuilder();
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
