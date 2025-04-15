//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vfs_access_right.g.dart';

/// VFSAccessRight
///
/// Properties:
/// * [rights] - List of rights to update access
@BuiltValue()
abstract class VFSAccessRight implements Built<VFSAccessRight, VFSAccessRightBuilder> {
  /// List of rights to update access
  @BuiltValueField(wireName: r'rights')
  BuiltList<VFSAccessRightRightsEnum> get rights;
  // enum rightsEnum {  vfs-read,  vfs-write,  };

  VFSAccessRight._();

  factory VFSAccessRight([void updates(VFSAccessRightBuilder b)]) = _$VFSAccessRight;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VFSAccessRightBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VFSAccessRight> get serializer => _$VFSAccessRightSerializer();
}

class _$VFSAccessRightSerializer implements PrimitiveSerializer<VFSAccessRight> {
  @override
  final Iterable<Type> types = const [VFSAccessRight, _$VFSAccessRight];

  @override
  final String wireName = r'VFSAccessRight';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VFSAccessRight object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rights';
    yield serializers.serialize(
      object.rights,
      specifiedType: const FullType(BuiltList, [FullType(VFSAccessRightRightsEnum)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    VFSAccessRight object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VFSAccessRightBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rights':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(VFSAccessRightRightsEnum)]),
          ) as BuiltList<VFSAccessRightRightsEnum>;
          result.rights.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VFSAccessRight deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VFSAccessRightBuilder();
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

class VFSAccessRightRightsEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'vfs-read')
  static const VFSAccessRightRightsEnum read = _$vFSAccessRightRightsEnum_read;
  @BuiltValueEnumConst(wireName: r'vfs-write')
  static const VFSAccessRightRightsEnum write = _$vFSAccessRightRightsEnum_write;

  static Serializer<VFSAccessRightRightsEnum> get serializer => _$vFSAccessRightRightsEnumSerializer;

  const VFSAccessRightRightsEnum._(String name): super(name);

  static BuiltSet<VFSAccessRightRightsEnum> get values => _$vFSAccessRightRightsEnumValues;
  static VFSAccessRightRightsEnum valueOf(String name) => _$vFSAccessRightRightsEnumValueOf(name);
}

