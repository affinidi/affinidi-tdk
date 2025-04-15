//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vfs_rights_enum.g.dart';

/// List of rights to grant to the subject
@BuiltValue()
abstract class VFSRightsEnum implements Built<VFSRightsEnum, VFSRightsEnumBuilder> {
  VFSRightsEnum._();

  factory VFSRightsEnum([void updates(VFSRightsEnumBuilder b)]) = _$VFSRightsEnum;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VFSRightsEnumBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VFSRightsEnum> get serializer => _$VFSRightsEnumSerializer();
}

class _$VFSRightsEnumSerializer implements PrimitiveSerializer<VFSRightsEnum> {
  @override
  final Iterable<Type> types = const [VFSRightsEnum, _$VFSRightsEnum];

  @override
  final String wireName = r'VFSRightsEnum';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VFSRightsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    VFSRightsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  VFSRightsEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VFSRightsEnumBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    return result.build();
  }
}

