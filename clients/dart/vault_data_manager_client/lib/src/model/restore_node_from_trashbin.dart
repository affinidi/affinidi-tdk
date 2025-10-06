//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restore_node_from_trashbin.g.dart';

/// RestoreNodeFromTrashbin
///
/// Properties:
/// * [restoreToProfileId] - The base64 encoded nodeId of the profile which is base64 encoded, to which node will be restored
@BuiltValue()
abstract class RestoreNodeFromTrashbin
    implements Built<RestoreNodeFromTrashbin, RestoreNodeFromTrashbinBuilder> {
  /// The base64 encoded nodeId of the profile which is base64 encoded, to which node will be restored
  @BuiltValueField(wireName: r'restoreToProfileId')
  String? get restoreToProfileId;

  RestoreNodeFromTrashbin._();

  factory RestoreNodeFromTrashbin(
          [void updates(RestoreNodeFromTrashbinBuilder b)]) =
      _$RestoreNodeFromTrashbin;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestoreNodeFromTrashbinBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestoreNodeFromTrashbin> get serializer =>
      _$RestoreNodeFromTrashbinSerializer();
}

class _$RestoreNodeFromTrashbinSerializer
    implements PrimitiveSerializer<RestoreNodeFromTrashbin> {
  @override
  final Iterable<Type> types = const [
    RestoreNodeFromTrashbin,
    _$RestoreNodeFromTrashbin
  ];

  @override
  final String wireName = r'RestoreNodeFromTrashbin';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestoreNodeFromTrashbin object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.restoreToProfileId != null) {
      yield r'restoreToProfileId';
      yield serializers.serialize(
        object.restoreToProfileId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestoreNodeFromTrashbin object, {
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
    required RestoreNodeFromTrashbinBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'restoreToProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.restoreToProfileId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestoreNodeFromTrashbin deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestoreNodeFromTrashbinBuilder();
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
