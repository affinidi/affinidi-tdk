//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_consumer_iam_client/src/model/rights_enum.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission.g.dart';

/// Permission
///
/// Properties:
/// * [rights]
/// * [nodeIds]
/// * [expiresAt]
@BuiltValue()
abstract class Permission implements Built<Permission, PermissionBuilder> {
  @BuiltValueField(wireName: r'rights')
  BuiltList<RightsEnum> get rights;

  @BuiltValueField(wireName: r'nodeIds')
  BuiltList<String> get nodeIds;

  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  Permission._();

  factory Permission([void updates(PermissionBuilder b)]) = _$Permission;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PermissionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Permission> get serializer => _$PermissionSerializer();
}

class _$PermissionSerializer implements PrimitiveSerializer<Permission> {
  @override
  final Iterable<Type> types = const [Permission, _$Permission];

  @override
  final String wireName = r'Permission';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Permission object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rights';
    yield serializers.serialize(
      object.rights,
      specifiedType: const FullType(BuiltList, [FullType(RightsEnum)]),
    );
    yield r'nodeIds';
    yield serializers.serialize(
      object.nodeIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Permission object, {
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
    required PermissionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rights':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(RightsEnum)]),
          ) as BuiltList<RightsEnum>;
          result.rights.replace(valueDes);
          break;
        case r'nodeIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.nodeIds.replace(valueDes);
          break;
        case r'expiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Permission deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PermissionBuilder();
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
